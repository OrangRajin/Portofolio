var username;
var email;
var password;
var gender;
var dob;

function getDOM(){
    username = document.getElementById("username").value;
    password = document.getElementById("password").value;
    email = document.getElementById("email").value;
    gender = document.getElementByName("gender").value;
    dob = document.getElementById("dob").value;
}

function validateEmail(text){
    if(text.includes("@")&& text.includes(".com")){
        return true;
    }
    return false; 
}

function validate(){
    getDOM();
    if(username == ""){
        alert("username must be exists!");
        return false;
    }

    if(username.length < 8){
        alert("username must be more than 7 characters!");
        return false;
    }

    if(validateEmail(email) == ""){
        alert("email must be exists!");
        return false;
    }

    if (validateEmail(email)==false){
       alert("email must have @ and .com");
        return false ;
    }

    if(password == ""){
        alert("password must be exists!");
        return false;
    }

    if(password.length < 6){
        alert("password must be more than 5 characters");
        return false;
    }

    var date = new Date(dob).getTime();

    if(date > Date.now()){
        alert("date must be less than year 2021");
        return false; 
    }

    var genderChecked = false;

    for(let i=0 ; i<gender.length ; i++){
        if(gender[i].checked){
            genderChecked = true;
            break;
        }
    }

    if(genderChecked == false){
        alert("gender must be filled!");
        return false;
    }
}