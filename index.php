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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
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

            <div class="container" id="bar_all">
                <div id="languages" class="btn-group btn-group-lg" role="group" aria-label="...">
                    <button id="en" class="btn btn-default btn-lg show_vi hide_words" type="button" class="btn btn-default" autofocus="true">English</button>
                    <button id="vi" class="btn btn-default btn-lg show_en" type="button" class="btn btn-default">Vietnamese</button>
                </div>

                <div id="correct" class="btn-success btn-lg disabled"> Correct: 0 </div>
                <div id="incorrect" class=" btn-danger btn-lg disabled"> Incorrect: 0 </div>
                <div class="progress">
                    <div id="barr" class="progress-bar progress-bar-striped" role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
                        <span class="sr-only">40% Complete</span>
                    </div>
                </div>

            </div>
            <div class="container">


                <form name="myForm" action = "" method = "post" id = "quiz">
                    <?php generate_choices(); ?>
                    <div id="submit_button">
                        <input class="btn btn-danger" type = "submit" value = "Try Again!!!">
                    </div>
                </form>
            </div>

        </div>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    </body>
</html>
