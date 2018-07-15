<?php
include_once 'dbConnection.php';
session_start();
$email=$_SESSION['email'];

//delete feedback
if(isset($_SESSION['key'])){
if(@$_GET['fdid'] && $_SESSION['key']=='sunny7785068889') {
$id=@$_GET['fdid'];
$result = mysqli_query($con,"DELETE FROM feedback WHERE id='$id' ") or die('Error');
header("location:dash.php?q=3");
}
}

//delete user
if(isset($_SESSION['key'])){
if(@$_GET['demail'] && $_SESSION['key']=='sunny7785068889') {
$demail=@$_GET['demail'];
$r1 = mysqli_query($con,"DELETE FROM rank WHERE email='$demail' ") or die('Error');
$r2 = mysqli_query($con,"DELETE FROM history WHERE email='$demail' ") or die('Error');
$result = mysqli_query($con,"DELETE FROM user WHERE email='$demail' ") or die('Error');
header("location:dash.php?q=1");
}
}


//remove quiz ACN
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'rmquizacn' && $_SESSION['key']=='sunny7785068889') {
$question_number = @$_GET['question_number'];
$result = mysqli_query($con,"SELECT * FROM acn_questions WHERE question_number='$question_number' ") or die('Error');
while($row = mysqli_fetch_array($result)) {
$question_number = $row['question_number'];
$r1 = mysqli_query($con,"DELETE FROM acn_questions WHERE question_number='$question_number'") or die('Error');
$r2 = mysqli_query($con,"DELETE FROM acn_choices WHERE question_number='$question_number' ") or die('Error');
}
header("location:dash.php?q=3");
}
}

//remove quiz EPL
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'rmquizepl' && $_SESSION['key']=='sunny7785068889') {
$question_number = @$_GET['question_number'];
$result = mysqli_query($con,"SELECT * FROM epl_questions WHERE question_number='$question_number' ") or die('Error');
while($row = mysqli_fetch_array($result)) {
$question_number = $row['question_number'];
$r1 = mysqli_query($con,"DELETE FROM epl_questions WHERE question_number='$question_number'") or die('Error');
$r2 = mysqli_query($con,"DELETE FROM epl_choices WHERE question_number='$question_number' ") or die('Error');
}
header("location:dash.php?q=4");
}
}

//remove quiz FWC
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'rmquizfwc' && $_SESSION['key']=='sunny7785068889') {
$question_number = @$_GET['question_number'];
$result = mysqli_query($con,"SELECT * FROM fwc_questions WHERE question_number='$question_number' ") or die('Error');
while($row = mysqli_fetch_array($result)) {
$question_number = $row['question_number'];
$r1 = mysqli_query($con,"DELETE FROM fwc_questions WHERE question_number='$question_number'") or die('Error');
$r2 = mysqli_query($con,"DELETE FROM fwc_choices WHERE question_number='$question_number' ") or die('Error');
}
header("location:dash.php?q=5");
}
}

//remove quiz SLL
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'rmquizsll' && $_SESSION['key']=='sunny7785068889') {
$question_number = @$_GET['question_number'];
$result = mysqli_query($con,"SELECT * FROM sll_questions WHERE question_number='$question_number' ") or die('Error');
while($row = mysqli_fetch_array($result)) {
$question_number = $row['question_number'];
$r1 = mysqli_query($con,"DELETE FROM sll_questions WHERE question_number='$question_number'") or die('Error');
$r2 = mysqli_query($con,"DELETE FROM sll_choices WHERE question_number='$question_number' ") or die('Error');
}
header("location:dash.php?q=6");
}
}

//remove quiz UCL
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'rmquizucl' && $_SESSION['key']=='sunny7785068889') {
$question_number = @$_GET['question_number'];
$result = mysqli_query($con,"SELECT * FROM ucl_questions WHERE question_number='$question_number' ") or die('Error');
while($row = mysqli_fetch_array($result)) {
$question_number = $row['question_number'];
$r1 = mysqli_query($con,"DELETE FROM ucl_questions WHERE question_number='$question_number'") or die('Error');
$r2 = mysqli_query($con,"DELETE FROM ucl_choices WHERE question_number='$question_number' ") or die('Error');
}
header("location:dash.php?q=7");
}
}


?>



