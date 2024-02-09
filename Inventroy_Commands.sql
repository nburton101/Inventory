SELECT * FROM dbo.district_laptops

--Show all chromebooks from Hearnes, change 'Chromebook' to "Laptop" to show laptops
SELECT * FROM district_laptops
WHERE Type_of_Device = 'Chromebook'
AND Building = 'WEH'

--Show all chromebooks from MS, change 'Chromebook' to "Laptop" to show laptops
SELECT * FROM district_laptops
WHERE Type_of_Device = 'Chromebook'
AND Building = 'CMS'

--Show all chromebooks from Hearnes, change 'Chromebook' to "Laptop" to show laptops
SELECT * FROM district_laptops
WHERE Type_of_Device = 'Chromebook'
AND Building = 'CHS'

--Update the EoL for the chromebooks to be seen as numeric in Tableau.
UPDATE district_laptops
SET EoL = 2028
WHERE Type_of_Device = 'Chromebook'
AND Manufacture = 'HP'

UPDATE district_laptops
SET EoL = 2027
WHERE Type_of_Device = 'Chromebook'
AND Manufacture = 'Dell'

SELECT * FROM district_laptops
WHERE Type_of_Device = 'Chromebook'
AND Manufacture = 'Dell'

--When new devices need to be added to the database
INSERT INTO district_laptops(Type_of_Device, Manufacture, Model, Serial, User, Building, Room, EoL, Est_Cost_To_Replace)
VALUES();