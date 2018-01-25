$(document).ready(function(){ 
    $("#userplans").on('click', function() { 
        $.get("/fitness_plans", function(data) { 
            for (let i=0; i<data.length; i++) { 
                const userId = $("#userId");
                debugger;
                if (data[i]["user_id"] === userId.innerText) { 
                    $("#plans").append("<li>" + "Name: " + data[i]["workout_routine"]["name"] + "</li>") 
                        .append("<li>" + "Length(days): " + data[i]["duration"] + "</li>")
                        .append("<li>" + "Category: " + data[i]["workout_routine"]["category"] + "</li>") 
                        .append("<li>" + "Difficulty: " + data[i]["difficulty"] + "</li>") 
                        .append("<li>" + "Days per Week: " + data[i]["split_length"] + "</li>") 
                }
            }
        })
    }) 
})
