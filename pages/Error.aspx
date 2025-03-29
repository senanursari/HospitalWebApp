<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="HospitalWeb25.Error" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-danger">Error</h1>
        <h2 class="text-danger">An error occurred while processing your request.</h2>

        <asp:PlaceHolder ID="RequestIdPlaceHolder" runat="server">
            <p>
                <strong>Request ID:</strong> <code><asp:Label ID="RequestIdLabel" runat="server" /></code>
            </p>
        </asp:PlaceHolder>

        <h3>Development Mode</h3>
        <p>
            Swapping to the <strong>Development</strong> environment displays detailed information about the error that occurred.
        </p>
        <p>
            <strong>The Development environment shouldn't be enabled for deployed applications.</strong>
            It can result in displaying sensitive information from exceptions to end users.
            For local debugging, enable the <strong>Development</strong> environment by setting the <strong>ASPNETCORE_ENVIRONMENT</strong> environment variable to <strong>Development</strong>
            and restarting the app.
        </p>
    </div>
</body>
</html>
