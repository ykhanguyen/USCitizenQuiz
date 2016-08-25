<?php
    /**
     * Created by PhpStorm.
     * User: quyentruong
     * Date: 6/9/16
     * Time: 12:47 PM
     */
    define("maxvalue", 5);
    function mysql_connection()
    {
        $password="XXX";
        $dsn = 'mysql:dbname=usCitizenTest;host=vergil.u.washington.edu;port=XXX;
        charset=utf8';
        return new PDO($dsn, "root", $password);
    }

    function generate_choices()
    {

        // connect to multiple_choices
        try {
            $db = mysql_connection();
        } catch (PDOException $e) {
            die('Could not connect to the database:<br/>' . $e);
        }
        $questions = $db->query("SELECT * FROM questions ORDER BY id"); // get question title
//        $questions = $questions->fetchAll();
//        print_r($questions);
        //    $n = (int)$number_of_questions->fetchColumn();
        //    echo gettype($n);
        $i = 1; ?>
        <div class="container">
            <div class="row">
                <?php
                    foreach ($questions as $question) {
                        //    for ($i = 0; i < $n; $i++) {
                        $letter = array("A", "B", "C", "D", "E");
                        $id = $db->quote($i);
                        $choices = $db->query("SELECT CONCAT(answer_id,choice) AS chs FROM choices
                                                WHERE question_id = $id");
                        $choices = $choices->fetchAll(); // object -> array

                        shuffle($choices); ?>
                        <div class="btn-group btn-group-vertical" data-toggle="buttons">

                            <h2 class="question_class"><?= $question["question"] ?></h2>
                            <?php
                                $j = 0;
                                foreach ($choices as $choice) {
                                    $q_id = substr($choice["chs"], 0, 1); // this is the answer id
                                    $ch = substr($choice["chs"], 1); // get choice
                                    ?>

                                        <label class="btn active"><input type = "radio"
                                                                         name = "question-<?= $i ?>-answers"
                                                                         value = "<?= $q_id. "_" . $question["answer"]?>" />
                                            <i class="fa fa-circle-o fa-2x"></i>
                                            <i class="fa fa-dot-circle-o fa-2x"></i>
                                            <?= $ch
                                            ?>
                                        </label>

                                    <?php
                                }
                                $i++; ?>
                        </div>
                        <?php
                    } ?>
            </div>
        </div>
        <?php
        $db = null;
    } ?>




