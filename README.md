
---

## ✅ First-Time Setup (One-Time)

> ⚠️ Run all setup as **Administrator** for service installation.

1. **Download the repo** or clone it:

    ```sh
    git clone https://github.com/clikhar/ipis.git
    cd ipis
    ```

2. **Download Python Embedded Zip**  
   Get it from https://www.python.org/downloads/windows/ → "Windows embeddable package (64-bit)"

   Extract it into the `python-embed/` folder.

3. **Run the setup script**:

    ```bat
    Right-click → run_setup.bat → Run as Administrator
    ```

   This will:
   - Create a virtual environment
   - Install required Python packages
   - Install the service using NSSM

---

## 🔁 After Reboot

Your Django web app will start automatically and be accessible at:

