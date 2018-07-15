<?php include 'dbConnection.php'; ?>
<?php    

//remove quiz
//$question_number=$row['question_number'];
$q = mysqli_query($con,"SELECT * FROM acn_questions") or die('Error');
echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
<tr><td><b>Question Number</b></td><td><b>Question</b></td><td></td><td></td></tr>';
while($row=mysqli_fetch_array($q) )
{
$question_number=$row['question_number'];
$text=$row['text'];
echo '<td>'.$question_number.'<td>'.$text.'</td><b><a href="#" class="pull-right btn sub1" style="margin:0px;background:red"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Remove</b></span></a></b>';    
}
echo '</table></div></div>';



/*while($row = mysqli_fetch_array($result)) {
	$qid = $row['qid'];
$r1 = mysqli_query($con,"DELETE FROM options WHERE qid='$qid'") or die('Error');
$r2 = mysqli_query($con,"DELETE FROM answer WHERE qid='$qid' ") or die('Error');
}
$r3 = mysqli_query($con,"DELETE FROM questions WHERE eid='$eid' ") or die('Error');
$r4 = mysqli_query($con,"DELETE FROM quiz WHERE eid='$eid' ") or die('Error');
$r4 = mysqli_query($con,"DELETE FROM history WHERE eid='$eid' ") or die('Error');

header("location:dash.php?q=5");
}
}/**/    
?> 