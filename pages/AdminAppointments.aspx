<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAppointments.aspx.cs" Inherits="HospitalWeb25.AdminAppointments" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Appointments</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Admin Appointments </h2>

        <!-- Form verisi gönderme -->
        <form id="appointmentForm" runat="server" class="mt-4">
            <div class="mb-3">
                <label for="DateOfAppointment" class="form-label">Date of Appointment:</label>
                <asp:TextBox ID="DateOfAppointment" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="Hour" class="form-label">Hour:</label>
                <asp:TextBox ID="Hour" runat="server" CssClass="form-control" TextMode="Time" ></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="ChooseHospital" class="form-label">Choose Hospital:</label>
                <asp:DropDownList ID="ChooseHospital" runat="server" CssClass="form-select" >
                    <asp:ListItem Text="Select Hospital" Value="" />
                    <asp:ListItem Text="Hospital 1" Value="Hospital1" />
                    <asp:ListItem Text="Hospital 2" Value="Hospital2" />
                </asp:DropDownList>
            </div>

            <div class="mb-3">
                <label for="Choosepoliclinic" class="form-label">Choose Polinic:</label>
                <asp:DropDownList ID="ChoosePoliclinic" runat="server" CssClass="form-select" >
                    <asp:ListItem Text="Select Policlinic" Value="" />
                    <asp:ListItem Text="Clinic 1" Value="Clinic1" />
                    <asp:ListItem Text="Clinic 2" Value="Clinic2" />
                </asp:DropDownList>
            </div>

            <div class="mb-3">
                <label for="ChooseDoctor" class="form-label">Choose Doctor:</label>
                <asp:DropDownList ID="ChooseDoctor" runat="server" CssClass="form-select" >
                    <asp:ListItem Text="Select Doctor" Value="" />
                    <asp:ListItem Text="Dr. John Doe" Value="Doctor1" />
                    <asp:ListItem Text="Dr. Jane Smith" Value="Doctor2" />
                </asp:DropDownList>
            </div>

            <div class="mb-3">
                <label for="patientTC" class="form-label">Patient TC:</label>
                <asp:TextBox ID="patientTC" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
            

            <!-- Gönderme butonları -->
            <div class="d-flex gap-2">
                <asp:Button ID="UpdateAppointment" runat="server" Text="Update Appointment" CssClass="btn btn-primary" OnClick="UpdateAppointment_Click" />
                <asp:Button ID="DeleteAppointment" runat="server" Text="Delete Appointment" CssClass="btn btn-primary" OnClick="DeleteAppointment_Click" />

                            <a href="AdminDashboard.aspx" class="btn btn-secondary mt-3">Back</a>

            </div>
        </form>
    </div>
</body>
</html>
