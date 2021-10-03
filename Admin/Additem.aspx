<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Additem.aspx.cs" Inherits="Admin_Additem" %>

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
    <div class="row">
    <div class="col-sm-2"></div>
        <div class="col-sm-8">
            
                <div class="from-group">
                <label>Item Name</label>
                <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
            <div class="from-group">
                <label>Description</label>
                <asp:TextBox ID="txtDesc" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
            <div class="from-group">
                <label>Price</label>
                <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                 </div>
            <div class="from-group">
                <label>Quantity</label>
                <asp:TextBox ID="txtQty" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                 </div><br />
            <div class="from-group">
                <label>Image</label>
                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                 </div>
            <br />
            <div class="from-group">
                <label>Image1</label>
                <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" />
                 &nbsp;</div>
            <br />
            <div class="from-group">
                <label>Image2</label>
                <asp:FileUpload ID="FileUpload3" CssClass="form-control" runat="server" />
                 </div>
            <br />
            <div class="from-group">
                <label>Size</label>
                <asp:DropDownList ID="ddlSize" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Option</asp:ListItem>
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                    <asp:ListItem>Smaller</asp:ListItem>
                    <asp:ListItem>xLarge</asp:ListItem>
                    <asp:ListItem>xxLarge</asp:ListItem>
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem Value="07">08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    
                </asp:DropDownList>
                
                 </div>
             <div class="from-group">
                <label>Category</label>

                 <asp:DropDownList ID="ddlCategory" CssClass="form-control"  runat="server" DataSourceID="SqlDataSource1" DataTextField="Cname" DataValueField="Cname">
                     <asp:ListItem>Patanjli</asp:ListItem>
                     <asp:ListItem>Tshart</asp:ListItem>
                     <asp:ListItem>laycra</asp:ListItem>
                     <asp:ListItem>vivo</asp:ListItem>
                     <asp:ListItem>oppo</asp:ListItem>
                     <asp:ListItem>realme</asp:ListItem>
                     <asp:ListItem>samsunsg</asp:ListItem>
                     <asp:ListItem></asp:ListItem>
                 </asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [Cname], [CID] FROM [Table2]"></asp:SqlDataSource>
                 </div>
            <br />

            <div class="from-group">
                
                <asp:Button ID="btnAddItem" CssClass="btn btn-success"  runat="server" Text="ADD Item" />
                 </div>
        </div>


        <div class="col-sm-2"></div>
    </div>



        <div class="row">
            <div class="col-sm-12">
                <div class="table">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IID" DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="IID" HeaderText="IID" InsertVisible="False" ReadOnly="True" SortExpression="IID" />
                            <asp:BoundField DataField="iname" HeaderText="iname" SortExpression="iname" />
                            <asp:BoundField DataField="detail" HeaderText="detail" SortExpression="detail" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
                            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                            <asp:BoundField DataField="imge1" HeaderText="imge1" SortExpression="imge1" />
                            <asp:BoundField DataField="entrydate" HeaderText="entrydate" SortExpression="entrydate" />
                            <asp:BoundField DataField="image2" HeaderText="image2" SortExpression="image2" />
                            <asp:BoundField DataField="image3" HeaderText="image3" SortExpression="image3" />
                        </Columns>
                        

                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" DeleteCommand="DELETE FROM [Table3] WHERE [IID] = ?" InsertCommand="INSERT INTO [Table3] ([IID], [iname], [detail], [price], [size], [cname], [imge1], [entrydate], [image2], [image3]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT [IID], [iname], [detail], [price], [size], [cname], [imge1], [entrydate], [image2], [image3] FROM [Table3]" UpdateCommand="UPDATE [Table3] SET [iname] = ?, [detail] = ?, [price] = ?, [size] = ?, [cname] = ?, [imge1] = ?, [entrydate] = ?, [image2] = ?, [image3] = ? WHERE [IID] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="IID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="IID" Type="Int32" />
                            <asp:Parameter Name="iname" Type="String" />
                            <asp:Parameter Name="detail" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="size" Type="String" />
                            <asp:Parameter Name="cname" Type="String" />
                            <asp:Parameter Name="imge1" Type="String" />
                            <asp:Parameter Name="entrydate" Type="DateTime" />
                            <asp:Parameter Name="image2" Type="String" />
                            <asp:Parameter Name="image3" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="iname" Type="String" />
                            <asp:Parameter Name="detail" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="size" Type="String" />
                            <asp:Parameter Name="cname" Type="String" />
                            <asp:Parameter Name="imge1" Type="String" />
                            <asp:Parameter Name="entrydate" Type="DateTime" />
                            <asp:Parameter Name="image2" Type="String" />
                            <asp:Parameter Name="image3" Type="String" />
                            <asp:Parameter Name="IID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [Table3]"></asp:SqlDataSource>

                </div>
            </div>
        </div>

    </form>
</body>
</html>
