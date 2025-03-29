<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NurseDashboard.aspx.cs" Inherits="HospitalWeb25.NurseDashboard" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nurse Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Nurse Dashboard</h2>
        <div class="row justify-content-center mt-4">
            <!-- Assays -->
            <div class="col-md-4 text-center">
                <a href="NurseAssay.aspx" class="btn btn-outline-primary btn-lg w-100">Assay</a>
            </div>
 <a href="NursePatientAppointment.aspx" class="btn btn-secondary mt-3">Appointments</a>

            <!-- Patient Appointment -->
            <div class="col-md-4 text-center">
 <a href="NurseLogin.aspx" class="btn btn-secondary mt-3">Back</a>
            </div>
        </div>

        <!-- Back Button -->
        <div class="row justify-content-center mt-2">
            <div class="col-md-4 text-center">
                <a href="Index.aspx" class="btn btn-danger btn-lg w-100">Logout</a>
            </div>
        </div>
    </div>
</body>
</html>
