readme_content = """# Vivado UVM Base Project Template

This repository provides a base template and automation scripts for setting up, compiling, and running SystemVerilog UVM (Universal Verification Methodology) testbenches using Xilinx Vivado on Windows.

## 📁 Repository Structure

* **`design.v`** : A skeleton Verilog file for your RTL design.
* **`testbench.sv`** : A basic SystemVerilog testbench pre-configured to import the UVM package (`uvm_pkg`).
* **`run.bat`** : A comprehensive batch script that cleans old simulation files, compiles the design and testbench, elaborates the design, and executes the simulation using Vivado's `xsim`.
* **`create_project.bat`** : A utility script to quickly generate new projects by cloning this base template into a new directory.

## ⚙️ Prerequisites

1. **Xilinx Vivado:** Ensure Vivado is installed on your system. You **must** add the Vivado binary path to your Windows `PATH` environment variable so the batch scripts can recognize commands like `xvlog`, `xelab`, and `xsim`.
   * *Target Path:* `D:\\Vivado\\2025.1\\Vivado\\bin`
2. **UVM Library:** The `run.bat` script is configured to look for the UVM 1.2 source files at `C:\\UVM\\1.2\\src`. Make sure the UVM library is placed in this directory, or modify the `run.bat` script to point to your custom UVM installation path.
3. **Template Directory:** The `create_project.bat` script assumes the template resides at `E:\\VLSI_Templates\\base_project`. Modify the `TEMPLATE_PATH` variable in the script if your repository is cloned elsewhere.

## 🚀 Usage

### 1. Creating a New Project
Use the `create_project.bat` script to generate a fresh working directory containing all the necessary base files. Open your command prompt and run:
