$(function() {
	function sectionToggle(e) {
		var toggle = $(this);
		var associatedSection = $(this).siblings(toggle.attr('href'));
		if (associatedSection.hasClass('active')) {
			associatedSection.stop().slideUp(
					'slow',
					function() {
						associatedSection.removeClass('active');
						toggle.children('b').removeClass('caret').addClass(
								'right-caret');
					});
		} else {
			toggle.children('b').removeClass('right-caret').addClass('caret');
			associatedSection.stop().slideDown('slow', function() {
				associatedSection.addClass('active');
			});
		}
		e.preventDefault();
	}
	$(".section-toggle").click(sectionToggle);
});