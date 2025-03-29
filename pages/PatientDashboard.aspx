<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientDashboard.aspx.cs" Inherits="HospitalWeb25.PatientDashboard" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
            <form id="form1" runat="server" class="mt-4">

    <div class="container mt-5">
        <h2 class="text-center">Patient Dashboard</h2>
        <div class="row justify-content-center mt-4">
            <!-- GET APPOINTMENT Button -->
            <div class="col-md-4 text-center">
                <a href="PatientAppointment.aspx" class="btn btn-primary btn-lg w-100">GET APPOINTMENT</a>
            </div>
            <!-- ASSAY RESULTS Button -->
            <div class="col-md-4 text-center">
                <a href="PatientAssayResults.aspx" class="btn btn-secondary btn-lg w-100">ASSAY RESULTS</a>
            </div>
        </div>
                    
        <!-- Back Button -->
        <div class="row justify-content-center mt-4">
            <div class="col-md-4 text-center">
                <a href="Index.aspx" class="btn btn-danger btn-lg w-100">Logout</a>
            </div>
        </div>
        
    </div>
                </form>
</body>
</html>
