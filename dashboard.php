<?php
session_start();if(!isset($_SESSION["admin"])){header("Location:index.php");exit;}require"database.php";
$students=$conn->query("SELECT COUNT(*) c FROM students")->fetch_assoc()["c"];
$subjects=$conn->query("SELECT COUNT(*) c FROM subjects")->fetch_assoc()["c"];
$enrollments=$conn->query("SELECT COUNT(*) c FROM enrollments")->fetch_assoc()["c"];
$pending=$conn->query("SELECT COUNT(*) c FROM enrollments WHERE status='Pending'")->fetch_assoc()["c"];
?>
<!doctype html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Dashboard - UCC</title><link rel="stylesheet" href="css/style.css"></head><body><?php include"includes_nav.php";?><main class="container"><h2>Dashboard</h2><p>Welcome to the UNIDA CHRISTIAN COLLEGE Enrollment Management System.</p>
<div class="stats"><div class="stat">Students<strong><?=$students?></strong></div><div class="stat">Subjects<strong><?=$subjects?></strong></div><div class="stat">Enrollments<strong><?=$enrollments?></strong></div><div class="stat">Pending<strong><?=$pending?></strong></div></div>
<div class="card"><h3>System Overview</h3><p>Register students, manage subjects, create enrollments, and approve enrollment records from the menu above.</p></div></main></body></html>