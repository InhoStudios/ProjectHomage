firebase.auth().setPersistence(firebase.auth.Auth.Persistence.LOCAL);
user = firebase.auth().currentUser;

function signup(){
    var email = document.getElementById("regEmail").value;
    var pw = document.getElementById("regPassword").value;
    var confPw = document.getElementById("confirmPassword").value;
    if(pw===confPw){
        firebase.auth().createUserWithEmailAndPassword(email, pw).catch(function(error) {
            // Handle Errors here.
            var errorCode = error.code;
            var errorMessage = error.message;
            document.getElementById("loginAlert").innerText = "Account already exists with this email";
            // ...
        });
    } else {
        document.getElementById("loginAlert").innerText = "Passwords don't match"
    }
}

function login(){
    var email = document.getElementById("loginEmail").value;
    var pw = document.getElementById("loginPassword").value;

    firebase.auth().setPersistence(firebase.auth.Auth.Persistence.LOCAL);
    firebase.auth().signInWithEmailAndPassword(email, pw).catch(function(error) {
        document.getElementById("loginAlert").innerText = "Wrong email or password";
        console.log(error);
    });

    user = firebase.auth().currentUser;

    if (user) {
        window.history.back();
        checkLogin();
    }
}

function signOut(){

    user = firebase.auth().currentUser;

    if (user) {
        firebase.auth().signOut().then(function() {
            // Sign-out successful.
            console.log("user exists. signed out");
            window.location = 'index.html';
        }).catch(function(error) {
            // An error happened.
            console.log(error);
        });
    } else {
        console.log("no user");
        window.location='login.html'
    }
}

function checkLogin(){

    user = firebase.auth().currentUser;

    if (user) {
        console.log(user);
        document.getElementById("homeText").innerText = "Signed in";
        document.getElementById("outlist").style.visibility = 'visible';
        document.getElementById("inlist").style.visibility = 'collapse';
        document.getElementById("homesignout").style.visibility = 'visible';
    } else {
        console.log(user);
        document.getElementById("loginSpan").innerHTML = "Sign in";
        document.getElementById("outlist").style.visibility = 'collapse';
        document.getElementById("inlist").style.visibility = 'visible';
    }
}

function checkWebpage(){

    if(firebase.apps.length >= 0){

        user = firebase.auth().currentUser;

        if(user){
            console.log("access allowed");
        } else {
            console.log("no user");
            window.location = 'login.html';
        }
    } else {
        console.log("firebase not loaded");
        checkWebpage();
    }
}

function openContent(){
    document.getElementById("coursecontent").style.visibility='visible';
}