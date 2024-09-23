<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Login_Project.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style>
        body{
                        background-color:#484848;
                        font-size:24px;
        }
        .container{
            display:flex;
            flex-direction:column;
            justify-content:center;
            height:100vh;
            align-items:center;
        }
        .container>*{
                        width:100px;
                        
        }
        .con{
            border-radius:40px;
            background-color:#00ffff;
            width:40%;
            height:50%;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
            padding:10px;
            gap:20px;
        }
        img{
            border-radius:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
            <div  class="con">
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Welcome  "></asp:Label>
                </div>
                <div>
                    <img src="hello.jpeg" width="150px" />
                </div>
                <div>    
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPage.aspx">Back to Login</asp:HyperLink>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
