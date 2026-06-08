-- ENERGY REVOLUTION: FROM COAL TO CLEAN POWER --

USE PROJECTDB;

SELECT * FROM Energy_share_Cleaned_Dataset;

-- 1.TOTAL COUNTRIES AND POPULATION
SELECT COUNT(DISTINCT country)AS COUNTRY, SUM(population)AS POPULATIONS
FROM Energy_share_Cleaned_Dataset
ORDER BY COUNTRY;

-- 2.NAME OF COUNTRIES
SELECT DISTINCT country FROM Energy_share_Cleaned_Dataset
ORDER BY country;

-- 3.TOTAL YEARS
SELECT COUNT(DISTINCT years)AS YEARS FROM Energy_share_Cleaned_Dataset;

-- 4.ELECTRICITY GENERATED v/s ELECTRICITY DEMANDED
SELECT SUM(CAST(electricity_generation AS decimal(10,2)))AS ELE_GENERATED, 
SUM(CAST(electricity_demand AS decimal(10,2)))AS ELE_DEMANDED FROM Energy_share_Cleaned_Dataset;

-- 5.ELECTRICITY GENERATED IN YEAR
SELECT CONCAT(years,' - ',SUM(CAST(electricity_generation AS INT)))AS ELE_GENERATED 
FROM Energy_share_Cleaned_Dataset
GROUP BY years
ORDER BY years;

-- 6.TOP 20 COUNTRIES HIGHLY DEPEND ON LOW-CARBON ELECTRICITY(%)
SELECT TOP 20 country,(CAST((
						SUM(solar_electricity) + 
						SUM(wind_electricity) +
						SUM(hydro_electricity) + 
						SUM(nuclear_electricity)) / 
						SUM(electricity_generation)*100 AS decimal(10,2))) AS LOW_CARBON_ELE
FROM Energy_share_Cleaned_Dataset
WHERE solar_electricity IS NOT NULL
	AND wind_electricity IS NOT NULL
	AND hydro_electricity IS NOT NULL
	AND nuclear_electricity IS NOT NULL
GROUP BY country
HAVING SUM(electricity_generation) > 0
ORDER BY LOW_CARBON_ELE DESC;

-- 7.TOP 20 COUNTRIES HIGHLY DEPEND ON FOSSIL-FULE ELECTRICITY(%)
SELECT TOP 20 country,(CAST((
						SUM(coal_electricity) + 
						SUM(gas_electricity) +
						SUM(oil_electricity)) / 
						SUM(electricity_generation)*100 AS decimal(10,2))) AS FOSSIL_FULE_ELE
FROM Energy_share_Cleaned_Dataset
WHERE coal_electricity IS NOT NULL
	AND gas_electricity IS NOT NULL
	AND oil_electricity IS NOT NULL
GROUP BY country
HAVING SUM(electricity_generation) > 0
ORDER BY FOSSIL_FULE_ELE DESC;

-- 8.TOP 20 COUNTRIES HIGHLY DEPEND ON OIL ELECTRICITY(%) AS ON GOING WAR
SELECT TOP 20 country,(CAST(SUM(oil_electricity) / 
							SUM(electricity_generation)*100 AS decimal (10,2)))AS OIL_ELE 
FROM Energy_share_Cleaned_Dataset
WHERE oil_electricity IS NOT NULL
GROUP BY country
HAVING SUM(electricity_generation) > 0
ORDER BY OIL_ELE DESC;

-- 9.DEPENDANCY OF ELECTRICITY(%) IN LATEST YEAR(2024)
SELECT years,
(CAST(SUM(solar_electricity) / SUM(electricity_generation)*100 AS decimal(10,2)))AS SOLAR_ELE,
(CAST(SUM(wind_electricity) / SUM(electricity_generation)*100 AS decimal(10,2)))AS WIND_ELE,
(CAST(SUM(oil_electricity) / SUM(electricity_generation)*100 AS decimal(10,2)))AS OIL_ELE,
(CAST(SUM(coal_electricity) / SUM(electricity_generation)*100 AS decimal(10,2)))AS COAL_ELE
FROM Energy_share_Cleaned_Dataset
WHERE solar_electricity IS NOT NULL
  AND wind_electricity IS NOT NULL
  AND oil_electricity IS NOT NULL
  AND coal_electricity IS NOT NULL
GROUP BY years
HAVING years = 2024;

-- 10.INDIA'S DEPENDACY ON ELECTRICITY(%) IN LATEST YEAR(2024)
SELECT years,country,
(CAST(SUM(solar_electricity) / SUM(electricity_generation)*100 AS decimal(10,2)))AS SOLAR_ELE,
(CAST(SUM(wind_electricity) / SUM(electricity_generation)*100 AS decimal(10,2)))AS WIND_ELE,
(CAST(SUM(oil_electricity) / SUM(electricity_generation)*100 AS decimal(10,2)))AS OIL_ELE,
(CAST(SUM(coal_electricity) / SUM(electricity_generation)*100 AS decimal(10,2)))AS COAL_ELE
FROM Energy_share_Cleaned_Dataset
WHERE country = 'INDIA'
  AND solar_electricity IS NOT NULL
  AND wind_electricity IS NOT NULL
  AND oil_electricity IS NOT NULL
  AND coal_electricity IS NOT NULL
GROUP BY country,years
HAVING years = 2024;