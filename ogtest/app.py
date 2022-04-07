import streamlit as st
from predict_page import show_predict_page
from explore_page import show_explore_page
from turtle import width
import pandas as pd
import matplotlib as plt
import streamlit.components.v1 as components


page = st.sidebar.selectbox("Explore or Predict",("Predict", "Explore"))

if page == "Predict":
    show_predict_page()
else:
    show_explore_page
