@echo off
echo Creating virtual environment "hep"...
python -m venv hep

echo.
echo Activating environment and installing dependencies...
echo Note: Execution policy is handled internally by calling the batch activator.

:: Activate the environment and run installs
:: We use "call" to ensure the script continues after the activation step
call hep\Scripts\activate.bat && (
    echo Installing Data Science stack...
    pip install numpy pandas matplotlib
    
    echo.
    echo Installing Qiskit stack...
    pip install qiskit qiskit-ibm-runtime pylatexenc
    
    echo.
    echo Installing Qiskit Aer...
    pip install qiskit-aer
    
    echo.
    echo All packages installed successfully!
) || (
    echo.
    echo An error occurred during installation.
)

pause