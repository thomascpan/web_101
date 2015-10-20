function addSquare(squarePerSide) {
	if (typeof(squarePerSide) === "undefined") {
		squarePerSide=prompt("How many squares per side do you want?");
	}
	for (i=0; i<squarePerSide*squarePerSide; i++) {
		$('.container').append('<div></div>');
	}
	$('.container > div').addClass('square');
	$('.square').css({'width': 100/squarePerSide+'%'});
	var squareWidth = $('.square').width();
	$('.square').css({'height': squareWidth+'px'});
};

function removeSquare() {
	$('.square').remove();
};

$(document).ready(function() {
	
	addSquare(16, 16);
	$('.container').on('mouseenter', '.square', function() {
		$(this).addClass('drawn');
	});
	$('.container').on('click', '#new', function() {
		$('.square').removeClass('drawn');
		removeSquare();
		addSquare();
	});

});	