$(document).ready(function () {
	$('#datetimepicker').datetimepicker({
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







