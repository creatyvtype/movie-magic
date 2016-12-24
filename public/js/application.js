$(document).ready(function() {
	searchChangeHandler()
});


function searchChangeHandler() {
	$('.search-bar').on('input', function(event){
		showLoader()

		var data = {
			search_query: event.target.value
		}

		$.ajax({
			method: 'POST',
			url: '/movies/query',
			data: data
		})
		.done(function(response){
			$('#main').html(response)
			hideLoader()
		})
		.fail(function(response){
			hideLoader()
			console.log("failed to get resource")
			console.log(response)
		})

	})
}

function showLoader() {
	$('.loader').show()
}

function hideLoader() {
	$('.loader').hide()
}