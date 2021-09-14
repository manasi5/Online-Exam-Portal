const edata=[
    {
        question:"CSS stands for",
        a:"Cascade style sheets",
        b: "Color and style sheets",
        c: "Cascading style sheets",
        d: "None of the above",
        correct:"c",
    },
    {
        question:"HTML stands for -",
        a:"HighText Machine Language",
        b:"HyperText and links Markup Language",
        c:"HyperText Markup Language",
        d:"None of these",
        correct:"c",
    },
    {
        question:"Which of the following tag is used to insert a line-break in HTML?",
        a:"<br>",
        b:"<a>",
        c:"<pre>",
        d:"<b>",
        correct:"a",
    },
    {
        question:"Which of the following element is responsible for making the text italic in HTML?",
        a:"<i>",
        b:"<italic>",
        c:"<it>",
        d:"<pre>",
        correct:"a",
    },
    {
        question:"The property in CSS used to change the background color of an element is -",
        a:"bgcolor",
        b:"color",
        c:"background-color",
        d:"All of the above",
        correct:"c",
    },

];

const exam=document.getElementById('exam')
const ansEls=document.querySelectorAll('.answer')
const questionEl=document.getElementById('question')
const a_text =document.getElementById('a_text')
const b_text =document.getElementById('b_text')
const c_text =document.getElementById('c_text')
const d_text =document.getElementById('d_text')
const submitBtn=document.getElementById('submit')

let currentExam=0
let score=0

loadExam()

function loadExam(){
     
    deselectAnswers()

    const currentExamData=edata[currentExam]
    questionEl.innerText=currentExamData.question
    a_text.innerText=currentExamData.a
    b_text.innerText=currentExamData.b
    c_text.innerText=currentExamData.c
    d_text.innerText=currentExamData.d
}

function deselectAnswers(){
    ansEls.forEach(ansEl => ansEl.checked=false)
}

function getSelected(){
    let answer
    ansEls.forEach(ansEl=>{
        if(ansEl.checked){
            answer=ansEl.id
        }
    })
    return answer
}

submitBtn.addEventListener('click',()=>{
    const answer=getSelected()
    if(answer){
        if (answer ===edata[currentExam].correct){
            score++
        }
        currentExam++

        if(currentExam<edata.length){
            loadExam()
        }else{
            exam.innerHTML=`
            <h2>You answered ${score}/ ${edata.length} questions correctly</h2>
             
            <button onclick="location.reload()">Reload </button>`
            
            
                
        }
    }
})

var timeLeft = 30;
var elem = document.getElementById('timer');
var timerId = setInterval(countdown, 1000);

function countdown() {
    if (timeLeft == -1) {
        clearTimeout(timerId);
        //doSomething();
    } else {
        elem.innerHTML = timeLeft + ' seconds remaining';
        timeLeft--;
    }
}