let images = document.querySelectorAll('.slider-line img');
let slider_line = document.querySelector('.slider-line');
let count = 0;

function rollSlider(){
    slider_line.style.transform = 'translate(-' + count*500 + 'px)';
}

document.getElementsByClassName("btn-left-slider")[0].addEventListener('click',()=>{
    count--;
    if(count < 0){
        count = images.length - 2;
    }
    rollSlider();
});

document.querySelector('.btn-right-slider').addEventListener('click',()=>{
    count++;
    if(count >= images.length-1){
        count = 0;  
    }
    rollSlider();
});