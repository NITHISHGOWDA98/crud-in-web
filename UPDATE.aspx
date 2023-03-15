<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UPDATE.aspx.cs" Inherits="CRUDOPERATION_IN_WEBAPPLICATION.UPDATE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UPDATE</title>
     <style type="text/css">
    body {
      background-image: url('UPDATE.jpg');
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
    <h1>WOW, THAT'S GREAT NOW U CAN DO UPDATE OPERATION HERE.........!</h1>
     <a href="HOME.aspx">HOME</a> ||  <a href="INSERT.aspx"> INSERT</a> ||  <a href="DELETE.aspx">DELETE</a>

    
    <form id="form1" runat="server">
        <div>
            <p>PLEASE ENTER THE TABLE NAME </p>
             <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             <p>PLEASE ENTER THE PRIMARYKEY</p>
             <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox> 
  
             
                     <p>PLEASE ENTER THE NAME</p>
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
              <p>PLEASE ENTER THE E-MAIL ID</p>
      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>    
            <p>PLEASE ENTER THE PASSWORD</p>
             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> 
  

        </div>
        <br /> 
          <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="update" />
        <br />
        <br />
         <asp:Label ID="ResultLabel" runat="server" ForeColor="aqua"></asp:Label>
       
    </form>
</body>
</html>
