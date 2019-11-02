/*
Tiers

********************************** Tier I ************************************
Construction Worker
Postman
Farmer

********************************** Tier II ************************************
Artist
Cook
Magician
Firefighter

********************************** Tier III ************************************
Scientist
Journalist

********************************** Tier IV ************************************
Doctor
Computer Engineer
Santa
Lawyer

********************************** Tier V ************************************
Politician
Pilot
*/


/************************************ Tier I ************************************/

SELECT * 
FROM workers 
WHERE profession = 'Construction Worker' 
OR profession = 'Postman'
OR profession = 'Farmer'
ORDER BY endurance;


/************************************ Tier II *************************************/

SELECT room, name, profession, endurance, level, format(cost, '###,###,###') AS cost
FROM workers 
WHERE profession = 'Artist' 
OR profession = 'Cook'
OR profession = 'Magician'
OR profession = 'Firefighter'
ORDER BY cost ASC;

SELECT *
FROM workers
WHERE profession = 'Artist'
ORDER BY endurance;

SELECT *
FROM workers 
WHERE profession = 'Cook'
ORDER BY endurance;

SELECT *
FROM workers 
WHERE profession = 'Firefighter'
ORDER BY cost;


/*************************************** Tier III ***********************************/

SELECT room, name, profession, endurance, level, format(cost, '###,###,###') AS cost
FROM workers
WHERE profession = 'Scientist'
OR profession = 'Journalist'
ORDER BY cost;

SELECT *
FROM workers
WHERE profession = 'Scientist'
ORDER BY cost;

SELECT *
FROM workers
WHERE profession = 'Journalist'
ORDER BY cost;


/*************************************** Tier IV ***********************************/

SELECT room, name, profession, endurance, level, format(cost, '###,###,###') AS coins
FROM workers
WHERE profession = 'Doctor'
OR profession = 'Computer Engineer'
OR profession = 'Journalist'
OR profession = 'Santa'
OR profession = 'Lawyer'
ORDER BY cost;

SELECT *
FROM workers
WHERE profession = 'Doctor'
ORDER BY cost;


SELECT *
FROM workers
WHERE profession = 'Computer Engineer'
ORDER BY cost;

SELECT * 
FROM workers 
WHERE profession = 'Journalist' 
ORDER BY cost;

SELECT *
FROM workers
WHERE profession = 'Santa'
ORDER BY cost;

SELECT *
FROM workers
WHERE profession = 'Lawyer'
ORDER BY cost;


/*************************************** Tier V ***********************************/

/*SELECT Room, Name, profession, endurance, level, format(cost, '###,###,###') AS cost*/
SELECT *
FROM workers
WHERE profession = 'Politician'
ORDER BY cost;

SELECT *
FROM workers
WHERE profession = 'Pilot'
ORDER BY cost;
