@echo off
SETLOCAL

echo Checking required packages...

pip show streamlit >nul 2>&1 || (
    echo Installing Streamlit...
    pip install streamlit
)

pip show earthengine-api >nul 2>&1 || (
    echo Installing Earth Engine API...
    pip install earthengine-api
)

pip show streamlit-folium >nul 2>&1 || (
    echo Installing Streamlit-Folium...
    pip install streamlit-folium
)

pip show folium >nul 2>&1 || (
    echo Installing Folium...
    pip install folium
)

echo.
echo Starting the app...
streamlit run gee_index_app.py

pause
