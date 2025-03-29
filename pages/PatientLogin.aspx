<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientLogin.aspx.cs" Inherits="HospitalWeb25.PatientLogin" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Patient Login Screen</h2>
        <form method="post">
            <div class="form-group">
                <label for="UserName">UserName</label>
                <input type="text" id="UserName" name="UserName" class="form-control" />
            </div>
            <div class="form-group">
                <label for="Password">Password</label>
                <input type="password" id="Password" name="Password" class="form-control" />
            </div>
                      <a href="PatientDashboard.aspx" class="btn btn-secondary mt-3">Login</a>

            <a href="PatientSignUp.aspx" class="btn btn-secondary mt-3">Sign Up</a>
            <a href="Index.aspx" class="btn btn-secondary mt-3">Back</a>
        </form>
        <asp:Label ID="ErrorMessageLabel" runat="server" CssClass="alert alert-danger mt-3" Visible="false"></asp:Label>
    </div>
</body>
</html>
