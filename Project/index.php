<?php
    include_once("param_manager.php");
    include_once("autoryzacja.php");
    include_once("mod_news.php");
    include_once("mod_comp.php");
    include_once("mod_registrations.php");
    include_once("mod_show_forms.php");
    include_once("mod_system.php");

    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname) 
    or die('Bład połączenia z serwerem: '.mysqli_connect_error($conn));
    mysqli_set_charset($conn,"utf8mb4");

//##########    
//check session and manage params before loading page - using for keepeng login user_id 
if(get_param('module')){
    switch (get_param('module'))
    {
        case "logged-in" : if( get_param('uname') && get_param('psw')) 
                                $user_logged = check_login_pair($conn, get_param('uname'), get_param('psw'));
                                if($user_logged) {
                                    save_session_param('user_id',$user_logged);
                                    save_session_param('logged',true);

                                }
                break;
        case "logged-out" : remove_session_param('logged');
                            remove_session_param('user_id');
                break;
    }
}
//###########
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="index.css" type="text/css">
    <link rel="stylesheet" href="index_mobile.css" type="text/css">
    <script src="index.js"></script>
    <link rel="icon" type="image/x-icon" href="images/favicon.ico">
</head>
<body onload="DrawIcon();">
<header>
        <canvas id="control-point-image" width="50" height="50"></canvas>

        <nav class="top-menu">
            <ul class="menu-main">

<?php

//print menu depends on chousen params
if(get_param('module')){
    switch (get_param('module'))
    {
        case "news" : echo "<li><a href='?module=news' class='current'>O-news </a></li> <li><a href='?module=competitions'>Competitions</a></li>";
                break;
        case "competitions" : echo "<li><a href='?module=news'>O-news </a></li> <li><a href='?module=competitions' class='current'>Competitions</a></li>";
                break;
        case "registrations" : echo "<li><a href='?module=news'>O-news </a></li> <li><a class='current' href='?module=competitions'>Competitions</a></li>";
                break;
        default: echo "<li><a href='?module=news' class='current'>O-news </a></li> <li><a href='?module=competitions'>Competitions</a></li>";
                break;
    }
} else {
    echo "<li><a href='?module=news' class='current'>O-news </a></li> <li><a href='?module=competitions'>Competitions</a></li>";
}


//show login menu if not logged or show "log out"
    if(!get_session_param('logged')){
        echo "      <li><a href=''>My profile </a><div class='sub-menu-1'>
                        <ul>
                            <li><a onclick=\"document.getElementById('id01').style.display='block'\" style=\"width:auto;\"  href=\"#url\">Sign in</a></li>
                            <li><a onclick=\"document.getElementById('id02').style.display='block'\" style=\"width:auto;\"  href=\"#url\">Sign up</a></li>
                        </ul>
                        </div></li>"; 
    } else {
        echo "              <li><a href='?module=logged-out'>Log out </a></li>"; 
    }
    
echo "</ul></nav></header>";


// print pages depending on module param
if(get_param('module')){
    switch (get_param('module'))
    {
        case "news" : mod_news_show($conn);
                break;
        case "competitions" :  if(get_param('do')=='register' && 
                                get_param('competition_id') &&
                                get_session_param('logged') &&
                                get_session_param('user_id')) register_user_to_comp($conn, get_param('competition_id'), get_session_param('user_id')); 
                                
                                mod_comp_show($conn);
                break;
        case "registrations" :  if(get_param('do')=='update') update_user_reg_data($conn);
                                if(get_param('do')=='remove'&&get_param('regid')) remove_user_reg_data($conn,get_param('regid'));
                                if(get_param('competition_id')) mod_reglist_show($conn,get_param('competition_id'));
                break;
        case "logged-in" :  mod_news_show($conn);
                break;
        case "logged-out" :  mod_news_show($conn);
                break;
        default: mod_news_show($conn);
                break;
    }
} else {
    mod_news_show($conn);
}

//print  hidden forms for login, register and sign up
show_forms();
show_reg_form($conn);

?>
    </body>
</html>

<?php

?>