<table>
<?
    include("sqlfunc.php");
    $his = $_GET['find'];
    search_hos_from_inSec($his);

    function search_hos_from_inSec($keyword) {
      $keyword = strtolower($keyword);
      
      $sql = "SELECT hospital.hosId,hosName,secName,numBed,numDoc
              FROM (hospital INNER JOIN has ON hospital.hosId = has.hosId) INNER JOIN section ON has.secId = section.secId
              WHERE hosName LIKE '%$keyword%'";
      $result = select($sql);
   ?>
  <tr>
    <td><strong><? echo "hosId"; ?></strong></td>
    <td><strong><? echo "hosName"; ?></strong></td>
    <td><strong><? echo "secName"; ?></strong></td>
    <td><strong><? echo "numBed"; ?></strong></td>
    <td><strong><? echo "NumDoc"; ?></strong></td>
  </tr>
  <?
    while($row = mysql_fetch_array($result))
    {
  ?>
    <tr>
      <td><? echo $row['hosId']; ?></td>
      <td><? echo $row['hosName']; ?></td>
      <td><? echo $row['secName']; ?></td>

      <td><? echo $row['numBed']; ?></td>
      <td><? echo $row['numDoc']; ?></td>
    </tr>
  <? }
  }
?>
</table>