//AJAX calls

$('#teamClick').on('click', function()
{
	var price;
	//var name = $('option:selected').val();
	$.post('drivers.php', {price: price}, function(data)
	{
		alert(data);
		var dropdown = data;
		var option = '';
		alert(dropdown);
		for (i =0; i< data.length; i++)
		{
			option += '<option value="' + dropdown[i] + '">' + dropdown[i] + '</option>';
			
		}
		$('#driver1DropDown').append(option);

	});
});

$