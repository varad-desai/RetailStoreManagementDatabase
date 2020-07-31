-- set the database context
USE RetailStoreManagement_Team10;

-- 1. Insert rows into the location table
-- Location(location_id, street_address, house_no, area, zip_code)
INSERT INTO dbo.[location] VALUES (1001, 'Huntington Ave', '1','Old Bridge',02215);
INSERT INTO dbo.[location] VALUES (1002, 'Still water ave', '3','Mundelein',02214);
INSERT INTO dbo.[location] VALUES (1003, 'A street', '6','South boston',02216);
INSERT INTO dbo.[location] VALUES (1004, 'South Catherine Lane', '7','Carpentersville',02218);
INSERT INTO dbo.[location] VALUES (1005, 'Riverway', '8','South Huntington',02217);
INSERT INTO dbo.[location] VALUES (1006, 'Cleveland', '10','',02213);
INSERT INTO dbo.[location] VALUES (1007, 'Heath street', '12','South H',02315);
INSERT INTO dbo.[location] VALUES (1008, 'Boylston st', '16','Fenway',02515);
INSERT INTO dbo.[location] VALUES (1009, 'Beacon st', '13','Park drive',02815);
INSERT INTO dbo.[location] VALUES (1010, 'Peterborough', '17','Park drive',02915);