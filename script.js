var list = [];
var num_question;
window.onload = function() {
    // find the total number of questions
    var questions = document.getElementsByClassName("question_class");
    num_question = questions.length;

    // array of all the answers (label tag)
    var labels = document.getElementsByTagName("label");

    // set the event handler for each lable (answer)
    for(var i = 0; i < labels.length; i++) {
        labels[i].onclick = update_process;
    }
};

function update_process() {
    // find the question's name tag
    var name = this.getElementsByTagName("input");
    name = name[0].getAttribute("name");

    // loop through the list array to see whether the user check that input yet
    var found = 0;
    for (var k = 0; k < list.length; k++) {
        if (list[k] == name) {
            found = 1;
        }
    }

    // if not found, update the list array and the progress bar
    if(found == 0) {
        list.push(name);
        document.getElementById("barr").setAttribute("style", "width: " + (list.length * 100 / num_question) + "%");
    }
}