
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientAssayDoctor.aspx.cs" Inherits="HospitalWeb25.PatientAssayDoctor" %>

<!DOCTYPE html>
<html>
<head>
    <title>Patient Assay Doctor</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Add Patient Assay </h2>
        <form id="form1" runat="server" class="mt-4">
            <div class="mb-3">
                <label for="AssayName" class="form-label">Assay Name:</label>
                <asp:TextBox ID="AssayName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="AssayState" class="form-label">Assay State:</label>
                <asp:TextBox ID="AssayState" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="AssayValue" class="form-label">Assay Value:</label>
                <asp:TextBox ID="AssayValue" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="DateOfAssay" class="form-label">Date of Assay:</label>
                <asp:TextBox ID="DateOfAssay" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
            </div>
            <div class="mb-3">
    <label for="PatientTC" class="form-label">Patient TC:</label>
    <asp:TextBox ID="PatientTC" runat="server" CssClass="form-control" />
</div>
                        <div class="mb-3">
    <label for="DoctorID" class="form-label">Doctor ID::</label>
    <asp:TextBox ID="DoctorID" runat="server" CssClass="form-control" />
</div>
            <asp:Label ID="AssayCountLabel" runat="server" CssClass="mt-3"></asp:Label>
<asp:Button ID="CountAssayButton" runat="server" Text="Show Count"  CssClass="btn btn-primary" OnClick="CountAssayButton_Click" />
            <asp:Button ID="AddButton" runat="server" Text="Add Assay" CssClass="btn btn-primary" OnClick="AddButton_Click" />
            <asp:Button ID="DeleteButton" runat="server" Text="Delete Assay" CssClass="btn btn-danger" OnClick="DeleteButton_Click" />

                        <a href="DoctorDashboard.aspx" class="btn btn-secondary mt-3">Back</a>

        </form>
    </div>
</body>
</html>
