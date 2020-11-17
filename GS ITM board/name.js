const form=document.querySelector("get_name");
const inputName=form.querySelector("user_id"); //이름 입력받은거
const outputName=document.querySelector(".put_name"); //저장된 애가 출력 될거


function saveLocal(name){
localStorage.setItem("currentUser",JSON.stringify(name));
}

function saveOutput(text){
outputName.innerHTML=`안녕하세요 ${text} 님`;
outputName.classList.add("showing");
}
function saveName(event){
event.preventDefault();
const currentUser=inputName.value;

saveLocal(currentUser);
saveOutput(currentUser);
}

function askName(){
form.addEventListener("submit",saveName);
}

function loadName(){
const currentValue=localStorage.getItem("currentUser");
if (currentValue===null){
askName();
}
else
{
saveOutput(currentValue);
}

}

function init() {
loadName();
}
init();