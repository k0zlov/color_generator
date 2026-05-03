## 📱 Demo

<img src="./assets/gif/demo.gif" width="300" />

## ✨ Features

* **Generation Possibilities:** Generate random RGB colors with a single tap. Experience any of the **16,777,216**
  unique
  color combinations available in the RGB spectrum.
* **Adaptive Theming:** Seamlessly switch between Light, Dark, and System default themes. The UI automatically adapts,
  calculating perfect contrast (Luminance) to ensure text is always readable against the generated colors.
* **History & Management:**
    * Automatically saves your generated colors.
    * Scroll through your past colors with infinite pagination.
    * Tap any color in the history to copy its **HEX code** directly to the clipboard.
    * Clear the entire history with one tap.

## 🛠 Tech Stack & Architecture

This project is built using modern Flutter development standards:

* **Architecture:** Clean Architecture (Domain, Data, Presentation layers)
* **State Management:** `flutter_bloc` (Cubits for UI state, Event Bus / Notification Service for global side effects)
* **Local Storage:** `drift` (SQLite) for robust, type-safe database management and paginated history fetching.
* **Routing:** `go_router` for declarative navigation and nested shells (Bottom Navigation Bar).
* **Functional Programming:** `fpdart` for elegant error handling (`Either`/`Result` types).
* **Code Generation:** `freezed` for immutable models and unions.

## 🚀 Getting Started

### Prerequisites

* Flutter SDK (latest stable version)
* Dart SDK

### Installation

1. Clone the repository:

```bash
git clone https://github.com/k0zlov/color_generator.git