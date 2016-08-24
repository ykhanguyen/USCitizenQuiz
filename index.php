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
        <title>US Citizen Quiz</title>
<!--        <link href = "index.css" type = "text/css" rel = "stylesheet">-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width = device-width, initial-scale = 1">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="theme.css" >
        <script type="text/javascript" src="script.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <h1>US Citizen Quiz</h1>
            </div>

            <div class="progress">
                <div id="barr" class="progress-bar progress-bar-striped" role="progressbar"
                     aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                    <span class="sr-only">40% Complete</span>
                </div>
            </div>

            <form name="myForm" action = "grade.php" method = "post" id = "quiz">
                <?php generate_choices(); ?>
                <input class="btn btn-danger" type = "submit" value = "Submit Quiz">
            </form>
        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </body>
</html>
