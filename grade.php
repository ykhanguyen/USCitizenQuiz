<?php
    /**
     * Created by PhpStorm.
     * User: quyentruong
     * Date: 6/9/16
     * Time: 12:46 PM
     */
    include "generate.php";
    $db = mysql_connection();
    $results = $db->query("SELECT answer FROM questions");
    $i = 0;
    $total_correct = 0;
    foreach ($results as $result) {
        $answer = $_POST['question-' . (++$i) . '-answers'];
        if ($answer == $result["answer"]) {
            $total_correct++;
        }
    }
    $db = null;
?>
<div>You got <?= $total_correct . "/" . $i ?> corrects</div>
<mro
