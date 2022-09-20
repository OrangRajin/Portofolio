var sliderImages = $(".slide");

sliderImages.hide();

//eq -> spesifikin index
sliderImages.eq(0).show();

var currIdx = 0;
var minIdx = 0;
var maxIdx = sliderImages.length - 1;

$("#slide-right").click(function(){
    sliderImages.eq(currIdx).hide();
    currIdx += 1;

    if(currIdx > maxIdx){
        currIdx = minIdx;
    }
    sliderImages.eq(currIdx).show();
});

$("#slide-left").click(function(){
    sliderImages.eq(currIdx).hide();
    currIdx -= 1;

    if(currIdx < minIdx){
        currIdx = maxIdx;
    }

    sliderImages.eq(currIdx).show();
});