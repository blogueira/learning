function gerarCor() {
    var minhaCorInt = Math.floor(Math.random() * 16777215);
    return "#" + minhaCorInt.toString(16);
};

function colorirDivs() {
    var divs = document.getElementsByTagName('div');
    var divArray = [];
    for (var i = 0; i < divs.length; i += 1) {
        divs[i].style.backgroundColor = gerarCor();
    }
}