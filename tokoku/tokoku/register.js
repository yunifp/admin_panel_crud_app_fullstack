const form_1 = document.querySelector(".form_1");
const form_2 = document.querySelector(".form_2");
const form_3 = document.querySelector(".form_3");

const form_1_btns = document.querySelector(".form_1_btns");
const form_2_btns = document.querySelector(".form_2_btns");
const form_3_btns = document.querySelector(".form_3_btns");

const form_1_next_btn = document.querySelector(".form_1_btns .btn_next");
const form_2_back_btn = document.querySelector(".form_2_btns .btn_back");
const form_2_next_btn = document.querySelector(".form_2_btns .btn_next");
const form_3_back_btn = document.querySelector(".form_3_btns .btn_back");

const form_2_progressbar = document.querySelector(".form_2_progressbar");
const form_3_progressbar = document.querySelector(".form_3_progressbar");

const btn_done = document.querySelector(".btn_done");


// GANTI TEMA 

let body = document.body;

function gantiTema () {
    body.classList.toggle("dark");  
}


form_1_next_btn.addEventListener("click", function () {
    form_1.style.display = "none";
    form_2.style.display = "block";

    form_1_btns.style.display = "none";
    form_2_btns.style.display = "flex";

    form_2_progressbar.classList.add("active");
});

form_2_back_btn.addEventListener("click", function () {
    form_1.style.display = "block";
    form_2.style.display = "none";

    form_1_btns.style.display = "flex";
    form_2_btns.style.display = "none";

    form_2_progressbar.classList.remove("active");
    form_3_progressbar.classList.remove("active");
});

form_2_next_btn.addEventListener("click", function () {
    form_2.style.display = "none";
    form_3.style.display = "block";

    form_2_btns.style.display = "none";
    form_3_btns.style.display = "flex";

    form_3_progressbar.classList.add("active");
});

form_3_back_btn.addEventListener("click", function () {
    form_2.style.display = "block";
    form_3.style.display = "none";

    form_2_btns.style.display = "flex";
    form_3_btns.style.display = "none";

    form_3_progressbar.classList.remove("active");
});

btn_done.addEventListener("click", function () {
    alert("your data saved successfully");
});

