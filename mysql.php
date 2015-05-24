<table style="width:100%">
<?

    include("sqlfunc.php");
    $dis = $_GET['dis'];
    search_hos_from_district($dis);

    function search_hos_from_district($keyword) {
      $keyword = strtolower($keyword);
      $sql = 'select * from hospital
            where district like "%%"';
      $result = select($sql);
  ?>
  <tr>
    <td><strong><? echo "hosId"; ?></strong></td>
    <td><strong><? echo "hosName"; ?></strong></td>
    <td><strong><? echo "district"; ?></strong></td>
  </tr>
  <?
    while($row = mysql_fetch_array($result))
    {
  ?>
    <tr>
      <td><? echo $row['hosId']; ?></td>
      <td><? echo $row['hosName']; ?></td>
      <td><? echo $row['district']; ?></td>
    </tr>
  <? }
  }
?>
</table>