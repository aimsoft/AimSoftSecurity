<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AimExchange.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login Form</title>
  <link rel="stylesheet" href="css/style.css">
  <script src="..//html5shim.googlecode.com/svn/trunk/html5.js"></script>
</head>
<body style="background: #0ca3d2;">
<div class="main_heading">
<h1>Aim Security Managment</h1>
</div>
  <section class="container">
    <div class="login">
      <h1>Admin Login</h1>
      <form method="post" runat="server" >
        <p><asp:TextBox ID="txtLogin" runat="server" placeholder="Username" ></asp:TextBox>*</p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtLogin" Text="* Must be Enter" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <%--<p><input type="text" name="login" value="" placeholder="Username or Email"></p>--%>
         <p><asp:TextBox ID="txtPassword" runat="server" placeholder="Password" ></asp:TextBox>*</p>
         <asp:RequiredFieldValidator style="float:left" ID="RequiredFieldValidator2" ControlToValidate="txtPassword" Text="* Must be Enter" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <%--<p><input type="password" name="password" value="" placeholder="Password"></p>--%>
        <p class="remember_me">
          <label>
            <asp:CheckBox ID="remember_me" runat="server"></asp:CheckBox>
            <%--<input type="checkbox" name="remember_me" id="remember_me">--%>
           Keep me Logged In
          </label>
        </p>
        <p class="submit">
        <%--<input type="submit" name="commit" value="Login">--%>
        <asp:Button ID="btnLogin" runat="server" Text="Login"></asp:Button>
        </p>
      </form>
    </div>

    <div class="login-help">
      <p>Forgot your password? <a href="Main.aspx">Click here...</a>.</p>
    </div>
  </section>
</body>
</html>
