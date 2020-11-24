const check_1 = document.querySelector("#login1");
const check_id = check_1.querySelector("input");
const check_2 = document.querySelector("#login2");
const check_password = check_2.querySelector("input");
const loginBtn = document.querySelector(".loginbutton");

function CheckValue(){
    const ID = check_id.value;
    const PASSWORD = check_password.value;
    if(localStorage.getItem(ID) == PASSWORD){
        location.href = "/GSRationalCar/index.jsp";
        alert("환영합니다. 차원이 다른 GS Rational의 혜택을 누려보세요!");   
    } else {
        alert("WRONG");
    }
}

function init(){
    loginBtn.addEventListener("click", CheckValue);
}

init();