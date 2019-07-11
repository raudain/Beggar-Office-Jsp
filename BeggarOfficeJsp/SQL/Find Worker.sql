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

/*SELECT Position, Name, Profession, Endurance, Level, format(Cost, '###,###,###')*/
SELECT *
FROM Workers;

SELECT Position, Name, Profession, Endurance, Level, Cost
FROM workers
WHERE Position = '1902';

/************************************ Tier I ************************************/

SELECT * 
FROM Workers 
WHERE Profession = 'Construction Worker' 
OR Profession = 'Postman'
OR Profession = 'Farmer'
ORDER BY endurance;


/************************************ Tier II *************************************/

SELECT Room, Name, Profession, Endurance, Level, format(Cost, '###,###,###') AS Cost
/*SELECT **/
FROM Workers 
WHERE Profession = 'Artist' 
OR Profession = 'Cook'
OR Profession = 'Magician'
OR Profession = 'Firefighter'
ORDER BY Cost ASC;

SELECT *
FROM workers
WHERE Profession = 'Artist'
ORDER BY Endurance;

SELECT *
FROM Workers 
WHERE Profession = 'Cook'
ORDER BY Endurance;

/* SELECT Position, Name, Profession, Endurance, Level, format(cost, '###,###,###') AS Cost */
SELECT *
FROM workers 
WHERE Profession = 'Firefighter'
ORDER BY Cost;


/*************************************** Tier III ***********************************/

SELECT Room, Name, Profession, Endurance, Level, format(cost, '###,###,###') AS Cost

FROM Workers
WHERE Profession = 'Scientist'
OR Profession = 'Journalist'
ORDER BY Cost;

SELECT *
FROM Workers
WHERE Profession = 'Scientist'
ORDER BY Endurance;

SELECT *
FROM Workers
WHERE Profession = 'Journalist'
ORDER BY Endurance;


/*************************************** Tier IV ***********************************/

SELECT *
FROM Workers
WHERE Profession = 'Doctor'
ORDER BY Cost;

/*SELECT Room, Name, Profession, Endurance, Level, format(cost, '###,###,###') AS Cost*/
SELECT *
FROM Workers
WHERE Profession = 'Computer Engineer'
ORDER BY Cost;

SELECT * FROM workers WHERE profession = 'Journalist' ORDER BY endurance;

SELECT Room, Name, Profession, Endurance, Level, Cost
FROM Workers 
WHERE Profession = 'Santa'
ORDER BY Endurance;

SELECT * 
FROM Workers 
WHERE Profession = 'Lawyer' 
ORDER BY Cost;


/*************************************** Tier V ***********************************/

/*SELECT Room, Name, Profession, Endurance, Level, format(Cost, '###,###,###') AS Cost*/
SELECT *
FROM Workers
WHERE Profession = 'Politician'
ORDER BY Endurance;

SELECT *
FROM Workers
WHERE Profession = 'Pilot'
ORDER BY Cost ASC;
