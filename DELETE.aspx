<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DELETE.aspx.cs" Inherits="CRUDOPERATION_IN_WEBAPPLICATION.DELETE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DELETE</title>
     <style type="text/css">
    body {
      background-image: url('delete2.jpg');
      background-repeat: no-repeat;
      background-size: cover;
       background-size: 100% 100%;
      background-attachment: fixed;
      margin: 0;
      padding: 0;
    }
    h1{
        text-align:center;
        color:hotpink;
    }
    p{
        color:deeppink;
    }
      a{
        color:lawngreen;
    }
        </style>
</head>
<body>
    <h1>WOW, THAT'S GREAT NOW U CAN DO DELETE OPERATION HERE.........!</h1>
     <a href="HOME.aspx">HOME</a> ||  <a href="INSERT.aspx"> INSERT</a> ||  <a href="UPDATE.aspx">UPDATE</a>
    <form id="form1" runat="server">
        <div>
            <p>PLEASE MENTION THE TABLE NAME</p>
            <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
            <p>PLEASE TELL ME WHICH ROW U WANT TO DELETE FROM THE TABLE</p>
             <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
            
        </div>
        <br />
         <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="delete" />
        <br /> <br />
        <asp:Label ID="ResultLabel" runat="server" ForeColor="aqua"></asp:Label>

    </form>
</body>
</html>
