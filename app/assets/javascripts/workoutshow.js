function Routine(attributes) { 
    this.category = attributes.category; 
} 

Routine.prototype.template = function() { 
    debugger;
    var template = `<li>Category: ${this.category}</li>` 
    return template; 
}


$(document).ready(function(){
    $(".exercises").on('click', function(e) { 
        $.get("/workout_routines/" + e.target.id, function(data){ 
            if ($("div#"+data.id + ".workoutshow")[0]["childElementCount"] === 0) { 
                debugger;
            $("div#"+data.id + ".workoutshow").append(Routine.template())  
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


    
    