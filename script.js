(function () {
    "use strict";
    var list = [];
    var num_question;
    var correct_num = 0;
    var incorrect_num = 0;
    var total = 0; // this is the total question answered
    window.onload = function () {
        // show the first question
        // because I use hide all the question at first
        // so it will show one by one
        show_question();

        // Select language english or vietnamese
        // default language is english
        show_english();

        // in the page will have 2 button, one will be hidden
        document.getElementById("en").onclick = show_english;
        document.getElementById("vi").onclick = show_vietnamese;

        // click buttion to play audio
        var play_audio = document.getElementsByClassName("play_audio");
        for (var i = 0; i < play_audio.length; i++) {
            play_audio[i].onclick = play_audio_func;
        }

        // find the total number of questions
        var questions = document.getElementsByClassName("question_class");
        num_question = questions.length;

        // array of all the answers (label tag)
        var inputs = document.getElementsByClassName("radioo");

        // set the event handler for each lable (answer)
        for (var i = 0; i < inputs.length; i++) {
            inputs[i].onclick = update_process;
        }
    };

    // define audio.stop
    function stop_audio(audio) {
        audio.pause();
        audio.currentTime = 0.0;
    }

    function play_audio_func() {
        var audio = document.getElementsByClassName("audio");
        var name = this.name;
        var split_value = name.split("_");
        var audio_curr = audio[split_value[1]];
        for (var i = 0; i < audio.length; i++) {
            // stop other audio
            if (i != split_value[1]) {
                stop_audio(audio[i]);
            }
        }
        // stop curr playing
        if (audio_curr.duration > 0.0) {
            stop_audio(audio_curr);
        }
        // first time play
        audio_curr.play();

    }

    // This function is to give the correct answer after each choice from client
    // and will show another question (if have any)
    // and will update the correct number of the questions answered
    // and will update the progress bar
    function update_process() {

        // update the total number of the questions that answered
        total++;

        // find the question's name tag
        //var input = this.getElementsByTagName("input");
        name = this.getAttribute("name");

        var value = this.getAttribute("value");

        // the question value will have the id_answer and correct answer
        // of this question
        var split_value = value.split("_");

        // if the user answer correct
        var matched = split_value[0] == split_value[1];

        if (matched) {
            correct_num++;
            this.style.color = "blue";
            this.style.fontSize = "17pt";
            $('#correct')[0].innerHTML = "Corect: " + correct_num;

            this.style.fontWeight = "bold";

        } else {
            incorrect_num++;
            this.style.color = "red";
            $('#incorrect')[0].innerHTML = "Incorect: " + incorrect_num;
        }

        disable_buttons_all_and_show_correct_answer(name);

        // update the progress barŒ
        document.getElementById("barr").setAttribute("style", "width: " + (total * 100 / num_question) + "%");
        show_question();

        $("html, body").animate({ scrollTop: $(document).height() }, 1000);

    }

    // this is to show the next hidden question after the user chose one
    function show_question() {
        if (document.getElementById(total + 1) == null) {
            return;
        }
        var element = document.getElementById(total +1).className;
        document.getElementById(total +1).className =
            document.getElementById(total +1).className.replace("hide_words ", "") ;
    }

    function disable_buttons_all_and_show_correct_answer(name) {
        var inputs = document.getElementsByClassName("radioo");

        // set the event handler for each lable (answer)
        for (var i = 0; i < inputs.length; i++) {
            //labels[i].onclick = update_process;

            var value = inputs[i].getAttribute("value");

            var name_now = inputs[i].getAttribute("name");

            if (name_now == name) {
                inputs[i].onclick = function() {
                    this.disabled = true;
                }

                inputs[i].style.cursor = "not-allowed";
                var split_value = value.split("_");
                if (split_value[0] == split_value[1]) {
                    inputs[i].style.color = "blue";
                    inputs[i].style.fontSize = "17pt";
                    inputs[i].style.fontWeight = "bold";
                }
            }
        }
    }

    function show_english(event) {
        var choices = document.getElementsByClassName("show_vi");
        for(var i = 0; i < choices.length; i++) {
            if(choices[i].className.indexOf("btn") != -1) {
                choices[i].className = "btn btn-default btn-lg show_vi hide_words";
            } else {
                choices[i].className = "show_vi hide_words";
            }

        }
        choices = document.getElementsByClassName("show_en");
        for(var i = 0; i < choices.length; i++) {
            if(choices[i].className.indexOf("btn") != -1) {
                choices[i].className = "btn btn-default btn-lg show_en";
            } else {
                choices[i].className = "show_en";
            }
        }
    }

    function show_vietnamese(event) {
        var choices = document.getElementsByClassName("show_vi");
        for(var i = 0; i < choices.length; i++) {
            // I need this for the switch language button
            if(choices[i].className.indexOf("btn") != -1) {
                choices[i].className = "btn btn-default btn-lg show_vi";
            } else {
                choices[i].className = "show_vi";
            }
        }

        choices = document.getElementsByClassName("show_en");
        for(var i = 0; i < choices.length; i++) {
            // I need this for the switch language button
            if(choices[i].className.indexOf("btn") != -1) {
                choices[i].className = "btn btn-default btn-lg show_en hide_words";
            } else {
                choices[i].className = "show_en hide_words";
            }
        }
    }
})();