function searchDis(dis) {
    console.log("text: " + dis);
    $('#hos').load('text.php?dis=' + dis);
}

(function ($) {
   $(document);
}(jQuery));