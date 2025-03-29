<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HospitalWeb25.Index" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Automation System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center mb-4">Hospital Automation System</h2>
        <div class="row justify-content-center gy-3">
            <!-- Admin Login -->
            <div class="col-sm-6 col-md-3">
                <a href="AdminLogin.aspx" class="btn btn-primary btn-lg w-100">Admin Login</a>
            </div>

            <!-- Doctor Login -->
            <div class="col-sm-6 col-md-3">
                <a href="DoctorLogin.aspx" class="btn btn-secondary btn-lg w-100">Doctor Login</a>
            </div>

            <!-- Nurse Login -->
            <div class="col-sm-6 col-md-3">
                <a href="NurseLogin.aspx" class="btn btn-success btn-lg w-100">Nurse Login</a>
            </div>

            <!-- Patient Login -->
            <div class="col-sm-6 col-md-3">
                <a href="PatientLogin.aspx" class="btn btn-warning btn-lg w-100">Patient Login</a>
            </div>
        </div>
    </div>
</body>
</html>
