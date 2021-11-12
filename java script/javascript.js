const imgs = document.getElementById("img");
const img = document.querySelectorAll("#img img");

let idx=0;

function carrossel(){
    idx++;

    if(idx > img.length -3){
        idx = 0; 
    }

    imgs.style.transform = `translateX(${-idx * 33.5}%)`;
}

setInterval(carrossel, 1800);