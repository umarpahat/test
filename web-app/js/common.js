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