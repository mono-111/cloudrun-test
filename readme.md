# Code Sample for Streamlit-based Application  
   
This repository contains code sample for a Streamlit-based application.  

## Files  
   
The repository contains the following files:  
   
- Dockerfile: This file is used to build a container image of the application.  
- app.py: This is the main Python file that contains the code for the Streamlit application.  
- requirements.txt: This file lists all the Python dependencies required by the application.  
   
## Usage  
   
To run the Streamlit application, you have two options:  
   
1. Docker: Build a container image using the provided Dockerfile and run a container based on that image.  
   - Make sure you have [podman](https://podman.io/docs) installed on your system.  
   - Run the following command to build the container image:  
     ```  
     podman build -t streamlit-app .  
     ```  
   - Once the image is built, run the following command to start a container:  
     ```  
     podman run -p=8501:8501 streamlit-app 
     ```  
   - Open your browser and navigate to `http://localhost:8501` to access the application.  
   
2. Local environment: Install the required Python dependencies and run the application locally.  
   - Make sure you have Python 3.x installed on your system.  
   - Install the dependencies by running the following command:  
     ```  
     pip install -r requirements.txt  
     ```  
   - Run the following command to start the application:  
     ```  
     streamlit run app.py  
     ```  
   - Open your browser and navigate to `http://localhost:8501` to access the application.  
   
