<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminClinicAddition.aspx.cs" Inherits="HospitalWeb25.AdminClinicAddition" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Clinic Addition</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h1>Admin Clinic Addition</h1>


        <form id="clinicForm" runat="server" method="post" class="form-group">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" CssClass="table table-striped"></asp:GridView>

            <!-- Clinic ID -->
            <div class="mb-3">
                <label for="clinicID" class="form-label">Clinic ID:</label>
                <asp:TextBox ID="clinicID" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
             <!-- Clinic ID -->
 

            <!-- Hospital Name -->
            <div class="mb-3">
                <label for="hospitalName" class="form-label">Hospital Name:</label>
                <asp:TextBox ID="hospitalName" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>

            <!-- Clinic Name -->
            <div class="mb-3">
                <label for="clinicName" class="form-label">Clinic Name:</label>
                <asp:TextBox ID="clinicName" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>

            <!-- Number of Clinics -->
            <div class="mb-3">
                <label for="numberOfClinic" class="form-label">Number of Clinics:</label>
                <asp:TextBox ID="numberOfClinic" runat="server" CssClass="form-control" type="number" min="1"></asp:TextBox>
            </div>

            <!-- Buttons -->
            <div class="d-flex gap-2">
                <asp:Button ID="AddButton" runat="server" Text="Add Clinic" CssClass="btn btn-primary" OnClick="AddButton_Click" />
                <asp:Button ID="UpdateButton" runat="server" Text="Update Clinic" CssClass="btn btn-warning" OnClick="UpdateButton_Click" />
                <asp:Button ID="DeleteButton" runat="server" Text="Delete Clinic" CssClass="btn btn-danger" OnClick="DeleteButton_Click" />
            <a href="AdminDashboard.aspx" class="btn btn-secondary mt-3">Back</a>
            </div>

            <!-- Veri Görüntüleme Alanı -->
            <div class="mt-5" style="border: 1px solid #ccc; padding: 20px; min-height: 300px;">
                <h4>Database Results</h4>
                <p class="text-muted">This area will display results fetched from the database dynamically.</p>
            </div>
        </form>
    </div>
</body>
</html>
