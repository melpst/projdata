<table>
<?
    include("sqlfunc.php");
    $sec = $_GET['sec'];
    search_hos_from_section($sec);

    function search_hos_from_section($keyword) {
      $keyword = strtolower($keyword);
      $sql = "SELECT hospital.hosId,hosName,secName,numBed,numDoc
              FROM (hospital INNER JOIN has on hospital.hosId = has.hosId) INNER JOIN section ON has.secId = section.secId
              WHERE secName LIKE '%$keyword%'
              ORDER BY hosId";
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