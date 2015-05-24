<meta charset="utf-8">

<?php

    $host       = "localhost";
    $dbuser     = "zp9004_admin";
    $dbpasswd   = "uzcPLHsCu8";
    $dbname     = "zp9004_projdata";
    

    $db = mysql_connect($host,$dbuser,$dbpasswd) or die ("CANNOT CONNECT DATABASE PLEASE CHECK");
    $Select = mysql_select_db($dbname) or die("CANNOT SELECT DATABASE");

?>