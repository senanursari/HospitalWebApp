<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPatientFind.aspx.cs" Inherits="HospitalWeb25.AdminPatientFind" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin Patient Dashboard</title>
                
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
                <form id="AdminNurseAddition" runat="server">

    <div class="container mt-5">
        <h2 class="text-center">Admin Patient Dashboard</h2>
        <p class="text-center">Manage Patients and Clinics</p>
        <div class="row mt-4">
            <!-- Patient Addition -->
            <div class="col-md-4 text-center">
                <asp:HyperLink ID="PatientAdditionLink" runat="server" CssClass="btn btn-primary w-100 mb-3" NavigateUrl="/AdminPatientAddition">Patient Addition</asp:HyperLink>
            </div>
            
            <!-- Patient Screen -->
            <div class="col-md-4 text-center">
                <asp:HyperLink ID="PatientScreenLink" runat="server" CssClass="btn btn-primary w-100 mb-3" NavigateUrl="/AdminPatientScreen">Patient Screen</asp:HyperLink>
            </div>
            
            <!-- Outpatient Clinic -->
            <div class="col-md-4 text-center">
                <asp:HyperLink ID="OutPatientClinicLink" runat="server" CssClass="btn btn-primary w-100 mb-3" NavigateUrl="/AdminOutPatientClinic">Outpatient Clinic</asp:HyperLink>
            </div>
        </div>
        
        <!-- Back to Dashboard -->
        <div class="row mt-4">
            <div class="col text-center">
                <asp:Button ID="BackToDashboardButton" runat="server" Text="Back to Dashboard" CssClass="btn btn-secondary w-50" OnClick="BackToDashboardButton_Click" />
            </div>
            
        </div>
                   
    </div>
   </form>  
</body>
</html>
