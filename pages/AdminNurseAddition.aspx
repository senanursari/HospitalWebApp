<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminNurseAddition.aspx.cs" Inherits="HospitalWeb25.AdminNurseAddition" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Nurse Addition</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            margin-bottom: 100px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Admin Nurse Addition</h2>
        <form id="AdminNurseAddition" runat="server">
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

            <!-- Nurse ID -->
            <div class="mb-3">
                <label for="NurseID" class="form-label">Nurse ID:</label>
                <asp:TextBox ID="NurseID" runat="server" CssClass="form-control" />
            </div>

            <!-- Date of Birth -->
            <div class="mb-3">
                <label for="DateOfBirth" class="form-label">Date of Birth:</label>
                <asp:TextBox ID="DateOfBirth" runat="server" CssClass="form-control" TextMode="Date" />
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
                <label for="mail" class="form-label">E-Mail:</label>
                <asp:TextBox ID="Email" runat="server" CssClass="form-control" />
            </div>

            <!-- Address -->
            <div class="mb-3">
                <label for="address" class="form-label">Address:</label>
                <asp:TextBox ID="Address" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
            </div>

            <!-- Hospital -->
            <div class="mb-3">
                <label for="hospital" class="form-label">Hospital:</label>
                <asp:DropDownList ID="Hospital" runat="server" CssClass="form-select">
                    <asp:ListItem Value="" Text="Select Hospital" />
                    <asp:ListItem Value="Hospital1" Text="Hospital 1" />
                    <asp:ListItem Value="Hospital2" Text="Hospital 2" />
                </asp:DropDownList>
            </div>

            <!-- Username -->
            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <asp:TextBox ID="Username" runat="server" CssClass="form-control" />
            </div>

            <!-- Password -->
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password" />
            </div>

            <!-- Buttons -->
            <div class="d-flex gap-2">
                <asp:Button ID="AddButton" runat="server" Text="Add Nurse" CssClass="btn btn-primary" OnClick="AddButton_Click" CommandName="Add" />

                <asp:Button ID="DeleteButton" runat="server" Text="Delete Nurse" CssClass="btn btn-secondary" OnClick="DeleteButton_Click" CommandName="Delete" />
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
