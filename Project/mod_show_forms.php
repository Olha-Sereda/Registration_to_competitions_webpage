<?php
include_once("param_manager.php");


function show_forms(){
?>
<!--log in form-->
<div id="id01" class="modal">

        <form class="modal-content animate" action="?module=logged-in" method="post">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close"
                    title="Close Modal">&times;</span>
            </div>

            <div class="container">
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="uname" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>

                <button type="submit">Sign in</button>
                <label>
                    <input type="checkbox" checked="checked" name="remember"> Remember me
                </label>
            </div>

            <div class="container" style="background-color:#f1f1f1">
                <button type="button" onclick="document.getElementById('id01').style.display='none'"
                    class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
        </form>
    </div>
    <!--sign up form-->
    <div id="id02" class="modal">
        <form class="modal-content animate" action="/action_page.php" method="post">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id02').style.display='none'" class="close"
                    title="Close Modal">&times;</span>
            </div>

            <div class="container">
                <!--   -->
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="uname" required>

                <label for="email"><b>E-mail</b></label>
                <input type="text" placeholder="Enter e-mail" name="email" required>

                <label for="birthdate"><b>Birthdate</b></label>
                <input type="text" placeholder="Enter birthdate" name="birthdate" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" required>

                <label for="phone_number"><b>Phone number</b></label>
                <input type="text" placeholder="Enter your phone number" name="phone_number" required>

                <select name="gender">
                    <option value="f">female</option>
                    <option value="m">male</option>
                </select><br>

                <button type="submit">Sign up</button>
                <label>
                    <input type="checkbox" checked="checked" name="remember"> Remember me
                </label>
            </div>

            <div class="container" style="background-color:#f1f1f1">
                <button type="button" onclick="document.getElementById('id02').style.display='none'"
                    class="cancelbtn">Cancel</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
        </form>
    </div>

<?php
}

function show_reg_form($dbconn){
    if (!get_session_param('logged')) return;
     $wynik=mysqli_query($dbconn, "SELECT name, surname, email FROM users WHERE user_id='".get_session_param('user_id')."'");

    $row = mysqli_fetch_array($wynik);
?>
    <!--registration to competitions form-->
  <div id="id03" class="modal">
    
    <form id="register-form" class="modal-content animate" action="" method="post">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
        
      </div>
  
      <div class="container">
        <label for="namesurname"><b>Name Surname</b></label>
        <input type="text" readonly disabled placeholder="Enter name and surname" name="namesurname" required value="<?php echo $row['name']." ".$row['surname']; ?> ">

        <label for="email"><b>E-mail</b></label>
        <input type="email" placeholder="Enter your E-mail" name="email" required value="<?php echo $row['email']; ?>">
        <label for="chip_id"><b>Chip Number</b></label>
        <input type="text" placeholder="Chip Number" name="chip_id" required value="">
        <label for="category"><b>Category</b></label>
        <select class="category" name="category">

        <?php
        //making drop down box for categories
        $cat_result  = mysqli_query($dbconn,"SELECT cat_id, category_name from categories");
        //Show kategories for particular competition
        while($cat_row=mysqli_fetch_array($cat_result)){
            echo "<option value='".$cat_row['cat_id']."'> ".$cat_row['category_name']." </option>";
        }
        ?>
          
            </select>
        <button class="submitbutton"type="submit">Register</button>
      </div>
  
      <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>   
      </div>
    </form>
  </div>

<?php

}



?>