<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPatientAddition.aspx.cs" Inherits="HospitalWeb25.AdminPatientAddition" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Patient Addition</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            margin-bottom: 100px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Admin Patient Addition</h2>
      </div>
            
     <form method="post" runat="server">  
            <!-- Name -->
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <asp:TextBox ID="Name" runat="server" CssClass="form-control" />
            </div>

            <!-- Surname -->
            <div class="mb-3">
                <label for="surname" class="form-label">Surname:</label>
                <asp:TextBox ID="Surname" runat="server" CssClass="form-control" />
            </div>
         <!-- Patient ID -->
            <div class="mb-3">
         <label for="PatientTC" class="form-label">TC Number:</label>
         <asp:TextBox ID="PatientTC" runat="server" CssClass="form-control" />
            </div>
            <!-- Patient ID -->
            <div class="mb-3">
                <label for="id" class="form-label">ID:</label>
                <asp:TextBox ID="PatientID" runat="server" CssClass="form-control" />
            </div>

            <!-- Date of Birth -->
            <div class="mb-3">
                <label for="dob" class="form-label">Date of Birth:</label>
                <asp:TextBox ID="DateOfBirth" runat="server" CssClass="form-control" TextMode="Date" />
            </div>

            <!-- Blood Type -->
            <div class="mb-3">
                <label for="bloodType" class="form-label">Blood Type:</label>
                <asp:DropDownList ID="BloodType" runat="server" CssClass="form-select">
                    <asp:ListItem Value="" Text="Select Blood Type" />
                    <asp:ListItem Value="0-" Text="0-" />
                    <asp:ListItem Value="0+" Text="0+" />
                    <asp:ListItem Value="A-" Text="A-" />
                    <asp:ListItem Value="A+" Text="A+" />
                    <asp:ListItem Value="B-" Text="B-" />
                    <asp:ListItem Value="B+" Text="B+" />
                    <asp:ListItem Value="AB-" Text="AB-" />
                    <asp:ListItem Value="AB+" Text="AB+" />
                </asp:DropDownList>
            </div>

            <!-- Gender -->
            <div class="mb-3">
                <label for="gender" class="form-label">Gender:</label>
                <asp:DropDownList ID="Gender" runat="server" CssClass="form-select">
                    <asp:ListItem Value="" Text="Select Gender" />
                    <asp:ListItem Value="Male" Text="Male" />
                    <asp:ListItem Value="Female" Text="Female" />
                </asp:DropDownList>
            </div>

            <!-- Telephone -->
            <div class="mb-3">
                <label for="telephone" class="form-label">Telephone:</label>
                <asp:TextBox ID="Telephone" runat="server" CssClass="form-control" />
            </div>

            <!-- E-Mail -->
            <div class="mb-3">
                <label for="mail" class="form-label">Mail:</label>
                <asp:TextBox ID="mail" runat="server" CssClass="form-control" />
            </div>

            <!-- Father's Name -->
            <div class="mb-3">
                <label for="FatherName" class="form-label">Father's Name:</label>
                <asp:TextBox ID="FatherName" runat="server" CssClass="form-control" />
            </div>

            <!-- Mother's Name -->
            <div class="mb-3">
                <label for="MotherName" class="form-label">Mother's Name:</label>
                <asp:TextBox ID="MotherName" runat="server" CssClass="form-control" />
            </div>

            <!-- Address -->
            <div class="mb-3">
                <label for="address" class="form-label">Address:</label>
                <asp:TextBox ID="Address" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
            </div>

            <!-- Username -->
            <div class="mb-3">
                <label for="UserName" class="form-label">UserName:</label>
                <asp:TextBox ID="UserName" runat="server" CssClass="form-control" />
            </div>

            <!-- Password -->
            <div class="mb-3">
                <label for="Password" class="form-label">Password:</label>
                <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password" />
            </div>

            <!-- Buttons -->
            <div class="d-flex gap-2">
                <asp:Button ID="AddButton" runat="server" Text="Add Patient" CssClass="btn btn-primary" OnClick="AddButton_Click" />
                </div>
                <div class="d-flex gap-2">
                <asp:Button ID="DeleteButton" runat="server" Text="Delete Patient" CssClass="btn btn-danger" OnClick="DeleteButton_Click" />
                    </div>
          <div class="d-flex gap-2">
          <asp:Button ID="UpdateButton" runat="server" Text="Update Patient" CssClass="btn btn-warning" OnClick="UpdateButton_Click" />
            </div>
            <div class="d-flex gap-2">
            <asp:Button ID="BackButton" runat="server" Text="Back" CssClass="btn btn-secondary" OnClick="BackButton_Click" />
             </div>

            

            <!-- Veri Görüntüleme Alanı -->
         </form>
        </body>
    </html>
