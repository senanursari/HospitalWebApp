<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NursePatientAppointment.aspx.cs" Inherits="HospitalWeb25.NursePatientAppointment" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nurse Patient Appointment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2 class="text-center">Nurse Patient Appointment</h2>
            <div class="row mt-4">
                <!-- Hasta TC ile Arama -->

                    <div class="mb-3">
    <asp:TextBox ID="PatientTC" runat="server" CssClass="form-control" />
</div>
                <div class="col-md-6">
                    <asp:Button ID="FindAppointmentsButton" runat="server" CssClass="btn btn-primary btn-lg w-100" Text="Find Appointments" OnClick="FindAppointmentsButton_Click" />

                </div>
            </div>

            <!-- Veri Görüntüleme Alanı -->
            <div class="mt-5" style="border: 1px solid #ccc; padding: 20px; min-height: 300px;">
                <h4>Appointments<asp:GridView ID="AppointmentGridView" runat="server" CssClass="table table-bordered mt-4" Visible="false" Height="180px" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="dateOfAppointment" HeaderText="Date of Appointment" SortExpression="dateOfAppointment" DataFormatString="{0:yyyy-MM-dd}" />
                        <asp:BoundField DataField="hour" HeaderText="Hour" SortExpression="hour" />
                        <asp:BoundField DataField="ChooseHospital" HeaderText="Hospital" SortExpression="ChooseHospital" />
                        <asp:BoundField DataField="ChoosePoliclinic" HeaderText="Policlinic" SortExpression="ChoosePoliclinic" />
                        <asp:BoundField DataField="ChooseDoctor" HeaderText="Doctor" SortExpression="ChooseDoctor" />
                    </Columns>
                </asp:GridView>
                    </h4>
                <p class="text-muted">&nbsp;</p>
            </div>

            <!-- Back Button -->
            <div class="row mt-4">
                <div class="col-md-4 text-center">
                    <a href="NurseDashboard.aspx" class="btn btn-danger btn-lg w-100">Back</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
