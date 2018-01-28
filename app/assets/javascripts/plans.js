function Plan(attributes) { 
    this.name = attributes.workout_routine.name 
    this.duration = attributes.duration 
    this.category = attributes.workout_routine.category
    this.difficulty = attributes.workout_routine.difficulty
    this.split_length = attributes.workout_routine.split_length 
} 

Plan.prototype.template = function() { 
    var template = `<h2>Name: ${this.name}</h2><br /> 
                    <li>Length(Days): ${this.duration}</li><br />  
                    <li>Category: ${this.category}</li><br />
                    <li>Difficulty: ${this.difficulty}</li><br /> 
                    <li>Days per Week: ${this.split_length}</li><br />`
    
    return template; 
}   


$(document).ready(function(){ 
    $("#userplans").on('click', function(e) { 
        var userId = e.target.baseURI.match(/\d+$/)[0];
        $.get("/fitness_plans", function(data) { 
            for (let i=0; i<data.length; i++) { 
                if (data[i]["user_id"].toString() === userId) {  
                    if (data[i]["workout_routine"] !== null) { 
                        let plan = new Plan(data[i])
                        $("#plans").append(plan.template())
                            .append("<a href= /fitness_plans/" + data[i]["id"] + ">" + "View Exercises" +  "</a>" + "<br>")
                    }
                }
            }
        })
    }) 
})
