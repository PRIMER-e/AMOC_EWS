#!/usr/bin/env bash

# Set-up the Python virtual environment 

#sudo apt install proj-bin
#sudo apt install libproj-dev 
#sudo apt install libgeos-dev

## Create a Python virtual environment
python3 -m venv env

## Activate the virtual environment
source env/bin/activate

## Check that we are using Python from the virtual environment
which python3

# Install packages
## Force a specific version of pandas as there is a wheel for it and
## we won't have to compile it (which can take 20 minutes).
python3 -m pip install pandas==0.24.2
python3 -m pip install netCDF4
python3 -m pip install scipy 
python3 -m pip install matplotlib
python3 -m pip install statsmodels 
python3 -m pip install lagcorr 
python3 -m pip install pyshp
python3 -m pip install shapely
python3 -m pip install cartopy

# Run the code
python3 shiftgrid.py
python3 EWS_functions.py 

python3 ssts.py
python3 salinity.py
python3 model_data_comparison.py

# Deactivate the virtual environment
deactivate
