<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="HospitalWeb25.AdminDashboard" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2>Admin Dashboard</h2>
        <p>Burada admin işlemlerini gerçekleştirebilirsiniz.</p>
        
        <!-- Yönlendirme Butonları -->
        <div>
                 <a href="Index.aspx" class="btn btn-secondary mt-3">Logout</a>
                             <a href="AdminPatientScreen.aspx" class="btn btn-secondary mt-3">Patient</a>
                             <a href="AdminDoctorAddition.aspx" class="btn btn-secondary mt-3">DoctorAddition</a>
                             <a href="AdminClinicAddition.aspx" class="btn btn-secondary mt-3">ClinicAddition</a>
                             <a href="AdminNurseAddition.aspx" class="btn btn-secondary mt-3">NurseAddition</a>

                             <a href="AdminAppointments.aspx" class="btn btn-secondary mt-3">Appointments</a>

        </div>
    </div>
</body>
</html>
