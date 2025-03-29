<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="HospitalWeb25.AdminLogin" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Admin Login Screen</h2>
        <form id="loginForm" runat="server">
            <div class="form-group">
                <label for="UserName">UserName</label>
                <asp:TextBox ID="UserName" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="Password">Password</label>
                <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password" />
            </div>
     <a href="Index.aspx" class="btn btn-secondary mt-3">Back</a>
            <a href="AdminDashboard.aspx" class="btn btn-secondary mt-3">Login</a>


        </form>
    </div>
</body>
</html>
