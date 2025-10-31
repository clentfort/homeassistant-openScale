# OpenScale CLI

This project is the first step in creating a Python-based Home Assistant plugin/addon to communicate with Bluetooth scales, based on the openScale Android app. The initial focus is on supporting the Beurer bf710 scale.

## Project Goal

The ultimate goal is to create a Home Assistant plugin that can communicate with various Bluetooth scales, starting with the Beurer bf710. This CLI is a stepping stone to developing and testing the Bluetooth communication logic in isolation.

## Getting Started

### Prerequisites

*   Python 3.10+
*   A Bluetooth-enabled machine

### Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/your-username/your-repository.git
    cd your-repository
    ```
2.  Install the project and its dependencies:
    ```bash
    pip install .
    ```

### Running the Scanner

To scan for nearby Bluetooth devices, run the following command:

```bash
python3 src/openscale_cli/main.py
```

This will output a list of discovered Bluetooth devices.
