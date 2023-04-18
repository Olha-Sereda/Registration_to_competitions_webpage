<?php
function mod_news_show($dbconn)
{
        $month = array(1=>"January", 2=>"February", 3=>"March", 4=>"April", 5=>"May", 6=>"June", 7=>"July", 8=>"August", 9=>"September", 10=>"October", 11=>"November", 12=>"December" );

?>

<main>
    <div class="filters">
        <aside>
        <form class="filtry1" name="search-form" method="post" acton="?module=news">
                    <fieldset>
                        <legend class="filtry-legend">filters</legend>
                        <p><select name="search-by-day">
<?php
for($i=1;$i<32;$i++) {
    $selected="";
    if(get_param('search-by-day')!==false) 
        if(get_param('search-by-day')==$i) $selected="selected"; 
    echo ("                         <option ".$selected." value=".$i.">".$i."</option>\n");
}
?>
                            </select>
                            <select name="search-by-month">
<?php
for($i=1;$i<13;$i++) {
    $selected="";
    if(get_param('search-by-month')!==false) 
        if(get_param('search-by-month')==$i) $selected="selected"; 
    echo ("                         <option ".$selected." value=".$i.">".$month[$i]."</option>\n");
}
?>   
                            </select>
                            <select name="search-by-year">
<?php

for($i=date('Y');$i>date('Y')-5;$i--) {
    $selected="";
    if(get_param('search-by-year')!==false) 
        if(get_param('search-by-year')==$i) $selected="selected"; 
    echo ("                         <option ".$selected." value=".$i.">".$i."</option>\n");
}
?>   
                            </select>
                            <input type="submit" value="Search Date">
                        </p>
                    </fieldset>
                </form>
                 <form class="filtry1" name="search-form-text" method="post" acton="?module=news">
                    <fieldset>
                        <input type="text" name="searchphrase">
                        <input type="submit" value="Search Text">
                    </fieldset>
                </form>
            </aside>
        </div>
        <div class="news">
            <section>
<?php

    
  //when day, month, year are selected add it to filter
    $filter = "";
    if(get_param('search-by-year') && get_param('search-by-month') &&get_param('search-by-day')){
        $filter = " WHERE news_date = date('".get_param('search-by-year')."-".get_param('search-by-month')."-".get_param('search-by-day')."')";
    }
  //searching news by word. To avoid sql injection we use function mysqli_real_escape_string()
    if(get_param('searchphrase')){
        $filter = " WHERE news_text like '%".mysqli_real_escape_string($dbconn,get_param('searchphrase'))."%'";
    }
    //adding filter to sql command
    $wynik=mysqli_query($dbconn, "SELECT * FROM news".$filter)
            or die("blad w zapytaniuls");


    
    //showing news in while circle
    while($row=mysqli_fetch_array($wynik)){
        echo "<article><table id=\"post-news-".$row['news_id']."\" class='news'>\n";
        echo "<tr><th>".$row['news_date']."</th>\n";
        echo "<th class='title'>".$row['news_name']."</th></tr>\n";
	    echo "<tr><td  colspan='2'><img class='imgnews' src='".$row['image_path']."'></imgsrc>".$row['news_text']."\n"
        ."<label onclick=\"ShowFullPostByID('post-news-".$row['news_id']."')\">read more</label>"
        ."</td><tr>\n";
        echo "</table></article>\n";
    }
    
    ?>
    </section>
        </div>
    </main>

<?php
}
?>