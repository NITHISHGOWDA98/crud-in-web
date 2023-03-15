<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="CRUDOPERATION_IN_WEBAPPLICATION.HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HOME</title>
    
  <style type="text/css">
    body {
      background-image: url('crud image.png');
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

  </style>
</head>

  
<body>
   <h1>HII WELCOME U CAN DO CRUD OPERTION HERE..........!</h1>
    <h2>PLEASE SELECT BELOW OPERATION U WISH TO PERFORM</h2>
     <br /> <br />
    <h4>FOR INSERT</h4>
 
    <a href="INSERT.aspx"> INSERT</a>
    <br />
    <h4>FOR UPDATE</h4>
    <a href="UPDATE.aspx">UPDATE</a>
    <br />
     <h4>FOR DELETE</h4>
    <a href="DELETE.aspx">DELETE</a>

    <div>
            <img src="hero-img.png" />

    </div>
   
    <form id="form1" runat="server">
        <div>
        </div>
        
    </form>
</body>
</html>
