-- =========================================
-- SILVER LAYER
-- Cleaned and standardized data
-- =========================================

CREATE OR REPLACE TABLE anxitey.silver.anxiety_clean
AS

SELECT DISTINCT

    CAST(Age AS INT) AS Age,

    TRIM(Gender) AS Gender,

    TRIM(Occupation) AS Occupation,

    CAST(`Sleep Hours` AS DOUBLE)
        AS Sleep_Hours,

    CAST(`Physical Activity (hrs/week)` AS DOUBLE)
        AS Physical_Activity_Hours_Per_Week,

    CAST(`Caffeine Intake (mg/day)` AS INT)
        AS Caffeine_Intake_Mg_Per_Day,

    CAST(`Alcohol Consumption (drinks/week)` AS DOUBLE)
        AS Alcohol_Consumption_Drinks_Per_Week,

    TRIM(Smoking) AS Smoking,

    TRIM(`Family History of Anxiety`)
        AS Family_History_Of_Anxiety,

    CAST(`Stress Level (1-10)` AS INT)
        AS Stress_Level,

    CAST(`Heart Rate (bpm)` AS INT)
        AS Heart_Rate_Bpm,

    CAST(`Breathing Rate (breaths/min)` AS INT)
        AS Breathing_Rate_Breaths_Per_Min,

    CAST(`Sweating Level (1-5)` AS INT)
        AS Sweating_Level,

    TRIM(Dizziness) AS Dizziness,

    TRIM(Medication) AS Medication,

    CAST(`Therapy Sessions (per month)` AS INT)
        AS Therapy_Sessions_Per_Month,

    TRIM(`Recent Major Life Event`)
        AS Recent_Major_Life_Event,

    CAST(`Diet Quality (1-10)` AS INT)
        AS Diet_Quality,

    CAST(`Anxiety Level (1-10)` AS INT)
        AS Anxiety_Level

FROM  anxitey.bronze.family_anxiety_14_dataset;
