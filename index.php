<?php
    include "generate.php";
    /**
     * Created by PhpStorm.
     * User: quyentruong
     * Date: 6/9/16
     * Time: 12:44 PM
     */
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Quiz</title>
        <link href = "index.css" type = "text/css" rel = "stylesheet">
    </head>
    <body>
        <form action = "grade.php" method = "post" id = "quiz">
            <?php generate_choices(); ?>
            <input type = "submit" value = "Submit Quiz">
        </form>
    </body>
</html>
