// fetch data - question, choices for the first one
var current_question = 1;
var question_answer_key = 0;
var list = [];
var num_question = 1;
var correct_num = 0;
var incorrect_num = 0;
var total = 0; // this is the total question answered
var MAX_QUESTION = 40;
var letter = ["A", "B", "C", "D", "E"];
window.onload = function() {
    // first question
    fetchData("question", total + 1);

    // Select language english or vietnamese
    // default language is english
    show_english();

    // in the page will have 2 button, one will be hidden
    $("#en").click(show_english);
    $("#vi").click(show_vietnamese);
};

//This function is to fetch data from different queries
function fetchData(modeInfo, question_id) {
    var request = new XMLHttpRequest();

    //onload functions for different queries
    if(modeInfo == "question") {
        request.onload = question_mode;
    } else if (modeInfo == "choices") {
        request.onload = choices_mode;
    }

    //open
    request.open("GET", "minedata.php?mode="+
        modeInfo + "&question_id=" + question_id, true);
    request.send(); //send
}

function show_question() {
    if (document.getElementById(total + 1) == null) {
        return;
    }
    var element = document.getElementById(total +1).className;
    document.getElementById(total +1).className =
        document.getElementById(total +1).className.replace("hide_words ", "") ;
}

function question_mode() {
    //alert("Hello");
    // create the div to keep track of question and choices

    var cover_div = jQuery("<div/>", {
        "id": total+1,
        "class": "hide_words btn-group btn-group-vertical col-lg-12 col-md-12 col-sm-12 col-xs-12",
        "data-toggle": "buttons"
    });
    cover_div.appendTo("#quiz_content");

    var response = JSON.parse(this.responseText);
    question_answer_key = response.answer;
    var h2_question = jQuery("<h2/>", {
        "id": "q_en",
        "class": "question_class"
    });

    // create audio
    var audio = jQuery("<audio/>", {
        "class": "audio",
        "src":  response.audio
    });

    var button_audio = jQuery("<button/>", {
        "name": "play_" + total,
        "type": "button",
        "class": "btn btn-info play_audio"
    });
    button_audio.html("<span class=\"glyphicon glyphicon-volume-up\"></span>");
    
    h2_question.html(total + 1 + ") " + response.question_vi_en);
    audio.appendTo(h2_question);
    button_audio.appendTo(h2_question);

    button_audio.click(play_audio_func);

    h2_question.appendTo("#" + (total + 1));

    fetchData("choices", total + 1);
}

function choices_mode() {
    var response = this.responseXML;

    var en = response.querySelectorAll("en");

    $(response).find("choice").each(function(index) {

        var new_div = jQuery("<div/>", {
            "class": "radioo",
            "type": "radio",
            "name": "question-"+ current_question+ "-answers",
            "value": question_answer_key+"_"+ $(this).find("answer_id").html()
        });

        new_div.html(letter[index]+ ") " + $(this).find("vi_en").text());

        new_div.appendTo("#" + (total + 1));

    });
    show_question();
    $("html, body").animate({ scrollTop: $(document).height() }, 1300);
    $(".radioo").click(update_process);
}


// copy part -- from the old file


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
    if ($(this).attr("disabled") == "disabled") {
        return;
    }
    // update the total number of the questions that answered
    total++;


    // the question value will have the id_answer and correct answer
    // of this question
    var split_value = $(this).attr("value").split("_");

    // if the user answer correct
    var matched = split_value[0] == split_value[1];

    if (matched) {
        correct_num++;
        $(this).css({
            "color": "blue",
            "font-size": "17pt",
            "font-weight": "bold"
        });

        $(this).append("<span class=\"glyphicon glyphicon-ok\"></span>");
        $("#correct").html("Correct: " + correct_num);

    } else {
        $(this).append("<span class=\"glyphicon glyphicon-remove\"></span>");
        incorrect_num++;
        $(this).css("color", "red");
        $('#incorrect').html("Incorect: " + incorrect_num);
    }

    disable_buttons_all_and_show_correct_answer($(this).attr("name"));

    // update the progress bar
    $("#barr").attr("style", "width: " + (total * 100 / MAX_QUESTION) + "%");

    if (total + 1 <= MAX_QUESTION) {
        fetchData("question", total + 1);
    }

}

function disable_buttons_all_and_show_correct_answer(name) {
    $(".radioo").each(function(index) {
        if ($(this).attr("name") == name) {
            $(this).off("click");
            $(this).attr("disabled", "disabled");
            $(this).css("cursor", "not-allowed");
        }

        var split_value = $(this).attr("value").split("_");
        if (split_value[0] == split_value[1]) {
            $(this).css({
                "color": "blue",
                "font-size": "17pt",
                "font-weight": "bold"
            })
        }
    });
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