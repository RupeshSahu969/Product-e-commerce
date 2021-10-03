 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>WebSite</title>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  

      <link rel="stylesheet" href="css/Style.css">
    <style>
        footer {
    background-color:#f2f2f2;
    padding:25px;
}
.carousel-inner img {
    width:100%;
    min-height:200px;


}
        @media {
               .carousel-caption
{
    display:none;
}
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="jumbotron text-center" style="margin-bottom: 0;background-color:#DD5E89">
    
        <h1>Coderbaba Fashion</h1>
        <p>The Real indian Online Shopping Site</p>
    </div>
        
        <nav class="navbar navbar-expand-lg navbar-white" style="background-color:black"">
 <div class="container-fluid">
            <div class="navbar-header">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
    <span class="navbar-toggler-icon"></span>
      <span class="navbar-toggler-icon"></span>
      <span class="navbar-toggler-icon"></span>

  </button>

     <a class="navbar-brand" href="Default.aspx">CB Fashion</a>
                </div>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="nav navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="Default.aspx">Home </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Blog</a>
      </li>
         <li class="nav-item">
        <a class="nav-link" href="#">Product</a>
      </li>
    </ul>
      <ul class="nav navbar-nav navbar-right">
          <li><a href="Login.aspx">Login</a></li>
          &nbsp, &nbsp,
          <li><a href="Signup.aspx">Signup</a></li>

      </ul>
  </div>

     </div>
</nav> 

         <div class="container">
             <div class="row">
                 <div class="col-sm-8">
                     <div id="myCarousel" class="carousel slider" data-ride="carousel" >
                         <ol class="carousel-indicators">
                             <li data-target="#myCarousel" data-slider-to="0" class="active"></li>
                             <li data-target="#myCarousel" data-slider-to="1"></li>
                             <li data-target="#myCarousel" data-slider-to="2"></li>
                             <li data-target="#myCarousel" data-slider-to="3"></li>


                         </ol>
                         <div class="carousel-inner" role="listbox">
                             <div class="item active">
                                 <img src="https://images.shaadisaga.com/shaadisaga_production/photos/pictures/001/087/611/new_medium/the_ayso_inc3.jpg?1568358176"  alt="Image" style="width:400px"/>
                                 <div class="carousel-caption">
                                     <h3>
                                         Offer
                                     </h3>
                                     <p>Clothes</p>
                                      </div>
                                 </div>
                                 <div class="item">
                                 <img src="https://images.shaadisaga.com/shaadisaga_production/photos/pictures/001/087/611/new_medium/the_ayso_inc3.jpg?1568358176"  alt="Image" style="width:400px"/>
                                 <div class="carousel-caption">
                                     <h3>
                                         Offer
                                     </h3>
                                     <p>Clothes</p>
                                      </div>
                                 </div>
                                 
                             
                  

                             <a  class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                 <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" </span>
                                 <span class="sr-only">Previous</span>
                             </a>
                             <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                 <span class="glyphicon glyphicon-chevron-right" aria-hidden="true" </span>
                                     <span class="sr-only">Next</span>
                             </a>
                                    
                     </div>
                 </div>
                     </div>
                 <div class="col-sm-4">
                     
                     <div class="well">
                         <p>Some text...</p>
                     </div>
                     <div class="well">
                         <p>Upcoming Event...</p>
                     </div>
                     <div class="well">
                         <p>Visit Our Blog...</p>
                     </div>
                 </div>
             </div>
         </div>

        <div class="container text-center">
            <h3>Product</h3>
            <br>
            <div class="row">
                <div class="col-sm-3">
                    <img src="images/qq111.jpg" class="img-responsive" style="width:100%" alt="Image" />
                    <p>Current Project</p>
                </div>  
                  <div class="col-sm-3">
                    <img src="images/qq111.jpg" class="img-responsive" style="width:100%" alt="Image" />
                    <p> Project 2</p>
                </div>  
                <div class="col-sm-3">
                     
                     <div class="well">
                         <p>Some text...</p>
                     </div>
                     <div class="well">
                         <p>Visit Our Blog...</p>
                     </div>
                 </div>
                 <div class="col-sm-3">
                     
                     <div class="well">
                         <p>Some text...</p>
                     </div>
                     <div class="well">
                         <p>Visit Our Blog...</p>
                     </div>
                 </div>

            </div>
            <hr/>
        </div>

        <div class="container text-center">
            <h3>Our Partners</h3>
            <br />
            <div class="row">
                <div class="col-sm-2">
                    <img src="images/cureted-gift-img.jpg" class="img-responsive" style="width:100%" alt="Image" />
                    <p>Partner 1</p>
                </div>
                <div class="col-sm-2">
                    <img src="images/cureted-gift-img.jpg" class="img-responsive" style="width:100%" alt="Image" />
                    <p>Partner 2</p>
                </div>
                <div class="col-sm-2">
                    <img src="images/cureted-gift-img.jpg" class="img-responsive" style="width:100%" alt="Image" />
                    <p>Partner 3</p>
                </div>
                <div class="col-sm-2">
                    <img src="images/cureted-gift-img.jpg" class="img-responsive" style="width:100%" alt="Image" />
                    <p>Partner 4</p>
                </div>
                <div class="col-sm-2">
                    <img src="images/cureted-gift-img.jpg" class="img-responsive" style="width:100%" alt="Image" />
                    <p>Partner 5</p>
                </div>
                <div class="col-sm-2">
                    <img src="images/cureted-gift-img.jpg" class="img-responsive" style="width:100%" alt="Image" />
                    <p>Partner 6</p>
                </div>
               </div>
        </div><br />

        <footer class="container-fluid text-center jumbotron" style="background-color:#f2f2f2">
            <p>copyright@2021 www.rupesh.com</p>


        </footer>


    </form>
</body>
</html>
