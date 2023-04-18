<?php
session_start();

function save_session_param($key, $value){
    $_SESSION[$key]=$value;
}

function remove_session_param($key){
    unset($_SESSION[$key]);
}

function get_session_param($key){
    if(isset($_SESSION[$key])) return $_SESSION[$key];
                else return false;
}

function get_param($key){
    if(isset($_POST[$key])) return $_POST[$key];
        else if(isset($_GET[$key])) return $_GET[$key];
                else return false;
}


?>