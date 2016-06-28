$(function()
	{
	console.log("Test");
	$("[name= 'ItemName']").keyup(function(){
		console.log("Keyup");
		$.ajax({
			url: 'search',
			type: 'POST',
			data: $(this).parent().serialize() 	,
			//data:post_data,
			dataType: 'text',
			success: function(data)
			{
				$('#search_result').html(data);
			// console.log(data);
		   	}
			
		}).fail(function(data){
			console.log(data);
		});

	});

 });
// $(document).ready ->
//   $("#ItemName").on("ajax:success", (e, data, status, xhr) ->
//     $("#ItemName").append xhr.responseText
//   ).on "ajax:error", (e, xhr, status, error) ->
//     $("#ItemName").append "<p>ERROR</p>"