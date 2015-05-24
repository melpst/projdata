function searchDis(dis) {
    console.log("mysql: " + dis);
    $('#hos').load('mysql.php?dis=' + dis);
}

(function ($) {
   $(document);
}(jQuery));