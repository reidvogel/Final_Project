
from http.client import OK
import streamlit as st
import pickle
import numpy as np


def load_models():
   with open('testmodel.pkl', 'rb') as file:
    testmodel = pickle.load(file)
    return testmodel


testmodel = load_models()

rf_loaded = testmodel["model"]
le_ownership = testmodel["le_ownership"]
le_Sector = testmodel["le_Sector"]
le_job_state = testmodel["le_job_state"]
le_job_simp = testmodel["le_job_simp"]
le_seniority = testmodel["le_seniority"]


def show_predict_page():
    st.title(" Data jobs Salary Prediction")
    st.write("""### We need some information to predict the salary""")
   
    Sector = (
            "Accounting & Legal",
            "Aerospace & Defense",
            "Agriculture & Forestry",
            "Arts Entertainment & Recreation",
            "Biotech & Pharmaceutical",
            "Business Services",
            "Construction - Repair & Maintenance",
            "Consumer Services",
            "Education",
            "Finance",
            "Goverment",
            "Health Care",
            "Information Technology",
            "Insurance",
            "Manufacturing",
            "Media",
            "Mining & Metals",
            "Non-Profit",
            "Oil - Gas - Energy & Utilities",
            "Real Estate",
            "Retail",
            "-1",
            "Telecommunications",
            "Transportation & Logistics",
            "Travel & Tourism"
        )
            
    ownership = (
            "Company - Private",
            "Other Organization",
            "Government",
            "Company - Public",
            "Hospital",
            "Subsidiary & Business Segment",
            "Nonprofit Organization",
            "Unknown",
            "College / University",
            "School / School District",
            "-1",
        )

                
    job_state = (
            "NM",
            "MD",
            "FL",
            "WA",
            "NY",
            "TX",
            "CA",
            "VA",
            "MA",
            "NJ",
            "CO",
            "IL",
            "KY",
            "OR",
            "CT",
            "MI",
            "DC",
            "OH",
            "AL",
            "MO",
            "PA",
            "GA",
            "IN",
            "LA",
            "WI",
            "NC",
            "AZ",
            "NE",
            "MN",
            "UT",
            "TN",
            "DE",
            "ID",
            "RI",
            "IA",
            "SC",
            "KS",
        )
                

                
    job_simp = (
            "Data scientist",
            "Analyst",
            "Data engineer",
            "Director",
            "Manager",
            "Machine Learning Engineer",
        )
                
    Seniority = (
            "Jr.",
            "Senior",
            "other",
        )
                
    Sector = st.selectbox("Sector", Sector)
    job_state = st.selectbox("State", job_state)
    ownership = st.selectbox("Ownership", ownership)
    job_simp = st.selectbox("Title", job_simp)
    Seniority = st.selectbox("Seniority", Seniority)

    python_yn = st.checkbox("I know Python")     
    excel = st.checkbox("I know Excel")     
    aws = st.checkbox("I know AWS")     
    Spark = st.checkbox("I know Spark") 
    R_yn = st.checkbox("I know R ")      

    st.button("Calculate Salary")
    if OK :
        X = ((np.array(ownership, Sector, job_state, job_simp, Seniority).reshape(1,-1))[0])
        X[:, 0] = le_ownership.transform(X[:,0])
        X[:, 0] = le_Sector.transform(X[:,0])
        X[:, 0] = le_job_state.transform(X[:,0])
        X[:, 0] = le_job_simp.transform(X[:,0])
        X[:, 0] = le_seniority.transform(X[:,0])
        X = X.astpye(float)

    salary = model.predict(X)
    st.subheader(f"The estimated salary is ${salary[0]:.2f}")






