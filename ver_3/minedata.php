<?php
/*
 * Kha Nguyen
 * 08/27/2016
 * Create Json to fetch data from database
 *
 * v3
 * Quyen Truong
 * 08/28/2016
 * Clean up to read easily
 */

$servername = "vergil.u.washington.edu";
$username = "root";
$password = "XXX";
$dbname = "usCitizenTest";
$port = 000;
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;port=$port;charset=utf8", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->beginTransaction();

} catch (PDOException $e) {
    $conn->rollback();
    echo "Error: " . $e->getMessage();
}

// get mode. mode can be question or choices
$mode = $_POST["mode"];

// this is the question id
$question_id = $_POST["question_id"];


if ($mode == "question") {
    fetch_questions($conn, $question_id);
} else if ($mode == "choices") {
    fetch_choices($conn, $question_id);
} else {
    disconnect($conn);
}

// create JSON data
// contains
// question - question_vi - questions: answer - audio
function fetch_questions($conn, $question_id)
{
    // connect to multiple_choices

    // get question title
    $questions = $conn->query("SELECT question, question_vi, answer, audio
                              FROM questions 
                              WHERE id =" . $question_id);
    $questions = $questions->fetch();

    list($question, $question_vi, $answer, $audio) = $questions;

    $combine = "<span class=\"show_vi hide_words\">" .
        $question_vi .
        "</span>
            <span class=\"show_en\">" . $question . "</span>";
    $data = array(
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
//      </choice>
// </choices>
function fetch_choices($conn, $question_id)
{
    $choices_data = $conn->query("SELECT answer_id,choice_vi,choice 
                            FROM choices
                            WHERE question_id = " . $question_id);
    $choices_data = $choices_data->fetchAll();

    shuffle($choices_data);
    $dom = new DOMDocument();

    $choices = $dom->createElement("choices");
    foreach ($choices_data as $choice_data) {
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
function create_child_for_choice($dom, $title_mode, $content, $choice)
{
    $title = $dom->createElement($title_mode);
    $text = $dom->createTextNode($content);
    $title->appendChild($text);
    $choice->appendChild($title);
}

function disconnect($conn)
{
    $conn = null;
    header("Location: index.php");
    die();
}



