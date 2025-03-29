<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientAssayResults.aspx.cs" Inherits="HospitalWeb25.PatientAssayResults" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Assay Results</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .mt-4 {}
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Patient Assay Results</h2>
        <form runat="server" class="form-group">
           

            <!-- Buttons -->
            <div class="d-flex gap-2 mb-4">
                <a href="PatientDashboard.aspx" class="btn btn-secondary">Back</a>
            </div>
             <!-- Back Button -->
 <div class="row justify-content-center mt-4">
     <div class="col-md-4 text-center">
         <a href="Index.aspx" class="btn btn-danger btn-lg w-100">Logout</a>
     </div>
     </div>
             <!-- Assay Section (PatientTC) -->

             <!-- Show Assay Button for PatientTC -->

       
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
            </div>    <!-- Database Results Section (GridView) -->
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

            <div class="mt-5" style="border: 1px solid #ccc; padding: 20px; min-height: 300px;">
                <h4>&nbsp;</h4>
                <p class="text-muted">&nbsp;</p>
            </div>
        </form>
    </div>
</body>
</html>
