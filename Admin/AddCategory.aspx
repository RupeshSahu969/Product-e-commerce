<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="Admin_AddCategory" %>

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
  



</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    
        <div class="row">
            <div class="col-sm-4">  </div>
            <div class="col-sm-4">
                <div class="form-group">
                    <label>Add Category</label>
                    <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnAdd" CssClass="btn btn-success btn-lg" runat="server" Text="Add" OnClick="btnAdd_Click" />

                </div>
            </div>
            <div class="col-sm-4"> </div>
        </div>

    

        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <div class="form-group">
                    <asp:GridView ID="GridView1"   CssClass="table table-hover"  runat="server" AutoGenerateColumns="False" DataKeyNames="CID" DataSourceID="SqlDataSource3" AllowPaging="True">
                        
                        <HeaderStyle BackColor="Yellow"  ForeColor="Black"/>

                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
                            <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                        </Columns>

                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM [Table2] WHERE [CID] = ?" InsertCommand="INSERT INTO [Table2] ([CID], [Cname]) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Table2]" UpdateCommand="UPDATE [Table2] SET [Cname] = ? WHERE [CID] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="CID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CID" Type="Int32" />
                            <asp:Parameter Name="Cname" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Cname" Type="String" />
                            <asp:Parameter Name="CID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [CID], [Cname] FROM [Table2]"></asp:SqlDataSource>
                </div>
            </div>

            <div class="col-sm-2"></div>
        </div>
        </div>
    </form>
</body>
</html>
