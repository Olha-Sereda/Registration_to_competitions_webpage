//show registration form for the particular competition
function ShowRegForm(ID) {
    var reg_form = document.getElementById('id03');
    reg_form.style.display='block';
    var form = reg_form.getElementsByTagName("form");
    form[0].action="?module=competitions&do=register&competition_id="+ID;
}

function ShowFullPostByID(postName) {
   var post = document.getElementById(postName)
   var spanTags = post.getElementsByTagName("span");
  for (var i = 0; i < spanTags.length; i++) {
    if(spanTags[i].innerHTML === "...")
    {
      spanTags[i].style.display = "none";
    } else {
      spanTags[i].style.display = "inline";
    }
  }
  post.getElementsByTagName("label")[0].style.display = "none";
}


function SearchNewsByDate(day,month,year)
{
  var search_date = day+" "+month+" "+year;
  var tableTags = document.getElementsByTagName("table");
  for (var i = 0; i < tableTags.length; i++) 
  {
    if(tableTags[i].id.substring(0,9)==="post-news") {
      if(tableTags[i].getElementsByTagName('th')[0].innerHTML===search_date)
      {
        tableTags[i].style.display="";
      } else {
        tableTags[i].style.display="none";
      }
      
    }
  }
}

function ResetSearchFilter()
{
  var tableTags = document.getElementsByTagName("table");
  for (var i = 0; i < tableTags.length; i++) 
  {
    if(tableTags[i].id.substring(0,9)==="post-news") {
        tableTags[i].style.display="";
      }
  }
}

//drawes conrol point with canvas
function DrawIcon()
{
  var canvas = document.getElementById('control-point-image');

  if (canvas.getContext)
  {
    // drawing control point

          var cp = canvas.getContext("2d");

          cp.fillStyle = "rgb(255,255,255)";
          cp.fillRect (0, 0, 50, 50);

          cp.fillStyle = "rgb(255,5,5)";
          cp.beginPath();
          cp.moveTo(0,50);
          cp.lineTo(50,0);
          cp.lineTo(50,50);
          cp.lineTo(0,50);
          cp.fill();
    } else {
      // canvas-unsupported, hide the canvas
      canvas.style.display="none";
    }
    
}

$(document).ready(function(){
  $("#ButtonHidePoint").click(function(){
    $("#cookies").fadeOut();
    
  });
});
