<?php
    /**
     * Created by PhpStorm.
     * User: quyentruong
     * Date: 6/9/16
     * Time: 12:47 PM
     */
    define("maxvalue",5);
    function mysql_connection()
    {
        return new PDO("mysql:host=localhost;dbname=multiple_choices;charset=utf8", "quiz", "!letgo()&");
    }

    function generate_choices()
    {
        // connect to multiple_choices
        $db = mysql_connection();
        $questions = $db->query("SELECT name FROM questions"); // get question title

        //    $n = (int)$number_of_questions->fetchColumn();
        //    echo gettype($n);
        $i = 1; ?>
        <ol>
            <?php
                foreach ($questions as $question) {
                    //    for ($i = 0; i < $n; $i++) {
                    $letter = array("A", "B", "C", "D", "E");
                    $id = $db->quote($i);
                    $choices = $db->query("SELECT CONCAT(q_id,name) AS chs FROM choices WHERE answer_id = $id");
                    $choices = $choices->fetchAll(); // object -> array
                    shuffle($choices); ?>

                    <li>
                        <h2><?= $question["name"] ?></h2>
                        <?php
                            $j = 0;
                            foreach ($choices as $choice) {
                                $q_id = substr($choice["chs"], 0, 1); // get first id
                                $ch = substr($choice["chs"], 1); // get choice
                                ?>

                                <div>
                                    <label><input type = "radio" name = "question-<?= $i ?>-answers"
                                                  value = "<?= $q_id ?>" /> <?= $letter[$j++] . ") " . $ch
                                        ?></label>
                                </div>

                                <?php
                            }
                            $i++; ?>
                    </li>
                    <?php
                } ?>
        </ol>
        <?php
        $db = null;
    } ?>




