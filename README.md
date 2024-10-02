---
# Employee Management System

## Project Overview
The **Employee Management System** is a web-based application developed using ASP.NET that helps organizations manage employee records and attendance efficiently. The system is designed to streamline HR processes, including managing employee details, attendance tracking, generating reports, and monitoring absences. This project provides a user-friendly interface, accessible to administrators and employees.

## Features

- **Employee Registration and Management**: Allows administrators to register new employees and manage their details.
- **Attendance Tracking**: Automatically track attendance and record absences of employees.
- **Leave Management**: Manage employee leave requests and status.
- **Report Generation**: Generate detailed attendance and leave reports.
- **User Roles**: Admin and Employee roles for varying levels of access.
- **Responsive Interface**: User-friendly interface for managing data and viewing reports.
- **Database Integration**: Efficient storage of employee data using a relational database.

## Technologies Used

- **Backend**: ASP.NET
- **Frontend**: HTML, CSS, JavaScript
- **Database**: SQL Server
- **Version Control**: Git
- **Tools**: Visual Studio

## Installation Instructions

1. Clone the repository to your local machine.
   ```bash
   git clone <repository-url>
   ```
2. Open the project in **Visual Studio**.
3. Restore NuGet packages and ensure all dependencies are installed.
4. Update the database connection string in the `web.config` file to match your environment.
5. Build and run the project.

## Database Setup

1. Install **SQL Server**.
2. Create a new database for the project.
3. Run the provided SQL scripts in the `/Database` folder to set up the necessary tables.
4. Update the database connection string in the project configuration files.

## Usage

1. **Admin Panel**: Admin users can log in to manage employee records, attendance, and generate reports.
2. **Employee Panel**: Employees can log in to view their attendance, request leaves, and update personal information.

## Project Screenshots

Here are some screenshots showcasing the different modules and functionality of the system:

1. **Login**
    <img src="https://github.com/user-attachments/assets/fa2da668-203c-4ddc-b7c9-b9c1bdf11595"/>
    
2. **Admin Panel**
    <img src="https://github.com/user-attachments/assets/43f8500d-a628-4d77-a491-dfcc335ad149"/>
    
3. **Department Create**
     <img src="https://github.com/user-attachments/assets/3542c820-ad64-4d72-aded-b7ce4d95defa"/>

4. **Department List**
       <img src="https://github.com/user-attachments/assets/9018f036-0b70-4355-a19f-130929756735"/>

5. **Create Option of leave**
       <img src="https://github.com/user-attachments/assets/4e9babdb-cc68-49aa-91b6-f51c909be4ab"/>

6. **Leave List**
      <img src="https://github.com/user-attachments/assets/c80bdb2f-2692-4097-99de-0a929fa5592b" />

7. **Add Employee**
       <img src="https://github.com/user-attachments/assets/67c9cbd7-0022-469c-8246-2f705d7263ca" />


## Future Enhancements

- Integration with email notifications for absence alerts.
- More advanced reporting features with filters by date range and departments.
- Performance evaluation and management module.

---







