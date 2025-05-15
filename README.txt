Hospital Automation Project
This project was developed to digitize and streamline hospital management processes. The system supports roles for doctors, nurses, patients, and administrators (admin). The key features include:
* Patient Registration and Management: Patients can either register themselves (Sign Up) or be added to the system by the administrator
* Appointment System: Registered patients can create appointments and view their appointment history. . The administrator can update,delete appointments. The nurse can see the appointments according to the patient's TC.
* Laboratory Test Management: Doctors can add medical tests for patients and review the results.
* Authorization and Roles: Each user (patient, doctor, nurse, admin) has specific permissions and access restrictions.
* Database Integration: Data is securely stored and processed using Microsoft SQL Server.
* Stored Procedures and Views: Functionality is enhanced through the use of Stored Procedures (SP), Views, Functions and Triggers in the database.
* ER Diagram: An ER diagram was designed and implemented to illustrate the core database relationships of the system.
This automation system was developed to facilitate the management of patient information, appointments, and medical processes within a hospital.
Required system requirements
Google Drive for video: https://drive.google.com/file/d/1OWWf-NO3e2jvlamKmyqiWHsIBubROBW8/view?usp=drive_link
Operating System: Windows 10 or later 
Software: Visual Studio 2022 
Database: Microsoft SQL Server 2019
 .NET Framework: 4.8 or higher
ASP.NET Web Forms
Required NuGet Packages: Microsoft.CodeDom.Providers.DotNetCompilerPI
Installation Steps
Opening Project Files
            Download and Extract Project Files
               Download the project file and extract it into a folder on your computer.
               Open the [HodpitalWeb25].sln file in Visual Studio.
            Setting Up the Database
Open the sena2024.sql file in Microsoft SQL Server Management Studio (SSMS).
Run the script to create the database.
              Configuring the Connection String
Open the appsettings.json (or Web.config) file in the project directory.
Replace the connectionString section with your own SQL Server connection information.
"ConnectionStrings": {
    "DefaultConnection":
"Server=localhost;Database=sena2024;Trusted_Connection=True;"}
Installing the Required NuGet Packages 
In Visual Studio, go to Tools -> NuGet Package Manager -> Manage NuGet Packages for Solution. Install the necessary packages.
Microsoft.CodeDom.Providers.DotNetCompilerPI
Running the Project Start
 The project by pressing the Run (F5) key in Visual Studio.
User Login Information
For easy access to the system, all logins temporarily use a single username and password.
* Username: admin
* Password: 12345
NOTE:I logged in by typing admin vs 12345 just to be able to show it quickly in the video. With the added information, you can log in using your real username and password
Use of the Project
The project opens with login options for admin, patient, doctor, and nurse.
The admin is the system manager who oversees everything.
Admin Screen
When you log into the admin screen, you are greeted with buttons for adding patients, doctors, nurses, clinics, and managing appointments. Clicking these buttons reveals more detailed content.
* Admin Patient Screen:
The admin can access a patient�s information by entering their ID number. By clicking the "List" button, they can view all patients� details.
The "Show Assay" button allows the admin to access patients� test results by entering the patient�s ID.
Using the "Add-Delete-Update" button, the admin can add, delete, or update patients, as well as update or delete patient appointments.
* Admin Doctor Addition Screen;
The admin can add, delete, or update doctors.
* Admin Clinic Addition Screen:
The admin can add, delete, or update clinics.
* Admin Nurse Addition Screen:
The admin can add or delete nurses.
* Admin Appointments Screen:
The admin can update or delete patient appointments.
Doctor Screen
When you log into the doctor screen, you are greeted with the "Assay," "Find," and "List" buttons.
* Assay :
Doctors can enter test results for patients or delete them.
* Show Count:
Using a function, doctors can see the total number of test results they have added.
* Find Patient :
Doctors can view all details of a patient by entering their ID number.
* List All Patients :
Doctors can see all their patients� information.
Nurse Screen
When you log into the nurse screen, you are greeted with the "Assay" and "Appointments" sections.
* Nurse Assay Section:
Nurses can access a patient�s test results by entering their TC number.
Based on the test results, they can enter the patient�s TC, date, and nurse ID to prescribe, delete, or add the required medication to the system.
* Show All Medicine :
Nurses can see which medications were prescribed to patients and on what dates.
* Find Patient :
Nurses can view all details of a patient by entering their ID number.
* List Patients :
Nurses can see all patients� information.
*  Nurse Appointment Screen;
            Nurse can access a patient�s appointment details by entering the patient�s TC number.
           Patient Screen
           Before accessing the Patient Screen, there are Login and Sign Up options.
           If the patient is not already registered in the system, they can register by entering              their information through the Sign Up option.
The patient screen includes the Get Appointment and Assay Result buttons.
* Get Appointment:
The patient can enter the appointment booking screen. They can enter their details to book an appointment for a suitable date, delete their appointments, or update them.
Additionally, using the Show Account button, the patient can see the total number of appointments on a specific date in the system through a function.
* Assay Result:
In this section, the patient can access their own test results by entering their TC number.
Project Structure
/HospitalWeb25        --> Main project folder
/Connected Services --> External service connection settings
/Properties
??? AssemblyInfo.cs   --> Assembly information about the project
/References
/Pages                  -->Web Forms pages
??? AdminAppointments.aspx    --> Manage appointments (admin)
??? AdminClinicAddition.aspx  --> Add, edit, or delete clinics (admin)
??? AdminDashboard.aspx       --> Admin's main dashboard
??? AdminDoctorAddition.aspx  --> Add, edit, or delete doctors (admin)
??? AdminLogin.aspx           --> Admin login page
??? AdminNurseAddition.aspx   --> Add or delete nurses (admin)
??? AdminPatientAddition.aspx --> Add, edit, or delete patients (admin)
??? AdminPatientFind.aspx     --> Search for a specific patient by ID (admin)
??? AdminPatientScreen.aspx   --> View and manage all patient details (admin)
??? DoctorDashboard.aspx      --> Doctor's main dashboard
??? DoctorLogin.aspx          --> Doctor login page
??? Error.aspx                --> Error handling page
??? Index.aspx                --> Homepage or starting point
??? NurseAssay.aspx           --> Manage assays or prescriptions (nurse)
??? NurseDashboard.aspx       --> Nurse's main dashboard
??? NurseLogin.aspx           --> Nurse login page
??? NursePatientAppointment.aspx --> View or manage patient appointments (nurse)
??? PatientAppointment.aspx --> Patient appointment management 
??? PatientAssayDoctor.aspx --> View assay details as a patient from a doctor's   perspective 
??? PatientAssayResults.aspx --> View assay results (patient)
 ??? PatientDashboard.aspx --> Patient's main dashboard 
??? PatientLogin.aspx --> Patient login page 
??? PatientSignUp.aspx --> Patient registration/sign-up page 
??? Privacy.aspx --> Privacy policy or information page
/wwwroot          --> Static files (CSS, JS, images)
?   ??? /css          --> Stylesheets (e.g., Bootstrap, custom CSS files)
?   ??? /file         --> Uploaded files (e.g., assay or report documents)
?   ??? /js           --> JavaScript files
?   ??? /lib          --> External libraries (e.g., jQuery, Bootstrap)
/appsettings.json  --> Application configuration file (e.g., database connection)
/ Web.config        --> Application configuration file
/ Default.aspx      --> Default starting page
/packages.config   --> Dependency management file
Contact information
If you encounter any problems or have any information you are curious about, you can contact me: @senanursari1987@gmail.com

 




