<?php
/*
 * Kha H Nguyen
 * 08/27/2016
 * Create Json to fetch data from database
 */
define("maxvalue", 5);
function mysql_connection()
{
    $password = "XXX";
    $dsn = 'mysql:dbname=usCitizenTest;host=vergil.u.washington.edu;port=XXX;
        charset=utf8';
    return new PDO($dsn, "root", $password);
}


// get mode. mode can be question or choices
$mode = $_GET["mode"];

// this is the question id
$question_id = $_GET["question_id"];

try {
    $db = mysql_connection();
} catch (PDOException $e) {
    die('Could not connect to the database:<br/>' . $e);
}

// create JSON data
// contains
// question - question_vi - questions: answer
if ($mode == "question") {
    // connect to multiple_choices

    // get question title
    $questions = $db->query("SELECT question, question_vi, answer, audio
                              FROM questions 
                              WHERE id =" . $question_id);
    $questions = $questions->fetch();

    list($question, $question_vi, $answer, $audio) = $questions;

    $combine = "<span class=\"show_vi hide_words\">" .
                $question_vi .
                "</span>
            <span class=\"show_en\">". $question . "</span>";
    $data = array (
        //"question" => $question,
        //"question_vi" => $question_vi,
        "question_vi_en" => $combine,
        "answer" => $answer,
        "audio" => $audio
    );

    header("Content-type: application/json");
    print(json_encode($data, JSON_PRETTY_PRINT));
}

//create XML data
// for the secific question id
// answer_id choice_vi choice
// format
// <choices>
//      <choice>
//          <en> .. </en>
//          <vi> .. </vi>
//          <answer_id> .. </answer_id>
//          <audio> .. </audio>
//      </choice>
// </choices>
if ($mode == "choices") {
    $choices_data = $db->query("SELECT answer_id,choice_vi,choice 
                            FROM choices
                            WHERE question_id = " . $question_id);
    $choices_data = $choices_data->fetchAll();

    shuffle($choices_data);
    $dom = new DOMDocument();

    $choices = $dom->createElement("choices");
    foreach($choices_data as $choice_data) {
        $choice = $dom->createElement("choice");
        list($answer_id, $choice_vi, $choice_en) = $choice_data;

        $combine = "<span class=\"show_vi hide_words\">" .
            $choice_vi . "</span><span class=\"show_en\">" . $choice_en . "</span>";
        // create English tag
        //create_child_for_choice($dom, "en", $choice_en, $choice);
        //create_child_for_choice($dom, "vi", $choice_vi, $choice);
        create_child_for_choice($dom, "vi_en", $combine, $choice);
        create_child_for_choice($dom, "answer_id", $answer_id, $choice);

        $choices->appendChild($choice);
    }

    $dom->appendChild($choices);

    header("Content-type: text/xml");

    print($dom->saveXML());
}

/*
 * Create child tag for book tag
 */
function create_child_for_choice($dom, $title_mode, $content, $choice) {
    $title = $dom->createElement($title_mode);
    $text = $dom->createTextNode($content);
    $title->appendChild($text);
    $choice->appendChild($title);
}



