<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NurseAssay.aspx.cs" Inherits="HospitalWeb25.NurseAssay" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nurse Assay</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .mt-4 { margin-top: 20px; }
        .container { max-width: 900px; margin: 0 auto; }
        .form-label { font-weight: bold; }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="mt-4">
        <!-- Medicine Section -->
         
            <!-- Appointment Date -->
            <div class="mb-3">
                <label for="Date" class="form-label">Date:</label>
                <asp:TextBox ID="Date" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
            </div>


        <div class="mb-3">
            <label for="Medicine" class="form-label">Medicine:</label>
            <asp:TextBox ID="Medicine" runat="server" CssClass="form-control" />
        </div>

        <!-- Save Section (TC) -->
        <div class="mb-3">
            <label for="TC" class="form-label">TC:</label>
            <asp:TextBox ID="TC" runat="server" CssClass="form-control" />
        </div>
        <!-- Save Section (TC) -->
<div class="mb-3">
    <label for="nurseID" class="form-label">Nurse ID:</label>
    <asp:TextBox ID="nurseID" runat="server" CssClass="form-control" />
</div>

        <!-- Save Button for TC -->
        <asp:Button ID="SaveButton" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="SaveButton_Click" Height="44px" />
        <asp:Button ID="DeleteButton" runat="server" Text="Delete " OnClick="DeleteButton_Click" Height="45px" />

        <div class="container mt-5">
            <h2 class="text-center">Nurse Assay</h2>
            
            <!-- Assay Section (PatientTC) -->
            <div class="mb-3">
                <label for="PatientTC" class="form-label">Patient TC:</label>
                <asp:TextBox ID="PatientTC" runat="server" CssClass="form-control" />
            </div>

            <!-- Show Assay Button for PatientTC -->
            <div class="row justify-content-center mt-4">
                <div class="col-md-4 text-center">
                    <asp:Button ID="ShowAssayButton" runat="server" CssClass="btn btn-primary btn-lg w-100" Text="Show Assay" OnClick="ShowAssay_Click" />
                </div>
            </div>
            <asp:Button ID="ShowAllMedicinesButton" runat="server" Text="Show All Medicines" OnClick="ShowAllMedicinesButton_Click" />
<br />
<asp:GridView ID="AllMedicinesGridView" runat="server" AutoGenerateColumns="true" Width="1069px"></asp:GridView>

            <!-- Database Results Section (GridView) -->
            <div class="mt-5" style="border: 1px solid #ccc; padding: 20px; min-height: 300px;">
                <h4>Database Results</h4>
                <asp:GridView ID="AssayGridView" runat="server" CssClass="table table-bordered mt-4" Visible="false" Height="180px" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="AssayName" HeaderText="Assay Name" SortExpression="AssayName" />
                        <asp:BoundField DataField="AssayState" HeaderText="Assay State" SortExpression="AssayState" />
                        <asp:BoundField DataField="AssayValue" HeaderText="Assay Value" SortExpression="AssayValue" />
                        <asp:BoundField DataField="DateOfAssay" HeaderText="Date of Assay" SortExpression="DateOfAssay" DataFormatString="{0:yyyy-MM-dd}" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>

        <!-- Back Button -->
        <div class="row justify-content-center mt-4">
            <div class="col-md-4 text-center">
                <a href="NurseDashboard.aspx" class="btn btn-danger btn-lg w-100">Back</a>
            </div>
        </div>

    </form>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
