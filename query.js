function searchDist(dis) {
    console.log("searchByDist: " + dis);
    $('#hos').load('searchByDist.php?dis=' + dis);
}

function searchinDist(hid) {
    console.log("searchByinDist: " + hid);
    $('#hos').load('searchByinDist.php?hid=' + hid);
}

function searchProv(pro) {
    console.log("searchByProv: " + pro);
    $('#hos').load('searchByProv.php?pro=' + pro);
}

function searchinProv(hip) {
    console.log("searchByinProv: " + hip);
    $('#hos').load('searchByinProv.php?hip=' + hip);
}

function searchOrg(org) {
    console.log("searchByOrg: " + org);
    $('#hos').load('searchByOrg.php?org=' + org);
}

function searchinOrg(hio) {
    console.log("searchByinOrg: " + hio);
    $('#hos').load('searchByinOrg.php?hio=' + hio);
}


function searchinSec(his) {
    console.log("searchByinSec: " + his);
    $('#hos').load('searchByinSec.php?his=' + his);
}
 

function searchSec(sec) {
    console.log("searchBySec: " + sec);
    $('#hos').load('searchBySec.php?sec=' + sec);
}

function searchType(type) {
    console.log("searchByType: " + type);
    $('#hos').load('searchByType.php?type=' + type);
}

function searchAll() {
    $('#hos').load('allHos.php?');
}

(function ($) {
   $(document);
}(jQuery));