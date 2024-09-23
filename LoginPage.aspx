<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Login_Project.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>

    </title>
    <link rel="stylesheet" href="Style1.css" />
</head>
<body class="login">
    <form id="form1" runat="server" class="color_log">
         <div class ="response">
           <asp:Label ID="Label4" runat="server" Text=""  ></asp:Label>
        </div>

        <div class="con">
            <div class="container_log" >
                <div class="space_log color_log">
                    <asp:TextBox ID="TextBox1" runat="server" class="placeholder_log txt_log" placeholder="User Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ></asp:RequiredFieldValidator>
                </div>
                <div class="space_log color_log">
                    <asp:TextBox ID="TextBox2" runat="server" class="placeholder_log txt_log" placeholder="Password" TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"  ></asp:RequiredFieldValidator>

               </div>
               <div class="space_log align_log">
                    <asp:Button ID="Button1" class="mouse_log btn_log" runat="server" OnClick="Button1_Click" Text="Login" Width="200px" /><br />

               </div >
               <div class="align_log">
                    <asp:Label ID="Label3" runat="server" Text="Don't have an account?" ForeColor="White"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" class="color_log" NavigateUrl="~/RegistrationPage.aspx" >Sign up Here</asp:HyperLink>

               </div>

            </div>

        </div>
    </form>
</body>
</html>
