// console.log("This is a test to see if this is set up properly")

$(document).ready(function() {
	$('#button').click(function() {
   		var toAdd = $('input[name=entryfield]').val();
   		$(".list").append("<div class='item'>" + toAdd + "</div>");
	});
	$(document).on('dblclick', '.item', function() {
    $(this).remove();
	});
});