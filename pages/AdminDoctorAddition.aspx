<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDoctorAddition.aspx.cs" Inherits="HospitalWeb25.AdminDoctorAddition" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Doctor Addition</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h1>Admin Doctor Addition</h1>
        <form id="doctorForm" runat="server" class="form-group">
            <!-- Doctor ID -->
            <div class="mb-3">
                <label for="doctorID" class="form-label">Doctor ID:</label>
                <asp:TextBox ID="doctorID" runat="server" CssClass="form-control"  />
            </div>

            <!-- Name -->
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <asp:TextBox ID="name" runat="server" CssClass="form-control" />
            </div>

            <!-- Surname -->
            <div class="mb-3">
                <label for="surname" class="form-label">Surname:</label>
                <asp:TextBox ID="surname" runat="server" CssClass="form-control"  />
            </div>

            <!-- Title -->
            <div class="mb-3">
                <label for="title" class="form-label">Title:</label>
                <asp:TextBox ID="title" runat="server" CssClass="form-control" />
            </div>

            <!-- Major -->
            <div class="mb-3">
                <label for="major" class="form-label">Major:</label>
                <asp:TextBox ID="major" runat="server" CssClass="form-control"  />
            </div>

            <!-- ID -->
            <div class="mb-3">
                <label for="TCNumber" class="form-label">TC Number:</label>
                <asp:TextBox ID="TCNumber" runat="server" CssClass="form-control"  />
            </div>

            <!-- Telephone -->
            <div class="mb-3">
                <label for="telephone" class="form-label">Telephone:</label>
                <asp:TextBox ID="telephone" runat="server" CssClass="form-control"  />
            </div>

                     <div class="mb-3">
                     <label for="gender" class="form-label">Gender:</label>
                    <asp:DropDownList ID="gender" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Select Gender" Value="" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                   </asp:DropDownList>
                </div>


            <!-- Date of Birth -->
            <div class="mb-3">
                <label for="dob" class="form-label">Date of Birth:</label>
                <asp:TextBox ID="dob" runat="server" CssClass="form-control" TextMode="Date"  />
            </div>

            <!-- Address -->
            <div class="mb-3">
                <label for="address" class="form-label">Address:</label>
                <asp:TextBox ID="address" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
            </div>

            <!-- Hospital -->
            <div class="mb-3">
                <label for="hospital" class="form-label">Hospital:</label>
                <asp:TextBox ID="hospital" runat="server" CssClass="form-control"  />
            </div>

            <!-- Clinic -->
            <div class="mb-3">
                <label for="clinic" class="form-label">Clinic:</label>
                <asp:TextBox ID="clinic" runat="server" CssClass="form-control"  />
            </div>

            <!-- Username -->
            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <asp:TextBox ID="username" runat="server" CssClass="form-control"  />
            </div>

            <!-- Password -->
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password"  />
            </div>

            <!-- Buttons -->
            <div class="d-flex gap-2">
                <asp:Button ID="AddDoctorButton" runat="server" Text="Add Doctor" CssClass="btn btn-primary" OnClick="AddDoctor" CommandName="Add" />
                <asp:Button ID="UpdateDoctorButton" runat="server" Text="Update Doctor" CssClass="btn btn-warning" OnClick="UpdateDoctor" CommandName="Update" />
                <asp:Button ID="DeleteDoctorButton" runat="server" Text="Delete Doctor" CssClass="btn btn-danger" OnClick="DeleteDoctor" CommandName="Delete" />
            <a href="AdminDashboard.aspx" class="btn btn-secondary mt-3">Back</a>
            </div>

            <!-- Veri Görüntüleme Alanı -->
            <div class="mt-5" style="border: 1px solid #ccc; padding: 20px; min-height: 300px;">
                <h4>&nbsp;</h4>
                <p class="text-muted">&nbsp;</p>
            </div>
        </form>
    </div>
</body>
</html>
