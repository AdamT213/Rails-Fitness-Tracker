$(document).ready(function(){
    $(".exercises").on('click', function(e) { 
        $.get("/workout_routines/" + e.target.id, function(data){ 
            if ($("div#"+data.id + ".workoutshow")[0]["childElementCount"] === 0) {
            $("div#"+data.id + ".workoutshow").append("<li>" + "Category: " + data["category"] + "</li>")  
                .append("Exercises:" + "<br>" + "<ul>")
                for (let i=0; i < data["exercises"].length; i++) { 
                  $("div#"+data.id + ".workoutshow").append("<li>" + "Name: " + data["exercises"][i]["name"] + "</li>") 
                    .append("<li>" + "Target: " + data["exercises"][i]["target"] + "</li>")
                    .append("<li>" + "Sets: " + data["exercises"][i]["sets"] + "</li>")
                    .append("<li>" + "Reps: " + data["exercises"][i]["reps"] + "</li>" + "</ul>") 
                } 
            }
        })
    }) 
})