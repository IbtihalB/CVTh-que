<?php 

include ("connexion.php");

session_start();
$code=$_SESSION['code'];

 $intitule=addslashes($_POST["intitule"]);
 $filiere=$_POST["filiere"];
 $duree=$_POST["duree"];
 $d=$_POST["date"];
 $description=addslashes($_POST['description']);
 $d1=explode("/",$d);
 krsort($d1);
 $date=implode("-",$d1);
 $type=$_POST["type"];
 $sql="INSERT INTO `offre`(`intitule`,`filiere`, `duree`, `date`, `code`, `type`, `description`) VALUES ('$intitule', '$filiere','$duree', '$date', '$code', '$type', '$description')";
 $r=mysqli_query($link,$sql);
 $sql0="SELECT `id6` FROM `offre` WHERE `intitule`='$intitule' and `code`=$code and `filiere`='$filiere' and `date`='$date' and `type`='$type' and `duree`='$duree'";
 $r0=mysqli_query($link,$sql0);
 $id=mysqli_fetch_assoc($r0);
 $id6=$id['id6'];

$_SESSION['id_offre']=$id6;

if (isset($_POST["bureau"])){
$bureau=$_POST["bureau"];
foreach ($bureau as $value) {
	$sql1="SELECT id1 from bureautique where b='$value'";
	$r1=mysqli_query($link,$sql1);
	$d1=mysqli_fetch_assoc($r1);
	$v1=$d1['id1'];
	$sql11="INSERT INTO `offre_compet1` (`id6`, `id1`) VALUES ('$id6','$v1')";
	$r11=mysqli_query($link,$sql11);
}}

if (isset($_POST["info"])){
$info=$_POST["info"];
foreach ($info as $value) {
	$sql2="SELECT  id2 from lang_info where linfo='$value'";
	$r2=mysqli_query($link,$sql2);
	$d2=mysqli_fetch_assoc($r2);
	$v2=$d2['id2'];
	$sql22="INSERT INTO `offre_compet2`(`id6`, `id2`) VALUES ('$id6','$v2')";
	$r22=mysqli_query($link,$sql22);
}}

if (isset($_POST["sys_exp"])){
$sys_exp=$_POST["sys_exp"];
foreach ($sys_exp as $value) {
	$sql3="SELECT  id3 from sys_exploitation where sys_ex='$value'";
	$r3=mysqli_query($link,$sql3);
	$d3=mysqli_fetch_assoc($r3);
	$v3=$d3['id3'];
	$sql33="INSERT INTO `offre_compet3`(`id6`, `id3`) VALUES ('$id6','$v3')";
	$r33=mysqli_query($link,$sql33);
}}

 if (isset($_POST["langues"])){
$langues=$_POST["langues"];
foreach ($langues as $value) {
	$sql4="SELECT  id4 from langues where lang='$value'";
	$r4=mysqli_query($link,$sql4);
	$d4=mysqli_fetch_assoc($r4);
	$v4=$d4['id4'];
	$sql44="INSERT INTO `offre_compet4`(`id6`, `id4`) VALUES ('$id6','$v4')";
	$r44=mysqli_query($link,$sql44);

}}?>
<script>
window.location.href="afficher_offre_ent.php";
</script>

