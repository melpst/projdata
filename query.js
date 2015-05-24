function searchDis(dis) {
    console.log("searchByDist: " + dis);
    $('#hos').load('searchByDist.php?dis=' + dis);
}

function searchPro(pro) {
    console.log("searchByProv: " + pro);
    $('#hos').load('searchByProv.php?pro=' + pro);
}

function searchOrg(org) {
    console.log("searchByOrg: " + org);
    $('#hos').load('searchByOrg.php?org=' + org);
}

function searchAll() {
    $('#hos').load('allHos.php?');
}

(function ($) {
   $(document);
}(jQuery));