-- =========================================
-- GOLD LAYER
-- Analytics-ready table for Power BI
-- =========================================

CREATE OR REPLACE TABLE anxitey.gold.anxiety_analytics
AS

SELECT

    Age,

    CASE
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age BETWEEN 18 AND 24 THEN '18-24'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS Age_Group,

    Gender,

    Occupation,

    Sleep_Hours,

    Physical_Activity_Hours_Per_Week,

    Caffeine_Intake_Mg_Per_Day,

    Alcohol_Consumption_Drinks_Per_Week,

    Smoking,

    Family_History_Of_Anxiety,

    Stress_Level,

    CASE
        WHEN Stress_Level <= 3 THEN 'Low'
        WHEN Stress_Level <= 6 THEN 'Moderate'
        ELSE 'High'
    END AS Stress_Category,

    Heart_Rate_Bpm,

    Breathing_Rate_Breaths_Per_Min,

    Sweating_Level,

    Dizziness,

    Medication,

    Therapy_Sessions_Per_Month,

    Recent_Major_Life_Event,

    Diet_Quality,

    Anxiety_Level,

    CASE
        WHEN Anxiety_Level <= 3 THEN 'Low'
        WHEN Anxiety_Level <= 6 THEN 'Moderate'
        ELSE 'High'
    END AS Anxiety_Category

FROM anxitey.silver.anxiety_clean;
