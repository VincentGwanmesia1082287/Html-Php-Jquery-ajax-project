<link rel="stylesheet" type="text/css" href="<?php echo $config_url; ?>/stylelogin.css">

<!-- Blurred background -->
<div class="bg"></div>

<div id="div_login">
    <form>
        <h1>Login</h1>
        <div id="message"></div>

        <div class="form-field">
            <input type="text" class="textbox" id="txt_uname" name="txt_uname" placeholder="Username" />
        </div>

        <div class="form-field">
            <input type="password" class="textbox" id="txt_pwd" name="txt_pwd" placeholder="Password"/>                         
        </div>

        <div class="form-field">
            <input type="button" value="Submit" name="but_submit" id="but_submit" />
        </div>
    </form>

</div>      
<script>
    jQuery(document).ready(function ($) {
        $(document).ready(function(){
        $("#but_submit").click(function(){
            var username = $("#txt_uname").val().trim();
            var password = $("#txt_pwd").val().trim();

            if( username != "" && password != "" ){
                $.ajax({
                    url:'query.php?q=checkUser',
                    type:'post',
                    data:{username:username,password:password},
                    success:function(response){
                        var msg = "";
                        if(response == 1){
                            window.location = "?page=frmklant";
                        }else{
                            msg = "Invalid username and password!";
                        }
                        $("#message").html(msg);
                    }
                });
            }
        });
    });
    });
</script>
