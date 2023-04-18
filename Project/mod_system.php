<?php
//check if login and password are correct
function check_login_pair($dbconn, $login_name, $password){
    $wynik=mysqli_query($dbconn, "SELECT user_id FROM users WHERE username='".$login_name."' and password=md5('".$password."')");

    $row = mysqli_fetch_array($wynik);
    //if login was successful returnes user id, else false
    if(isset($row['user_id'])) return $row['user_id']; else return false;
}
?>