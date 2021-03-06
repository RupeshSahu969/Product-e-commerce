  <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
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
        
        <nav class="navbar navbar-expand-lg navbar-white" style="background-color:black">
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
          <li><a href="Login.aspx">Signup</a></li>
      </ul>
  </div>
  </div>
</nav> 
    
        <div class="container">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="panel panel-primary" style="margin:10px">
                    <div class="panel-heading">Register<br />
                        <br />
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Name:</label>
                                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>SurName:</label>
                                    <asp:TextBox ID="txtSurname" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Address:</label>
                                    <asp:TextBox ID="txtAdress" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>City:</label>
                                    <asp:TextBox ID="txtCity" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>PinCode:</label>
                                    <asp:TextBox ID="txtPincode" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Gender:</label>
                                    <asp:DropDownList ID="DropDownList1"  CssClass="form-control" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                        <asp:ListItem>Other</asp:ListItem>
                                    </asp:DropDownList>
                                    

                                </div>
                                 <div class="form-group">
                                    <label>Email:</label>
                                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Mobile No:</label>
                                    <asp:TextBox ID="txtMobile" CssClass="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Password:</label>
                                    <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>Created Date:</label>
                                    <asp:TextBox ID="txtDate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnSignup" CssClass="btn btn-success" runat ="server" Text="Registraion" OnClick="btnSignup_Click" />
                                    <asp:Button ID="btnCancel" CssClass="btn btn-success" runat ="server" Text="Cancel" BackColor="Red" />
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="panel-footer">

                        <asp:Label ID="Label1" runat="server"></asp:Label>

                    </div>
                </div>     
            </div>
            <div class="col-sm-3"></div>

        </div>
         <footer class="container-fluid text-center jumbotron" style="background-color:#f2f2f2">
            <p>copyright@2021 www.rupesh.com</p>


        </footer>

    </form>
</body>
</html>
