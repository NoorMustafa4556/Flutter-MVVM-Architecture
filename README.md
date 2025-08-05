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
# 👋 Hi, I'm Noor Mustafa

A passionate and results-driven **Flutter Developer** from **Bahawalpur, Pakistan**, specializing in building elegant, scalable, and high-performance cross-platform mobile applications using **Flutter** and **Dart**.

With a strong understanding of **UI/UX principles**, **state management**, and **API integration**, I aim to deliver apps that are not only functional but also user-centric and visually compelling. My development approach emphasizes clean code, reusability, and performance.

---

## 🚀 What I Do

- 🧑‍💻 **Flutter App Development** – I build cross-platform apps for Android, iOS, and the web using Flutter.
- 🔗 **API Integration** – I connect apps to powerful RESTful APIs and third-party services.
- 🎨 **UI/UX Design** – I craft responsive and animated interfaces that elevate the user experience.
- 🔐 **Authentication & Firebase** – I implement secure login systems and integrate Firebase services.
- ⚙️ **State Management** – I use Provider, setState, and Riverpod (in-progress) for scalable app architecture.
- 🧠 **Clean Architecture** – I follow MVVM and MVC patterns for maintainable code.

---


## 🌟 Projects I'm Proud Of

- 🌤️ **[Live Weather Check App](https://github.com/NoorMustafa4556/Live-Weather-Check-App)** – Real-time weather forecast using OpenWeatherMap API  
- 🤖 **[AI Chatbot (Gemini)](https://github.com/NoorMustafa4556/Ai-ChatBot)** – Conversational AI chatbot powered by Google’s Gemini  

- 🍔 **[Recipe App](https://github.com/NoorMustafa4556/Recipe-App)** – Discover recipes with images, categories, and step-by-step instructions  

- 📚 **[Palindrome Checker](https://github.com/NoorMustafa4556/Palindrome-Checker-App)** – A Theory of Automata-based project to identify palindromic strings  

> 🎯 Check out all my repositories on [github.com/NoorMustafa4556](https://github.com/NoorMustafa4556?tab=repositories)

---

## 🛠️ Tech Stack & Tools

| Area                | Tools/Technologies |
|---------------------|--------------------|
| **Languages**       | Dart, JavaScript, Python (basic) |
| **Mobile Framework**| Flutter            |
| **Backend/Cloud**   | Firebase (Auth, Realtime DB, Storage), Django, Flask |
| **Frontend (Web)**  | React.js (basic), HTML, CSS, Bootstrap |
| **State Management**| Provider, setState, Riverpod (learning) |
| **API & Storage**   | REST APIs, HTTP, Shared Preferences, SQLite |
| **Design**          | Material, Cupertino, Lottie Animations, Gradient UI |
| **Version Control** | Git, GitHub        |
| **Tools**           | Android Studio, VS Code, Postman, Figma (basic) |

---

## 🧰 Tech Toolbox

<p align="left">
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white"/>
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
  <img src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black"/>
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"/>
  <img src="https://img.shields.io/badge/Django-092E20?style=for-the-badge&logo=django&logoColor=white"/>
  <img src="https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB"/>
  <img src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white"/>
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white"/>
</p>

---

## 📈 Current Focus

- 💡 Enhancing Flutter animations and transitions
- 🤖 Implementing AI-based logic with Google Gemini API
- 📲 Building portfolio-level applications using full-stack Django & Flutter

---

## 📫 Let's Connect!

<p align="left">
  <a href="https://x.com/NoorMustafa4556" target="blank">
    <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="X / Twitter" height="30" width="40" />
  </a>
  <a href="https://www.linkedin.com/in/noormustafa4556/" target="blank">
    <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="LinkedIn" height="30" width="40" />
  </a>
  <a href="https://www.facebook.com/NoorMustafa4556" target="blank">
    <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="Facebook" height="30" width="40" />
  </a>
  <a href="https://instagram.com/noormustafa4556" target="blank">
    <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg" alt="Instagram" height="30" width="40" />
  </a>
  <a href="https://wa.me/923087655076" target="blank">
    <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/whatsapp.svg" alt="WhatsApp" height="30" width="40" />
  </a>
  <a href="https://www.tiktok.com/@noormustafa4556" target="blank">
    <img src="https://cdn-icons-png.flaticon.com/512/3046/3046122.png" alt="TikTok" height="30" width="30" />
  </a>
</p>

- 📍 **Location:** Bahawalpur, Punjab, Pakistan

---

> _“Learning never stops. Every app I build makes me a better developer — one widget at a time.”_

---




