# Flutter MVVM Architecture Starter Kit 🚀

A robust and scalable MVVM (Model-View-ViewModel) architecture boilerplate for Flutter, designed to build clean, maintainable, and testable applications. 

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)

## ✨ About This Project

This project serves as a starter kit for anyone looking to implement a structured architecture in their Flutter projects from day one. It solves the common problem of unorganized code by separating concerns into three main layers:

-   **Model:** Represents your data structures (e.g., `UserModel`, `MoviesModel`).
-   **View:** The UI of your application (Widgets, Screens). Its only job is to display what the ViewModel tells it to.
-   **ViewModel:** Acts as a bridge between the View and the Model. It handles all the business logic and state management.

## 🎯 Key Features

-   **MVVM Architecture:** For a clean separation of UI, business logic, and data.
-   **Provider State Management:** Simple and effective state management solution.
-   **Repository Pattern:** To abstract the data layer from the rest of the app.
-   **Robust Network Layer:** A reusable service for making API calls (`GET`, `POST`) with a base class for easy switching between `http`, `dio`, etc.
-   **Custom Exception Handling:** Gracefully handle API errors and network issues.
-   **Centralized Navigation:** A clean routing system to manage all screen navigations from one place.
-   **Reusable Components:** Common widgets like `RoundButton` to maintain a consistent UI and avoid code duplication.

-   ---


<h2 align="center">📸 App Screenshots</h2>

<p align="center">
  <img src="https://github.com/NoorMustafa4556/Flutter-MVVM-Architecture/blob/main/assets/images/1.png" alt="Splash Screen" width="30%" style="margin: 0 40px;"/>
  <img src="https://github.com/NoorMustafa4556/Flutter-MVVM-Architecture/blob/main/assets/images/2.png" alt="Signup Screen" width="30%" style="margin: 0 40px;"/>
  <img src="https://github.com/NoorMustafa4556/Flutter-MVVM-Architecture/blob/main/assets/images/3.png" alt="Login Screen" width="30%" style="margin: 0 40px;"/>
  <img src="https://github.com/NoorMustafa4556/Flutter-MVVM-Architecture/blob/main/assets/images/4.png" alt="Home / Error State" width="30%" style="margin: 0 40px;"/>
</p>



## 🏗️ Architectural Flow

The data flow in this architecture is unidirectional and easy to follow:


1.  **View** triggers an event (e.g., button press).
2.  **ViewModel** catches the event, processes the business logic, and calls the **Repository**.
3.  **Repository** fetches data from the **API** or a local database.
4.  **ViewModel** receives the data and updates its state.
5.  **View**, which is listening to the ViewModel, automatically rebuilds to display the new state (e.g., show a loading spinner, data, or an error message).



## 🛠️ Getting Started

Follow these instructions to get a copy of the project up and running on your local machine.

### Prerequisites

You need to have the Flutter SDK installed on your machine.
- [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

### Installation

1.  Clone the repository:
    ```sh
    git clone https://github.com/NoorMustafa4556/Flutter-MVVM-Architecture.git
    ```
2.  Navigate to the project directory:
    ```sh
    cd Flutter-MVVM-Architecture
    ```
3.  Install the dependencies:
    ```sh
    flutter pub get
    ```
4.  Run the app:
    ```sh
    flutter run
    ```

## 📦 Main Packages Used

-   **provider:** For state management.
-   **http:** For making API calls.
-   **flutter_spinkit:** For beautiful loading animations.
-   **fluttertoast:** For showing toast messages.
-   **shared_preferences:** For storing simple data locally.



