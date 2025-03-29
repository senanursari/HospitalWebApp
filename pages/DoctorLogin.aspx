<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorLogin.aspx.cs" Inherits="HospitalWeb25.DoctorLogin" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Doctor Login Screen</h2>
        <form runat="server">
            <div class="form-group">
                <label for="UserName">UserName</label>
                <asp:TextBox ID="UserNameTextBox" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <label for="Password">Password</label>
                <asp:TextBox ID="PasswordTextBox" runat="server" CssClass="form-control" TextMode="Password" />
            </div>
 <a href="DoctorDashboard.aspx" class="btn btn-secondary mt-3">Login</a>
                <a href="Index.aspx" class="btn btn-secondary mt-3">Back</a>
        </form>
    </div>
</body>
</html>
