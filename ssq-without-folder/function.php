
    
<script>
function countDown(secs,elem) {
	var element = document.getElementById(elem);
	element.innerHTML = "The Quiz will be submitted automatically in  "+secs+" seconds";
	if(secs < 1) {
		clearTimeout(timer);
		element.innerHTML = '<h2>Countdown Complete!</h2>';
		element.innerHTML += '<a href="#">Click here now</a>';
	}
	secs--;
	var timer = setTimeout('countDown('+secs+',"'+elem+'")',1000);
}
</script>
<div id="status"></div>
<script>countDown(20,"status");</script>
