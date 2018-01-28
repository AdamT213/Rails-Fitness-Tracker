function Routine(attributes) { 
    this.category = attributes.category;  
} 

function Exercise(attributes) { 
    this.name = attributes.name 
    this.target = attributes.target 
    this.sets = attributes.sets 
    this.reps = attributes.reps
}

Routine.prototype.template = function() { 
    var template = `<li>Category: ${this.category}</li>` 
    return template; 
} 

Exercise.prototype.template = function() { 
    var template = `<h2>Name: ${this.name}</h2><br /> 
                    <li>Target: ${this.target}</li><br />
                    <li>Sets: ${this.sets}</li><br />
                    <li>Reps: ${this.reps}</li><br />` 
    return template;
}


$(document).ready(function(){
    $(".exercises").on('click', function(e) { 
        $.get("/workout_routines/" + e.target.id, function(data){ 
            if ($("div#"+data.id + ".workoutshow")[0]["childElementCount"] === 0) { 
                let routine = new Routine(data)
            $("div#"+data.id + ".workoutshow").append(routine.template())  
                .append("Exercises:" + "<br>" + "<ul>")
                for (let i=0; i < data["exercises"].length; i++) { 
                    let exercise = new Exercise(data["exercises"][i]) 
                  $("div#"+data.id + ".workoutshow").append(exercise.template())
                } 
            }
        })
    }) 
}) 


    
    