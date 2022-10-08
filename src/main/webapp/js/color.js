//修改背景色
function changebgcolor(i) {
    document.getElementById("chapter").style.background=i.value;
    document.getElementById("readerBook").style.background=i.value;
    document.getElementById("desc").style.background=i.value;
}
//修改字体颜色
function changecolor(i) {
    document.getElementById("desc").style.color=i.value;
}
//修改字体大小
function changesize(i) {
    document.getElementById("desc").style.fontSize=i.value;
}