const input1 = document.querySelector("#first");
const input_One = input1.querySelector("input");
const password1 = document.querySelector("#second");
const password_One = password1.querySelector("input");
const password2 = document.querySelector("#thrid");
const password_two = password2.querySelector("input");
const form = document.querySelector(".inbutton");

console.log(input_One);

function handleSubmitId(event){

    console.log("Start-HandleSubmitId");
    let currentId = input_One.value;
    let currentPassword = password_One.value;
    let currentPassword2 = password_two.value;
    
    if (currentPassword!=currentPassword2){
        alert("비밀번호가 일치하지 않습니다.");
    } 
    else if(currentId==null&&currentPassword==null){
        alert("유효하지 않는 ID 혹은 비밀번호입니다.");
    }
    else{
        localStorage.setItem(currentId, currentPassword);
        alert("회원가입 성공!!");
        window.location.href="main.html";
    }

   
}

function init(){
    form.addEventListener("click", handleSubmitId);
    console.log("1");
}

init();
