  <?php ob_start();  
   session_start();
      if (isset($_SESSION['prenom'])) {
    include("connexion.php");
    $apoge=$_SESSION['apogee'];$prenom=$_SESSION['prenom'];

    $sql="SELECT * from etudiant where apogee='".$apoge."'";
    $result=mysqli_query($link,$sql);
    $data=mysqli_fetch_assoc($result);  
       
 ?>

<!DOCTYPE html>
<html>
<head>
   <link rel="shortcut icon" type="image/ico" href="photos/favicon.ico">
  <title>CV</title>
  <meta charset="utf-8">
  <meta name="author" content="chkioua yasmine">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
  <style type="text/css">
    
    #footer a {
    color: #ffffff;
    text-decoration: none ;
    background-color: transparent;
   
}
#footer ul.social li{
  padding: 3px 0;
}
#footer ul.social li a i {
    margin-right: 5px;
  font-size:25px;
  transition: .5s all ease;
}
#footer ul.social li:hover a i {
  font-size:30px;
  margin-top:-10px;
}
#footer ul.social li a{color: #A4A4A4;}
#footer ul.quick-links li a{
  color:#ffffff;
}
#footer ul.social li a:hover{
  color:#A4A4A4;
}
#footer ul.quick-links li{
  padding: 3px 0;

  transition: .5s all ease;
}
#footer ul.quick-links li:hover{
  padding: 3px 0;
  margin-left:5px;
  font-weight:700;
}
#footer ul.quick-links li a i{
  margin-right: 5px;
}
#footer ul.quick-links li:hover a i {
    font-weight: 700;

}

  </style>

  <br>

   
<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
  <img src="photos/logo.png" width="50" class=" pr-3">
  <a class="navbar-brand" href="#" style="color: #10C4BE;">ESCC</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="accueilEtudiant.php">Accueil</a>
      </li>
     <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle pr-5" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Profil
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="cv.php">Mon CV</a>
          <a class="dropdown-item" href="mesOffres.php">Mes offres</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="deconnexion.php">Deconnexion</a>
        </div>
     </li>
   </ul>
   <ul class="navbar-nav ml-auto">
   <span class="navbar-text pl-5 ml-5" style="color: #FDE400;text-align: right; display: inline-block;"> Bonjour <?php echo $prenom; ?> </span>
   </ul>    
  </div>
</nav>


<div class="container mt-5">
	<h4 class="ml-0 pt-5"style="margin-top:-2%;color:#10C4BE; ">Les informations personelles </h4><br>
<form  method="POST" enctype="multipart/form-data"  action="trait_modifier_cv.php" >
    <div class="form-group row">
        <label class="col-md-4 col-form-label">Nom </label>
        <div class="col-md-6">
            <input type="text" name="nom" class="form-control" value="<?php echo($data['nom']); ?>" id="nom" required>
        </div>
    </div>     
    <div class="form-group row">
        <label class="col-md-4 col-form-label">Prenom </label>
        <div class="col-md-6">
            <input type="text" name="prenom" class="form-control"  value="<?php echo($_SESSION['prenom']); ?>" required>
        </div>
    </div>     
    <div class="form-group row">
        <label class="col-md-4 col-form-label">Num??ro Apog??e </label>
        <div class="col-md-6">
            <input type="number"  class="form-control" name="apogee" value="<?php echo($_SESSION['apogee']); ?>" required>
        </div>
    </div>        
		<div class="form-group row">
    		<label for="datenaissance" class="col-md-4 col-form-label">Date de naissance </label>
    		<div class="col-md-6">
      			<input type="Date"  class="form-control" name="datenaissance" value="<?php if(isset($_POST['datenaissance'])) echo $_POST['datenaissance']; else echo $data['date_naissance']?>" required>
    		</div>
  	</div>
    <div class="form-group row">
    		<label for="staticEmail" class="col-md-4 col-form-label">Email</label>
    		<div class="col-md-6">
      			<input type="email" class="form-control" name="email" value="<?php if(isset($_POST['email'])) echo $_POST['email']; else echo($data['email']); ?>" required>
    		</div>
  	</div>
  	<div class="form-group row">
    		<label for="inputTel" class="col-md-4 col-form-label">Num??ro de t??l??phone </label>
    		<div class="col-md-6">
      			<input type="text" class="form-control" name="Ntel" value="<?php if(isset($_POST['Ntel']))  echo $_POST['Ntel'];else echo $data['tel'] ?>" required>
    		</div>
  	</div>
    <div class="form-group row">
        <label  class="col-md-4 col-form-label">Adresse </label>
        <div class="col-md-6">
            <input type="text" class="form-control" name="Adr" value="<?php if(isset($_POST['Adr'])) echo $_POST['Adr'];else echo $data['adresse'] ?>" required >
        </div>
    </div>
    <div class="form-group row">
    <label class="col-md-4 col-form-label">Fili??re</label>
    <div class="col-md-6">
    <select class="form-control" name="fil" value="<?php if(isset($_POST['fil'])) echo $_POST['fil'];else echo $data['filiere'] ?>">
      <option value="Genie informatique">G??nie informatique</option>
      <option value="RST">RST</option>
      <option value="Genie industrielle">G??nie industrielle</option>
      <option value="Genie m??catronique">G??nie m??catronique</option>
      <option value="Genie ??lectrique">G??nie ??lectrique</option>
    </select>
    </div>
    </div>
     <div class="form-group row">
      <label class="col-md-4 col-form-label">Photo</label>
<div class=" col-md-6 ">
  <input type="file" name="photo" id="photo" >
 </div>
</div>

     <div class="form-group row">
      <label class="col-md-4 col-form-label">Video</label>
<div class=" col-md-6 ">
  <input type="file" name="vido" id="video">
 </div>
</div>
    <div class="d-flex flex-row justify-content-end"><button  type="submit" class="btn btn-secondary btn-md  mt-5" name="suivant" >Suivant</button>
</div>

</form></div><br><br>
<footer style="background-color: #232121;  " id="footer" class="pt-3 pb-2 w-100 h-20 d-inline-block " >
  <div class="container">
    <div class="row text-center text-xs-center text-sm-left text-md-left">
        <div class="col-xs-12 col-sm-4 col-md-4  ">
          <ul class="list-unstyled quick-links">
            <li><a href="about.php"><i class="fa fa-angle-double-right"></i>?? propos</a></li>
            <li><a href="ensakenitra.php"><i class="fa fa-angle-double-right"></i>Ensa Kenitra</a></li>
            <li><a href="entreprises.php"><i class="fa fa-angle-double-right"></i>Entreprises</a></li>
          </ul>
        </div>  
    
    <div class="col-xs-12 col-sm-4 col-md-4 text-md-center">
      <h5 style="color: #E9E2E2;">Contact</h5><br>
 <ul class="list-unstyled  social  ">
        
        <li class="list-inline-item"><a href="https://www.facebook.com/ESCC-231885027725519/"><i class="fa fa-facebook"></i></a></li>
        <li class="list-inline-item"><a href="https://twitter.com/ESCC70659386"><i class="fa fa-twitter"></i></a></li>
        <li class="list-inline-item"><a href="https://www.instagram.com/escc_plateforme/?hl=fr"><i class="fa fa-instagram"></i></a></li>
        <li class="list-inline-item"><a href="mailto:escc2019@gmail.com" target="_blank"><i class="fa fa-envelope"></i></a></li>
      </ul>
    </div>
    <div class="col-xs-12 col-sm-4 col-md-4  text-md-right ">
      <p style="color: #E9E2E2;">?? ESCC PLATEFORM 2019. </p>
      
    </div>
  </div>
  </div>
</footer>
<?php } else header("Location:broken.php") ?>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/bootstrap.bundle.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>

