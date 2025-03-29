<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NurseLogin.aspx.cs" Inherits="HospitalWeb25.NurseLogin" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nurse Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Nurse Login Screen</h2>
        <form runat="server" method="post">
            <div class="form-group">
                <label for="UserName">UserName</label>
                <input type="text" id="UserName" name="UserName" class="form-control" runat="server" />
            </div>
            <div class="form-group">
                <label for="Password">Şifre</label>
                <input type="password" id="Password" name="Password" class="form-control" runat="server" />
            </div>
 <a href="NurseDashboard.aspx" class="btn btn-secondary mt-3">Login</a>
            <a href="Index.aspx" class="btn btn-secondary mt-3">Back</a>
        </form>
    </div>
</body>
</html>
