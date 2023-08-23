# Chocolatey Windows Software Installation Script

This repository contains a Windows batch script that automates the installation of software packages using Chocolatey. The script provides a user-friendly menu for installing developer tools, setting up Chocolatey itself, upgrading installed packages, and more.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Menu Options](#menu-options)
- [Notes](#notes)
- [Contributing](#contributing)
- [License](#license)

## Introduction

As a part of our software provisioning process, this script streamlines the setup of software packages on new systems using Chocolatey, a popular package manager for Windows. The script provides a menu-based interface that allows users to easily install developer tools, upgrade installed packages, and manage Chocolatey installation.

## Features

- User-friendly menu-driven interface.
- Install and upgrade developer tools and applications using Chocolatey.
- Setup Chocolatey itself with administrative privileges.
- Perform a global upgrade of all installed packages.

## Getting Started

### Prerequisites

1. Windows operating system.
2. Administrative privileges.

### Installation

1. Clone this repository or download the `chocolatey.bat`, `devapps.config`, and `chocoupgrade.bat` files to your local machine.

## Usage

1. Run the `chocolatey.bat` script with administrative privileges.
2. Follow the on-screen menu prompts to select the desired action.
3. The script will guide you through the installation, upgrading, or setup of Chocolatey packages.

## Menu Options

- **Install Developer apps**: Installs developer tools specified in the `devapps.config` file using Chocolatey.
- **Install Chocolatey (First Time)**: Installs Chocolatey package manager and enables global confirmation.
- **Upgrade apps**: Upgrades all installed Chocolatey packages.
- **Exit**: Exits the script.

## Notes

- Always exercise caution when running scripts that require administrative privileges.
- Ensure that the necessary configuration files (`devapps.config`) are in the same directory as the script.
- The script may require a restart after installing or upgrading Chocolatey.

## Contributing

Contributions are welcome! If you encounter issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
