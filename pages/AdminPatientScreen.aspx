<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPatientScreen.aspx.cs" Inherits="HospitalWeb25.AdminPatientScreen" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Patient Screen</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Admin Patient Screen</h2>
        <div class="row">
            <form method="post" runat="server">
                <div class="col-md-4">
                    <!-- Find Patient Button -->
                    <div class="form-group">
                        <label for="SearchPatientTC">Search by TC Number:</label>
                        <asp:TextBox ID="SearchPatientTC" runat="server" CssClass="form-control mb-2" />
                    </div>
                    <asp:Button ID="FindPatientButton" runat="server" CssClass="btn btn-primary btn-block w-100" Text="Find Patient" OnClick="FindPatientButton_Click" />
                </div>
                <div class="col-12">
                    <div class="mt-4">
                      <div class="mt-5" style="border: 1px solid #ccc; padding: 20px; min-height: 200px;">

                        <asp:GridView ID="PatientGridView" runat="server" CssClass="table table-bordered mt-4" Visible="false" >
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name"  />
            <asp:BoundField DataField="Surname" HeaderText="Surname"  />
            <asp:BoundField DataField="DateOfBirth" HeaderText="Date of Birth"  />
            <asp:BoundField DataField="BloodType" HeaderText="Blood Type"  />
            <asp:BoundField DataField="Gender" HeaderText="Gender"  />
            <asp:BoundField DataField="Telephone" HeaderText="Telephone"  />
            <asp:BoundField DataField="Mail" HeaderText="Mail" />
            <asp:BoundField DataField="FatherName" HeaderText="Father's Name"  />
      <asp:BoundField DataField="MotherName" HeaderText="Mother's Name" />
 <asp:BoundField DataField="Address" HeaderText="Address"  />
<asp:BoundField DataField="UserName" HeaderText="Username"  />
<asp:BoundField DataField="Password" HeaderText="Password"  />
            <asp:BoundField DataField="PatientID" HeaderText="PatientID"  />
        </Columns>
    </asp:GridView></div>
                </div>
                </div>
                </div>
                <div class="col-12">
                    <div class="mt-4">
                      <div class="mt-5" style="border: 1px solid #ccc; padding: 20px; min-height: 200px;">
                          <h2 class="text-center"><asp:Button ID="ListPatientsButton" runat="server" CssClass="btn btn-primary btn-block w-100 mb-3" Text="List Patients" OnClick="ListPatientsButton_Click" />
        </h2>
                        </div>
                </div>
                </div>
                    <a href="AdminDashboard.aspx" class="btn btn-danger mt-3 w-100">Back</a>
                <div class="col-md-8">
                    <div class="mb-3">
                        <label for="PatientTC" class="form-label">Patient TC:</label>
                        <asp:TextBox ID="PatientTC" runat="server" CssClass="form-control" />
                    </div>

                    <div class="row justify-content-center mt-4">
                        <!-- Show Assay Button -->
                        <div class="col-md-4 text-center">
                            <asp:Button ID="ShowAssayButton" runat="server" CssClass="btn btn-primary btn-lg w-100" Text="Show Assay" OnClick="ShowAssayButton_Click" />
                        </div>
                    </div>

                    <!-- Data Display Section -->
                    <div class="mt-5" style="border: 1px solid #ccc; padding: 20px; min-height: 200px;">
                        <asp:GridView ID="AssayGridView" runat="server" CssClass="table table-bordered mt-4" Visible="false" Height="136px" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="AssayName" HeaderText="Assay Name" SortExpression="AssayName" />
                                <asp:BoundField DataField="AssayState" HeaderText="Assay State" SortExpression="AssayState" />
                                <asp:BoundField DataField="AssayValue" HeaderText="Assay Value" SortExpression="AssayValue" />
                                <asp:BoundField DataField="DateOfAssay" HeaderText="Date of Assay" SortExpression="DateOfAssay" DataFormatString="{0:yyyy-MM-dd}" />
                            </Columns>
                        </asp:GridView>
                    </div>
                   

                </div>
            
        </div>
    
        <!-- Additional Links -->
        &nbsp;<a href="AdminPatientAddition.aspx" class="btn btn-danger mt-3 w-100">Add/Delete/Update</a></div>
         </form>
</body>
</html>
