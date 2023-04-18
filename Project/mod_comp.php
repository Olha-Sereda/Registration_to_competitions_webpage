<?php
include_once("param_manager.php");

function mod_comp_show($dbconn){

    //get data  about registrations or just plain list of competitions
    if(get_session_param('logged') && get_session_param('user_id'))
        $query = "SELECT c.*, (SELECT COUNT(*) FROM registration r WHERE r.competition_id=c.competition_id AND r.user_id=".get_session_param('user_id').
                 " ) as cnt FROM competitions c";
                 else 
        $query = "SELECT * FROM  competitions";

    $wynik=mysqli_query($dbconn, $query) or die("blad w zapytaniuls");

      echo  '<div class="competitions_section" ><section  style="margin: auto;  width: 100%;">';

           echo '<article><table class="competitions">';
                echo '<tr>
                        <th style="background-color: rgb(235, 121, 14);">#</th>
                        <th style="background-color: rgb(235, 121, 14);">Date</th>
                        <th colspan="2" style="background-color: rgb(235, 121, 14);">Competitions</th>
                        <th colspan="2" style="background-color: rgb(235, 121, 14);">Registration date</th>

                    </tr>';
                    while($row=mysqli_fetch_array($wynik)){
                    echo '<tr>';
                        echo '<td>'.$row['competition_id'].'</td>';
                        echo '<td>'.$row['com_date'].'</td>';
                        echo '<td><img class="" src="images/logos/'.$row['image_path'].'"></imgsrc></td>';
                        echo '<td>'.$row['com_name'].'</td>';
                        echo '<td>'.$row['com_registration_deadline'].'</td>';
                        echo '<td>';
                        if(get_session_param('logged')) {
                            if($row['cnt']==0)
                                echo '<button class="buttonregister" onclick="ShowRegForm('.$row['competition_id'].')" style="width:auto;" href="#url">Register</button>';
                            else 
                                echo '<button disabled class="buttonregister" onclick="ShowRegForm('.$row['competition_id'].')" style="width:auto;" href="#url">Done</button>';
                        }
                        echo '<a class="buttonregister" href="?module=registrations&competition_id='.$row['competition_id'].'" style="width:auto;">Show List</a></td>';

                        echo "</tr>\n";
                    }
               echo '</table></article>';
        echo '</section></div>';
        ?>

<?php

}

function register_user_to_comp($dbconn, $competition_id, $user_id)
{
    mysqli_query($dbconn, "INSERT INTO registration(competition_id,user_id,cat_id,chip_id,email) ".
                                    " VALUES(".$competition_id.",".
                                    $user_id.",".
                                    get_param('category').",'".
                                    get_param('chip_id')."','".
                                    get_param('email').",')" );
};


?>
