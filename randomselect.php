<?php session_start(); ?>
<html>
	<head>
	<meta charset="utf-8" />
	<title>Smart Soccer Quiz</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
    <script type="text/javascript">
        
    </script>
</head>
<body onload="timeout()">
	<header>
		<div class="container">
			<h1>Smart Soccer Quiz <div id="time" style="float:right">timeout</div></h1>
		</div>
	</header>
	<main>
<?php
//all the variables defined here are accessible in all the files that include this one
$con= new mysqli('localhost','root','','quizzer')or die("Could not connect to mysql".mysqli_error($con));

$q=mysqli_query($con,"SELECT * FROM questions ORDER BY rand() LIMIT 1 " );
echo '<div class="panel" style="margin:5%">';
while($row=mysqli_fetch_array($q) )
{
$text=$row['text'];
$question_number=$row['question_number'];
echo '<b>'.$text.'</b><br>';
}
$q=mysqli_query($con,"SELECT * FROM choices WHERE question_number='$question_number'" );
echo '<form method="POST"  class="form-horizontal">
<br />';

while($row=mysqli_fetch_array($q) )
{
$text=$row['text'];
$question_number=$row['question_number'];
echo'<input type="radio" name="ans" value="'.$question_number.'">'.$text.'<br />';
}
echo'<br /><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>Submit</button></form></div>';
		
		         
?>    
	</main>
	<footer>
		<div class="container">
			Copyright &copy; 2018, Smart Soccer Quiz
		</div>
	</footer>
</body>
</html>















