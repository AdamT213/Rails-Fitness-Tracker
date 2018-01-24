$(document).ready(function(){
    $(".exercises").on('click', function(e) { 
        $.get("/workout_routines/" + e.target.id, function(data){ 
            debugger;
            $("#workoutshow").append("<li>" + "Category: " + data["category"] + "</li>")
                .append("<li>" + "Difficulty: " + data["difficulty"] + "</li>")
        })
    }) 
})