<table>
<?
    include("sqlfunc.php");
    searchAll();


function searchAll() {
      $sql = "SELECT * FROM hospital";
      $result = select($sql);
  ?>
  <tr>
    <td><strong><? echo "hosId"; ?></strong></td>
    <td><strong><? echo "hosName"; ?></strong></td>
    <td><strong><? echo "address"; ?></strong></td>
    <td><strong><? echo "district"; ?></strong></td>
    <td><strong><? echo "province"; ?></strong></td>
    <td><strong><? echo "tel"; ?></strong></td>
    <td><strong><? echo "web"; ?></strong></td>
    <td><strong><? echo "organization"; ?></strong></td>
    <td><strong><? echo "insurance"; ?></strong></td>
  </tr>
  <?
    while($row = mysql_fetch_array($result))
    {
  ?>
    <tr>
      <td><? echo $row['hosId']; ?></td>
      <td><? echo $row['hosName']; ?></td>
      <td><? echo $row['address']; ?></td>

      <td><? echo $row['district']; ?></td>
      <td><? echo $row['province']; ?></td>
      <td><? echo $row['tel']; ?></td>

      <td><? echo $row['web']; ?></td>
      <td><? echo $row['organization']; ?></td>
      <td><? echo $row['insurance']; ?></td>
    </tr>
  <? }
}
?>
</table>