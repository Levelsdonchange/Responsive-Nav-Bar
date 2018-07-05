<?php include 'database.php'; ?>
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
	//Creating random number s
	$rid = rand(1,3);
	//echo $rid;
?>
<?php

if ($rid == 1){

 
$query = "SELECT * FROM `questions`";
	//Get result
	$results = $mysqli->query($query) or die($mysqli->error.__LINE__);
	$total = $results->num_rows;
		
	/*
	*	Get Question
	*/
	$query = "SELECT * FROM `questions`";


    

	//Get result
	$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
	
	$question = $result->fetch_assoc();
	
	/*
	*	Get Choices
	*/
	$query = "SELECT * FROM `choices`";
	//Get results
	$choices = $mysqli->query($query) or die($mysqli->error.__LINE__);


}


if ($rid == 2){
    
    
$query = "SELECT * FROM `questions`";
	//Get result
	$results = $mysqli->query($query) or die($mysqli->error.__LINE__);
	$total = $results->num_rows;
		
	/*
	*	Get Question
	*/
	$query = "SELECT * FROM `questions`";


    

	//Get result
	$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
	
	$question = $result->fetch_assoc();
	
	/*
	*	Get Choices
	*/
	$query = "SELECT * FROM `choices`";
	//Get results
	$choices = $mysqli->query($query) or die($mysqli->error.__LINE__);



}

if ($rid == 3){
        
$query = "SELECT * FROM `questions`";
	//Get result
	$results = $mysqli->query($query) or die($mysqli->error.__LINE__);
	$total = $results->num_rows;
		
	/*
	*	Get Question
	*/
	$query = "SELECT * FROM `questions`";


    

	//Get result
	$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
	
	$question = $result->fetch_assoc();
	
	/*
	*	Get Choices
	*/
	$query = "SELECT * FROM `choices`";
	//Get results
	$choices = $mysqli->query($query) or die($mysqli->error.__LINE__);


}
     
?>            
        
	</main>
	<footer>
		<div class="container">
			Copyright &copy; 2018, Smart Soccer Quiz
		</div>
	</footer>
</body>
</html>















