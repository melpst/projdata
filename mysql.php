<div class="row">

<?php
    include("sqlfunc.php");
    $name = $_GET['name'];
    search_coffee_name($name, "ASC");
  
    function search_coffee_name($keyword, $order)
    {
        $keyword = strtolower($keyword);
        $sql = "SELECT * 
                FROM Coffee
                WHERE lower(name) LIKE '%$keyword%'
                ORDER BY name $order, rating $order";
        //echo $sql;
        $result = select($sql);
        $row = mysql_num_rows($result);
        //echo "<br>row : "$row."<br>";
        while($row = mysql_fetch_array($result))
        {
?>


<div class="col-sm-4 col-lg-4 col-md-4">
    <div class="thumbnail hvr-grow-shadow">
        <? echo "<img src=\"./img/coffee/".$row['pic']."\">"; ?>
        <!-- <img src="./img/18.jpg"> -->
        <div class="caption">
            <? echo "<h4>".$row['name']."</h4>"; ?>
            <!-- <h4>Chocolate-y Iced Mocha</h4> -->
        </div>
        <div class="ratings"><p>
            <?
            for ($i = 1; $i <= $row['rating']; $i++) {
                echo "<span class=\"fa fa-heart good\"></span> ";
            }
            for ($i <= $row['rating'] + 1; $i <= 5; $i++) {
                echo "<span class=\"fa fa-heart-o bad\"></span> ";
            }
            ?>
        </p></div>
    </div>
</div>

<? } } ?>

</div>