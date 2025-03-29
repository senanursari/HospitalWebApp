<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorDashboard.aspx.cs" Inherits="HospitalWeb25.DoctorDashboard" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            margin: 0;
            padding: 0;
            min-height: 50vh;
            display: flex;
            flex-direction: column;
        }

        .container {
            flex: 1;
            margin-bottom: 70px;
        }

        footer {
            position: relative;
            bottom: 0;
            width: 100%;
            background-color: #f8f9fa;
            text-align: center;
            padding: 10px 0;
            margin-top: auto;
        }
    </style>
</head>
<body>
                <!-- Left Section -->  <form method="post" runat="server">                                       
                        <div class="form-group">
                    </div>
                
                <div class="col-12">
                    <div class="mt-4">
                      <div class="mt-5" style="border: 1px solid #ccc; padding: 20px; min-height: 200px;">

    <div class="container mt-5">
        <h2 class="text-center">Doctor Dashboard
                </h2>
                    <div class="form-group">
                        &nbsp;<a href="PatientAssayDoctor.aspx" class="btn btn-secondary mt-3">Assay</a></div>
        <div class="row mt-4">
            <div class="col-md-6">
                <h4>
                        <label for="SearchPatientTC">Search by TC Number:</label></h4>
                <div class="form-group mb-3">
                        <asp:TextBox ID="SearchPatientTC" runat="server" CssClass="form-control mb-2" />
                </div>
            </div>
                    <asp:Button ID="button1" runat="server" CssClass="btn btn-primary btn-block w-100" Text="Find Patient" OnClick="FindPatientButton_Click" />
                </div>
                <div class="col-12">
                    <div class="mt-4">
                      <div class="mt-5" style="border: 1px solid #ccc; padding: 20px; min-height: 200px;">
                         <asp:Button ID="Button2" runat="server" Text="List All Patients" OnClick="ListPatientsButton_Click" />

<asp:GridView ID="PatientGridView" runat="server" AutoGenerateColumns="false" Visible="false">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Patient Name" />
        <asp:BoundField DataField="Surname" HeaderText="Patient Surname" />
        <asp:BoundField DataField="DateOfBirth" HeaderText="Date of Birth" />
        <asp:BoundField DataField="BloodType" HeaderText="Blood Type" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" />
        <asp:BoundField DataField="Telephone" HeaderText="Telephone" />
        <asp:BoundField DataField="Mail" HeaderText="Mail" />
        <asp:BoundField DataField="FatherName" HeaderText="Father's Name" />
        <asp:BoundField DataField="MotherName" HeaderText="Mother's Name" />
        <asp:BoundField DataField="Address" HeaderText="Address" />
        <asp:BoundField DataField="UserName" HeaderText="Username" />
        <asp:BoundField DataField="Password" HeaderText="Password" />
    </Columns>
</asp:GridView>
                      </div>
                </div>
                </div>

            <!-- Right Section -->
            <div class="col-md-6">
                <div class="form-group mb-3">   
                </div>
                                <a href="DoctorLogin.aspx" class="btn btn-secondary mt-3">Back</a>               
            </div>     
           </div>
           </div>
          </div>
       </div>
     <div class="row mt-2">
   <div class="col-md-2">
            &nbsp;</div>
           </div>
          </form>
               <div class="row mt-2">
            <div class="col-md-2">
           <a href="Index.aspx" class="btn btn-secondary mt-3">Logout</a>                
            </div>           
        </div> 
    
</body>
</html>