# C++ Makefile Template

A simple and modern C++ project template using Make, Clang, and Visual Studio Code.

This template provides a ready-to-use development environment for C++ projects on Debian-based Linux systems (including WSL), with a focus on modern tooling.

## Features

*   **Build System**: A straightforward `Makefile` for compiling your project.
*   **Compiler**: Configured to use the **Clang** C++ compiler.
*   **Toolchain**: Automated installation of the complete LLVM/Clang toolchain (version 21), including:
    *   `clangd` for language server support (autocompletion, diagnostics).
    *   `lldb` and `lldb-dap` for powerful debugging.
    *   `clang-format` and `clang-tidy` for code formatting and static analysis.
*   **VS Code Integration**:
    *   Recommended extensions for a seamless C++ development experience.
    *   Pre-configured `build` task.
    *   Pre-configured `debug` launch configuration.

## Getting Started

### Prerequisites

This template is designed for Debian-based Linux distributions (e.g., Debian, Ubuntu, or WSL with a Debian/Ubuntu environment).

### Installation

An installation script is provided to set up the complete LLVM/Clang development environment. This script will:
1.  Update your system's package lists.
2.  Install necessary prerequisite tools like `make` and `gcc`.
3.  Download and run the official LLVM script to install `clang`, `lldb`, `clangd`, and other tools (version 21).
4.  Create a symbolic link for the LLDB debug adapter (`lldb-dap`) to ensure VS Code can find it.

To run the installation script, execute the following command from the root of the project directory:

```bash
./bin/install.sh
```

The script uses `sudo` for system-wide package installation, so it will likely prompt you for your password.

## Usage in VS Code

1.  **Open the folder in VS Code.**
2.  When prompted, **install the recommended extensions**. These are crucial for language support (`vscode-clangd`) and debugging (`lldb-dap`).
3.  **Build the project**: Press `Ctrl+Shift+B` (or `Cmd+Shift+B` on macOS) to run the default build task, which executes `make`.
4.  **Debug the application**:
    *   Set a breakpoint in `main.cpp`.
    *   Go to the "Run and Debug" view (the bug icon in the activity bar) and press the green play button (or simply press `F5`).
