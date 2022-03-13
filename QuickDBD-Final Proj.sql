-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Jy5Jfb
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Data_Cleaned" (
    "index" int   NOT NULL,
    "Job_Title" varchar   NOT NULL,
    "Salary_Estimate" int   NOT NULL,
    "Job_Description" varchar   NOT NULL,
    "Rating" int   NOT NULL,
    "Company_Name" varchar   NOT NULL,
    "Location" varchar   NOT NULL,
    "Headquarters" varchar   NOT NULL,
    "Size" int   NOT NULL,
    "Founded" int   NOT NULL,
    "Type_of_ownership" varchar   NOT NULL,
    "Industry" varchar   NOT NULL,
    "Sector" varchar   NOT NULL,
    "Revenue" int   NOT NULL,
    "Competitors" varchar   NOT NULL,
    "Hourly" int   NOT NULL,
    "Employer_provided" int   NOT NULL,
    "Lower_Salary" int   NOT NULL,
    "Upper_Salary" int   NOT NULL,
    "Avg_Salary" int   NOT NULL,
    "company_txt" varchar   NOT NULL,
    "Job_Location" varchar   NOT NULL,
    "Age" int   NOT NULL,
    "Python" int   NOT NULL,
    "spark" int   NOT NULL,
    "aws" int   NOT NULL,
    "excel" int   NOT NULL,
    "sql" int   NOT NULL,
    "sas" int   NOT NULL,
    "keras" int   NOT NULL,
    "pytorch" int   NOT NULL,
    "scikit" int   NOT NULL,
    "tensor" int   NOT NULL,
    "hadoop" int   NOT NULL,
    "tableau" int   NOT NULL,
    "bi" int   NOT NULL,
    "flink" int   NOT NULL,
    "mongo" int   NOT NULL,
    "google_an" int   NOT NULL,
    "job_title_sim" varchar   NOT NULL,
    "seniority_by_title" varchar   NOT NULL,
    "Degree" varchar   NOT NULL,
    CONSTRAINT "pk_Data_Cleaned" PRIMARY KEY (
        "index"
     )
);

CREATE TABLE "Level_FYI" (
    "timestamp" datetime   NOT NULL,
    "company" varchar   NOT NULL,
    "level" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    "totalyearlycompensation" int   NOT NULL,
    "location" varchar   NOT NULL,
    "yearsofexperience" int   NOT NULL,
    "yearsatcompany" int   NOT NULL,
    "tag" varchar   NOT NULL,
    "basesalary" int   NOT NULL,
    "stockgrantvalue" int   NOT NULL,
    "bonus" int   NOT NULL,
    "gender" varchar   NOT NULL,
    "otherdetails" varchar   NOT NULL,
    "cityid" int   NOT NULL,
    "dmaid" int   NOT NULL,
    "rowNumber" int   NOT NULL,
    "Masters_Degree" int   NOT NULL,
    "Bachelors_Degree" int   NOT NULL,
    "Doctorate_Degree" int   NOT NULL,
    "Highschool" int   NOT NULL,
    "Some_College" int   NOT NULL,
    "Race_Asian" int   NOT NULL,
    "Race_White" int   NOT NULL,
    "Race_Two_Or_More" int   NOT NULL,
    "Race_Black" int   NOT NULL,
    "Race_Hispanic" int   NOT NULL,
    "Race" varchar   NOT NULL,
    "Education" varchar   NOT NULL,
    CONSTRAINT "pk_Level_FYI" PRIMARY KEY (
        "rowNumber"
     )
);

ALTER TABLE "Data_Cleaned" ADD CONSTRAINT "fk_Data_Cleaned_Job_Title_Salary_Estimate_Company_Name_Location_Degree" FOREIGN KEY("Job_Title", "Salary_Estimate", "Company_Name", "Location", "Degree")
REFERENCES "Level_FYI" ("title", "basesalary", "company", "location", "Education");

