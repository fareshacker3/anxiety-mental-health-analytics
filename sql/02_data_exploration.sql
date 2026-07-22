-- =========================================
-- DATA EXPLORATION
-- =========================================

-- Preview data
SELECT *
FROM anxitey.bronze.family_anxiety_14_datase
LIMIT 20;


-- Count rows
SELECT COUNT(*) AS total_rows
FROM anxitey.bronze.family_anxiety_14_datase;


-- Table structure
DESCRIBE TABLE anxitey.bronze.family_anxiety_14_datase;

-- Check NULL values
SELECT
    COUNT(*) AS total_rows,

    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END)
        AS age_nulls,

    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END)
        AS gender_nulls,

    SUM(CASE WHEN `Sleep Hours` IS NULL THEN 1 ELSE 0 END)
        AS sleep_nulls,

    SUM(CASE WHEN `Stress Level (1-10)` IS NULL THEN 1 ELSE 0 END)
        AS stress_nulls,

    SUM(CASE WHEN `Anxiety Level (1-10)` IS NULL THEN 1 ELSE 0 END)
        AS anxiety_nulls

FROM anxitey.bronze.family_anxiety_14_datase;


-- Check invalid Age
SELECT *
FROM anxitey.bronze.family_anxiety_14_datase
WHERE Age < 0 OR Age > 120;


-- Check invalid Sleep Hours
SELECT *
FROM anxitey.bronze.family_anxiety_14_datase
WHERE `Sleep Hours` < 0
   OR `Sleep Hours` > 24;


-- Check invalid Stress Level
SELECT *
FROM anxitey.bronze.family_anxiety_14_datase
WHERE `Stress Level (1-10)` < 1
   OR `Stress Level (1-10)` > 10;


-- Check invalid Anxiety Level
SELECT *
FROM anxitey.bronze.family_anxiety_14_datase
WHERE `Anxiety Level (1-10)` < 1
   OR `Anxiety Level (1-10)` > 10;


-- Gender Distribution
SELECT
    Gender,
    COUNT(*) AS total
FROM anxitey.bronze.family_anxiety_14_datase
GROUP BY Gender
ORDER BY total DESC;


-- Smoking Distribution
SELECT
    Smoking,
    COUNT(*) AS total
FROManxitey.bronze.family_anxiety_14_datase
GROUP BY Smoking
ORDER BY total DESC;


-- Anxiety Distribution
SELECT
    `Anxiety Level (1-10)` AS anxiety_level,
    COUNT(*) AS total
FROM anxitey.bronze.family_anxiety_14_datase
GROUP BY `Anxiety Level (1-10)`
ORDER BY anxiety_level;
