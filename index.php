<?php
session_start();
if(isset($_SESSION["admin"])){header("Location: dashboard.php");exit;}
$error="";
if($_SERVER["REQUEST_METHOD"]==="POST"){
 if(($_POST["username"]??"")==="admin" && ($_POST["password"]??"")==="admin123"){
  $_SESSION["admin"]="Administrator"; header("Location: dashboard.php"); exit;
 }
 $error="Invalid username or password.";
}
?>
<!doctype html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>UCC Enrollment</title><link rel="stylesheet" href="css/style.css"></head>
<body class="login-page"><div class="login-card"><div class="logo">UCC</div><h1>UNIDA CHRISTIAN COLLEGE</h1><p>Enrollment Management System</p>
<?php if($error):?><div class="alert"><?=$error?></div><?php endif;?>
<form method="post"><label>Username</label><input name="username" required><label>Password</label><input type="password" name="password" required><button class="btn primary full">Sign In</button></form>
<small>Demo login: admin / admin123</small></div></body></html>