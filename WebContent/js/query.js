$(function(){
	$('tbody tr').click(function() {
		window.open($(this).attr('data-ref'));
	});
	$('#study-query-form').submit(function(e){
		//do the ajax
		e.preventDefault();
	})
})