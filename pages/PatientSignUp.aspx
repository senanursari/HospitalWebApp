<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientSignUp.aspx.cs" Inherits="HospitalWeb25.PatientSignUp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
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
        <h2 class="text-center">Patient Sign-Up</h2>
        
           
    </div>
            
     <form method="post" runat="server">  
     <div class="mb-3">
        <label for="Name" class="form-label">Name:</label>
        <asp:TextBox ID="Name" runat="server" CssClass="form-control" ></asp:TextBox>
      </div>
   
                 
      
            <!-- Patient Surname -->
            <div class="mb-3">
                <label for="Surname" class="form-label">Surname:</label>
                <asp:TextBox ID="Surname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
         
            <!-- Patient TC Number -->
            <div class="mb-3">
                <label for="PatientTC" class="form-label">TC Number:</label>
                <asp:TextBox ID="PatientTC" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>

            <!-- Date of Birth -->
            <div class="mb-3">
                <label for="DateOfBirth" class="form-label">Date of Birth:</label>
                <asp:TextBox ID="DateOfBirth" runat="server" CssClass="form-control" TextMode="Date" ></asp:TextBox>
            </div>

            <!-- Blood Type -->
<div class="mb-3">
    <label for="BloodType" class="form-label">Blood Type:</label>
    <asp:DropDownList ID="BloodType" runat="server" CssClass="form-select" >
        <asp:ListItem Text="Select Blood Type" Value="" Selected="True"></asp:ListItem>
        <asp:ListItem Text="0-" Value="0-"></asp:ListItem>
        <asp:ListItem Text="0+" Value="0+"></asp:ListItem>
        <asp:ListItem Text="A+" Value="A+"></asp:ListItem>
        <asp:ListItem Text="A-" Value="A-"></asp:ListItem>
        <asp:ListItem Text="B+" Value="B+"></asp:ListItem>
        <asp:ListItem Text="B-" Value="B-"></asp:ListItem>
        <asp:ListItem Text="AB+" Value="AB+"></asp:ListItem>
        <asp:ListItem Text="AB-" Value="AB-"></asp:ListItem>
    </asp:DropDownList>
</div>

<!-- Gender -->
<div class="mb-3">
    <label for="Gender" class="form-label">Gender:</label>
    <asp:DropDownList ID="Gender" runat="server" CssClass="form-select">
        <asp:ListItem Text="Select Gender" Value="" Selected="True"></asp:ListItem>
        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
    </asp:DropDownList>
    <!-- Validation for Gender selection -->
    <asp:RequiredFieldValidator 
        ID="rfvGender" 
        runat="server" 
        ControlToValidate="Gender" 
        InitialValue="" 
        ErrorMessage="Please select a gender." 
        ForeColor="Red" />
</div>


            <!-- Other Inputs -->
            <div class="mb-3">
                <label for="Telephone" class="form-label">Telephone:</label>
                <asp:TextBox ID="Telephone" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="Mail" class="form-label">Mail:</label>
                <asp:TextBox ID="Mail" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="FatherName" class="form-label">Father's Name:</label>
                <asp:TextBox ID="FatherName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
         
          
            <!-- Mother's Name -->
            <div class="mb-3">
                <label for="MotherName" class="form-label">Mother's Name:</label>
                <asp:TextBox ID="MotherName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
         <div class="mb-3">
    <label for="Address" class="form-label">Address:</label>
    <asp:TextBox ID="Address" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
</div>

             
    <div class="mb-3">
    <label for="UserName" class="form-label">UserName:</label>
    <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
</div>
    <div class="mb-3">
    <label for="Password" class="form-label">Password:</label>
    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
</div>
                
    <div class="mb-3">
    <label for="PatientID" class="form-label">PatientID:</label>
    <asp:TextBox ID="PatientID" runat="server" CssClass="form-control"></asp:TextBox>
</div>


            <!-- Other form fields (e.g. Name, Surname, etc.) can go here -->
    <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" CssClass="btn btn-success" OnClick="SignUpButton_Click" />

         </form>
 <a href="Index.aspx" class="btn btn-secondary mt-3">Back</a>
</body>
 </html>           