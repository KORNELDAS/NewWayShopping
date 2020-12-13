function demo1(){
   setTimeout ( "setToBlack()", 4000 );
}

function setToBlack(){
    let hid=document.getElementById("cut");
    hid.setAttribute("style","display:none;");
}

