$(document).ready(function () {
	$('#datetimepicker').datetimepicker({
		allowInputToggle: true,
		format: 'DD.MM.YYYY',
		minDate: 'now',
		stepping: 15
	});
	$('#datetimepicker2').datetimepicker({
		allowInputToggle: true,
		format: 'DD.MM.YYYY',
		minDate: 'now',
		stepping: 15
	});

	$('#datetimepickertime').datetimepicker({
		format: 'HH:mm',
		minDate: 'now',
		stepping: 15
	});
});







