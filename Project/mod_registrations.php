<?php
include_once("param_manager.php");

function mod_reglist_show($dbconn, $comp_id){

    ?>
    <main>
        <div class="competitions_section"><section  style="margin: auto;  width: 100%;">

            <article>
                <table class="registration">
                    <tr>
                        <th>Date</th>
                        <th>Competitions</th>
                        <th>Description</th>
                    </tr>

    <?php
    //show data about particular competition in the table
    $cid = (int)$comp_id;
    $reg_result  = mysqli_query($dbconn,"SELECT competition_id, com_date, com_name, com_desc from competitions WHERE competition_id=".$cid);
    $reg_row=mysqli_fetch_array($reg_result);
    echo "<tr class=\"description\">
                <td>".$reg_row['com_date']."</td>
                <td>".$reg_row['com_name']."</td>
                <td>".$reg_row['com_desc']."</td>
          </tr>";

    //get list of all categories registered on this competition
        $cat_result  = mysqli_query($dbconn,"SELECT r.cat_id, c.category_name from registration r ". 
                                            "LEFT JOIN categories c ON r.cat_id=c.cat_id ". 
                                            "WHERE r.competition_id=".$reg_row['competition_id']." GROUP BY r.cat_id ");
        //Show categories for particular competition
        while($cat_row=mysqli_fetch_array($cat_result)){
                echo "<tr><td colspan='3' class='list_group'>Group: ". $cat_row['category_name'] ."</td></tr>\n";
                //get every participant for particular category in particular competition
                $list_result = mysqli_query($dbconn,"SELECT r.reg_id, r.cat_id, u.user_id, u.name, u.surname, YEAR(u.date_of_birth) as brth_year, r.chip_id ".
                            "from registration r  LEFT JOIN users u ON r.user_id=u.user_id WHERE r.competition_id=".
                            $reg_row['competition_id'] . " AND r.cat_id=".$cat_row['cat_id']);
                echo "<tr><td colspan='3'>
                        <table class='competitions'>
                            <tr><th style='width: auto'>Person</th><th style='width: 20%'>Chip №</th>".
                               "<th style='width: 10%'>Birth year</th><th style='width: 10%'>Action</th></tr>";        
                //show users in category for competition          
                while($list_row=mysqli_fetch_array($list_result))
                {
                    echo "<tr><td>".$list_row['name']."  ".$list_row['surname']."</td>";
                    
                    //Show form for update chip or plain text
                    if(get_param('do')=='edit'&&get_param('regid')==$list_row['reg_id']) {
                           echo "<td><form action='?module=registrations&do=update&competition_id=".$reg_row['competition_id']."' method='POST'>".
                           "<input class='chip' type='text' name='new_chip_id' value='".$list_row['chip_id']."'>".
                           "<input type='hidden' name='regid' value='".$list_row['reg_id']."'>".
                           "<input type='submit' value='Update' name='sbut_chip'></form></td>"; 
                    } else echo "<td>".$list_row['chip_id']."</td>";

                    //only owner user can edit or remove registrations
                    if($list_row['user_id']==get_session_param('user_id'))
                        echo     "<td>".$list_row['brth_year']."</td>".
     /* link remove */           "<td><a class='buttonaction' href='?module=registrations&do=remove&regid=".$list_row['reg_id']."&competition_id=".$reg_row['competition_id']."'>Remove</a> ".
     /* link edit  */            "<a class='buttonaction' href='?module=registrations&do=edit&competition_id=".$reg_row['competition_id']."&regid=".$list_row['reg_id']."'>Edit</a></td></tr>\n";
                    else 
                        echo     "<td>".$list_row['brth_year']."</td><td></td></tr>\n";
                }
                echo "</table>
                    </td></tr>";
        }

?>
        </table>
    </article>
    </section>
</div>
    </main>

<?php

}

//edit chip data in registration
function update_user_reg_data($dbconn){
    mysqli_query($dbconn, "UPDATE registration SET chip_id='".get_param('new_chip_id')."' WHERE reg_id='".get_param('regid')."'" );
}
//remove registration
function remove_user_reg_data($dbconn, $regid){
    mysqli_query($dbconn,"DELETE FROM registration where reg_id='".$regid."'");
}

?>
