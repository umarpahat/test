Cufon.replace('#navigation ul.big-nav li a, .tabs ul li a span', { fontFamily: 'lubalin_demi', hover: true });
Cufon.replace('.recept-btn', { fontFamily: 'lubalin_demi', hover: true });
Cufon.replace('.post h2, .box-title, .side-box h3.title ', { fontFamily: 'acaslon_regular' });
$( document ).ready( function(){
	$('.blink')
		.focus(function(){
			if ( $(this).attr('value') == $(this).attr('title') ) {
				$(this).attr({ 'value': '' })
			}
		})
		.blur(function(){
			if ( $(this).attr('value') == '' ) {
				$(this).attr({ 'value': $(this).attr('title') })
			}
		})
		
	$('#search-drop').selectbox();
	
	$('.video-slider').jcarousel({
		scroll: 1,
		vertical: true,
		wrap: 'both'
	})
	
	$('#tabbed-drop').selectbox();
	
	check();
	
	$('.tabbed-box .tabs li a').live('click', function () {
		var href = $(this).attr('href');
		var tabs_holder = $(this).parents('.tabbed-box:eq(0)').find('.tabs-content:eq(0)');
		$(this).parents('ul:eq(0)').find('a').removeClass('active');
		$(this).addClass('active');
		tabs_holder.find('.tab-cnt').hide();
		$(this).parents('.tabbed-box').find(href).show();
		Cufon.refresh();
		return false;
	})
	
	$('#small-gbox-drop').selectbox();
	
	if ($.browser.msie && $.browser.version.substr(0,1)<7) {
		DD_belatedPNG.fix('.banner, .gbox-top, .gbox-bottom, .gbox-cnt, .video-slider ul li a img ');
	};
	
}); 
function check() {
	var href = $('.tabbed-box .tabs li a.active').attr('href');
	$(href).show();
};