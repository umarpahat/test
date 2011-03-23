jQuery(function(){
    jQuery('.formPanel').hide();
        jQuery('#singUp, #newUser').click(function(){
        jQuery('#register').show();
        jQuery('#forgotpassword').hide();
    });
    jQuery('#forgot').click(function(){
        jQuery('#register').hide();
        jQuery('#forgotpassword').show();
        return false
    })
});
jQuery(function(){
jQuery('a').click(function(event){
    alert('Thanks for your visiting.');
    event.preventDefault();

});
    jQuery('a').addClass('umar');
    jQuery('a').click(function(event){
        event.preventDefault();
        jQuery(this).hide('slow')
    })
});
$.get('home', function(){
    mycallback(param1,param2);
});