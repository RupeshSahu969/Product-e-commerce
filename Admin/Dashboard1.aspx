<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard1.aspx.cs" Inherits="Admin_Dashboard1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  


    <style>
        * {
            box-sizing:border-box;
        }
        body {
            font-family:cursive,Helvetica, sans-serif;
        }
        header {
            margin-top:10px;
            background-color:#666;
            padding:50px;
            text-align:center;
            color:white;
        }
        nav {
            float:left;
            width:20%;

            height:300px;
            background:#ccc;
            padding:20px;
        }
            nav ul {
                list-style-type:none;
                padding:0;
                display:block;
            }
                nav ul li:hover {
                    background-color:seagreen;
                    color:white;
                    padding:11px;
                }
        article {
            float:left;
            width:20%;
            padding:20px;
            background-color:#f1f1f1;
            height:300px; 
        }
        section::after {
            content:"";
            display:table;
            clear:both;
        }
        footer {
            background-color:#777;
            padding:40px;
            text-align:center;
            color:white;
        }


        @media {

            nav-down,article
        {
                width:100%;
                height:auto;
        }
        }
        




    </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>
    

         <header>The Fashin</header>
        <section>
            <nav>
                <ul>

                    <li><a href="AddCategory.aspx">Category</a></li>
                    <li><a href="AddItem.aspx">Item</a></li>
                    <li><a href="#">Quantity</a></li>
                    <li><a href="#">Order</a></li>
                    <li><a href="#">View Payment</a></li>
                    <li><a href="#">Reports</a></li>
                    <li><a href="#">Change Password</a></li>
                    <li><a href="#">Feedback</a></li>
                    <li><a href="#">Logout</a></li>
                    

                </ul>

            </nav>

            <p>This is Dashboard  Page </p>
                <p>Fashin store</p>

            <article>
                
                

            </article>

        </section>

        <footer>
             <p>copyright@2021 www.rupesh.com</p>
        </footer>



    </div>
    </form>
</body>
</html>
