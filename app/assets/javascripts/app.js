
$(document).ready(function(){

	console.log("Test");

	$("[name= 'ItemName']").on('input', function(){

		console.log("Keyup");
		// var post_data = {
		// 	utf8: $("[name='utf8']").val(), 
		// 	authenticity_token: $("[name='authenticity_token']").val(),
		// 	ItemName: $(this).val(),
			
		// }

		console.log($(this).parent().attr('data-id'))
		
		$.ajax({
			url: '../search',
			type: 'POST',
			data: $(this).parent().serialize() 	,
			//data:post_data,
			dataType: 'text',
			//encode: true,

		}) .done(function(data){

		
			$('#search_result').html(data);


			

		}) .fail(function(data){

			console.log(data);

		});

	});

	window.test = function() {

		$.ajax({
			url:'http://localhost:3000/item/display',
			type: 'GET',
			dataType: 'html'
		}).done(function(data) {
			console.log(data);
		}).fail(function(data) {
			console.log(data);
		})
	}
 });
// $(document).ready ->
//   $("#ItemName").on("ajax:success", (e, data, status, xhr) ->
//     $("#ItemName").append xhr.responseText
//   ).on "ajax:error", (e, xhr, status, error) ->
//     $("#ItemName").append "<p>ERROR</p>"