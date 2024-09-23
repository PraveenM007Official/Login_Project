<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Login_Project.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>

    </title>
    <link rel="stylesheet" href="Style2.css"/>
</head>
<body class="reg">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="" class="response"></asp:Label>

        </div>
        <div class="con">
            <div class="container_reg">
                <div class="space_reg">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Name" class="field_reg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Age" class="field_reg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Must be 18 or above" ForeColor="Red" MinimumValue="18" Type="Integer" MaximumValue="200"></asp:RangeValidator>

                </div>
                <div class="space_reg">
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="E-mail" class="field_reg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
                </div>
                <div class="space_reg">
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Phone No." class="field_reg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
               
                </div>
                <div class="space_reg"> 
                    <asp:TextBox ID="TextBox5" runat="server" placeholder="User Name" class="field_reg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Check for username " class="btn_reg1" CausesValidation="false"/>
                
                </div>
                <div class="space_reg">
                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Password" class="field_reg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
                </div>
                <div class="space_reg">
                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Confirm Password" class="field_reg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
          
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Password Mismatched" ForeColor="Red"></asp:CompareValidator>
          
                </div>
                <div class="button_reg">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" class="btn_reg mouse_reg" /><br />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/LoginPage.aspx" class="link_reg" CausesValidation="false" ForeColor="White">Back to Login page </asp:LinkButton>
        
                </div>

            </div>

        </div>
    </form>
</body>
</html>
