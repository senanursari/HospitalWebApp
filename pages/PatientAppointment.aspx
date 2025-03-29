<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientAppointment.aspx.cs" Inherits="HospitalWeb25.PatientAppointment" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            margin-bottom: 100px;
        }

        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #f8f9fa;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Make Appointment</h2>

           <form id="appointmentForm" runat="server" class="mt-4">
     <!-- Patient TC Number -->
            <div class="mb-3">
         <label for="patientTC" class="form-label">Patient TC Number:</label>
                <asp:TextBox ID="patientTC" runat="server" CssClass="form-control" ></asp:TextBox>
           </div>


            <!-- Appointment Date -->
            <div class="mb-3">
                <label for="dateOfAppointment" class="form-label">Date of Appointment:</label>
                <asp:TextBox ID="dateOfAppointment" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
            </div>

            <!-- Appointment Time -->
            <div class="mb-3">
                <label for="hour" class="form-label">hour:</label>
                <asp:TextBox ID="hour" runat="server" CssClass="form-control" TextMode="Time" ></asp:TextBox>
            </div>

            <!-- Choose Hospital -->
            <div class="mb-3">
     <label for="ChooseHospital" class="form-label">Choose Hospital:</label>
     <asp:DropDownList ID="ChooseHospital" runat="server" CssClass="form-select" >
         <asp:ListItem Text="Select Hospital" Value="" />
         <asp:ListItem Text="Hospital 1" Value="Hospital1" />
         <asp:ListItem Text="Hospital 2" Value="Hospital2" />
     </asp:DropDownList>
    </div>

            <!-- Choose Policlinic -->
            <div class="mb-3">
                <label for="ChoosePoliclinic" class="form-label">Choose Policlinic:</label>
                <asp:DropDownList ID="ChoosePoliclinic" runat="server" CssClass="form-select" >
                    <asp:ListItem Text="Select a clinic" Value="" ></asp:ListItem>
                    <asp:ListItem Text="Clinic 1" Value="Clinic1"></asp:ListItem>
                    <asp:ListItem Text="Clinic 2" Value="Clinic2"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <!-- Choose Doctor -->
            <div class="mb-3">
                <label for="ChooseDoctor" class="form-label">Choose Doctor:</label>
                <asp:DropDownList ID="ChooseDoctor" runat="server" CssClass="form-select" >
                    <asp:ListItem Text="Select a doctor" Value="" ></asp:ListItem>
                    <asp:ListItem Text="Dr. John Doe" Value="Dr. John Doe"></asp:ListItem>
                    <asp:ListItem Text="Dr. Jane Smith" Value="Dr. Jane Smith"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <!-- Submit Button -->
            <asp:Button ID="MakeAppointmentButton" runat="server" Text="Make Appointment" CssClass="btn btn-success" OnClick="MakeAppointmentButton_Click" />
                           <asp:Button ID="DeleteAppointmentButton" runat="server" Text="Delete Appointment" CssClass="btn btn-success" OnClick="DeleteAppointmentButton_Click" />
                                          <asp:Button ID="UpdateAppointmentButton" runat="server" Text="Update Appointment" CssClass="btn btn-success" OnClick="UpdateAppointmentButton_Click" />
               <asp:Button ID="GetAppointmentCountButton" runat="server" Text="Show Appointment Count" OnClick="GetAppointmentCountButton_Click" />
               <asp:Label ID="AppointmentCountLabel" runat="server" Text="" ForeColor="Black"></asp:Label>

        </form>

        <a href="PatientDashboard.aspx" class="btn btn-secondary mt-3">Back</a>
    </div>

    <div class="footer">
        <p>© 2024 HospitalWeb</p>
    </div>

</body>
</html>
