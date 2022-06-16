<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="350px" Width="636px" ImageAlign="Right" />
            Select Your Bike :
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="16px" Width="205px">
            </asp:DropDownList>
            <br />
            <br />
            &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
           <p> Check The Price : <asp:Button ID="Button1" runat="server" Text="Price" OnClick="Button1_Click" />
               &nbsp;
               <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="140px"></asp:TextBox>
               </p>
        </div>
    </form>
</body>
</html>