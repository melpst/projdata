<?

function select($sql)
{
	//error_reporting(E_ALL);
	include("connection.php");   
   	//echo "<br>$sqlc";
	$dbquery = mysql_query($sql) or die ("Tango down");
	//$numrows = mysql_num_rows($dbquery);			
	return $dbquery;	
}
?>