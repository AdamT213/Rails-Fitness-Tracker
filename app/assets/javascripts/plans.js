$(document).ready(function(){ 
    $("#userplans").on('click', function(e) { 
        var userId = e.target.baseURI.match(/\d+$/)[0] 
        $.get("/fitness_plans", function(data) { 
            for (let i=0; i<data.length; i++) { 
                if (data[i]["user_id"].toString() === userId) {  
                    if (data[i]["workout_routine"] !== null) {
                        $("#plans").append("<li>" + "Name: " + data[i]["workout_routine"]["name"] + "</li>") 
                            .append("<li>" + "Length(days): " + data[i]["duration"] + "</li>")
                            .append("<li>" + "Category: " + data[i]["workout_routine"]["category"] + "</li>") 
                            .append("<li>" + "Difficulty: " + data[i]["workout_routine"]["difficulty"] + "</li>") 
                            .append("<li>" + "Days per Week: " + data[i]["workout_routine"]["split_length"] + "</li>") 
                    }
                }
            }
        })
    }) 
})
