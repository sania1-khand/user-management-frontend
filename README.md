# User Management Frontend

A responsive Flutter Login and Signup application connected to an ASP.NET Core Web API and SQL Server database.

## Features

- User registration
- User login
- Form validation
- Password visibility toggle
- Loading indicators
- Success and error messages
- Dashboard with user information
- Logout functionality
- ASP.NET Core API integration
- SQL Server database integration

## Technologies Used

- Flutter
- Dart
- Material Design
- HTTP package
- ASP.NET Core Web API
- Entity Framework Core
- SQL Server

## Application Flow

1. The user opens the Login screen.
2. A new user can navigate to the Signup screen.
3. Flutter sends the registration data to the ASP.NET Core API.
4. The API validates and saves the user in SQL Server.
5. After successful signup, the Dashboard displays the user's details.
6. Registered users can log in with their email and password.
7. The user can log out and return to the Login screen.

## Project Structure

```text
lib/
├── models/
│   └── user_model.dart
├── screens/
│   ├── login_screen.dart
│   ├── signup_screen.dart
│   └── dashboard_screen.dart
├── services/
│   └── auth_service.dart
└── main.dart
```

## API Endpoints

```text
POST /api/Auth/signup
POST /api/Auth/login
```

## Backend Repository

[User Management Backend](https://github.com/sania1-khand/Repository-name-user-management-backend)

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/sania1-khand/user-management-frontend.git
```

### 2. Open the project folder

```bash
cd user-management-frontend
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the application

```bash
flutter run
```

Select Chrome, Edge, Windows, or another available Flutter device.

## Backend Configuration

The ASP.NET Core backend must be running before testing Signup or Login.

The development API URL is configured inside:

```text
lib/services/auth_service.dart
```

Current local API URL:

```text
https://localhost:7273/api/Auth
```

The localhost port may be different on another computer.

## Screens

- Login Screen
- Signup Screen
- Dashboard Screen

## Security

- Passwords are not stored as plain text.
- Password hashing is handled by the ASP.NET Core backend.
- Duplicate email registration is prevented.

## Author

**Sania Khand**