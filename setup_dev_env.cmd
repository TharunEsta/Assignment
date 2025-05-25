@echo off
echo Installing Git...
winget install --id Git.Git -e --source winget

echo Installing Python 3.11...
winget install --id Python.Python.3.11 -e --source winget

echo Installing Visual Studio Code...
winget install --id Microsoft.VisualStudioCode -e --source winget

echo Installing uv...
curl -L https://astral.sh/uv/install.ps1 -o install-uv.ps1
powershell -ExecutionPolicy Bypass -File install-uv.ps1

echo Adding uv to PATH...
set PATH=%USERPROFILE%\.cargo\bin;%PATH%

echo Installing Python packages...
uv pip install numpy pandas streamlit

echo Installing VS Code Extensions...
code --install-extension charliermarsh.ruff
code --install-extension ms-python.debugpy
code --install-extension ms-toolsai.jupyter
code --install-extension cline.vscode-cline

echo ✅ Development environment setup complete!
pause
