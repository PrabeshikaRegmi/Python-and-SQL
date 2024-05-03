create database project;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'mysql123';


use classroom;

CREATE TABLE Store_Data (
    Store_ID INT primary key,
    Store_name varchar(20)
);

drop table Store_Data;
Insert into Store_Data(Store_ID, Store_name)values(1,'Urban Nest');
Insert into Store_Data(Store_ID, Store_name)values(2,'Greenleaf Groceries');
Insert into Store_Data(Store_ID, Store_name)values(3,'Shopable');

CREATE TABLE Footfall_Data (
    Date DATE,
    Store_ID INT,
    Footfall_Count INT
);



INSERT INTO Footfall_Data (Date, Store_ID, Footfall_Count)
VALUES
    ('2024-01-01', 1, 150),
    ('2024-01-01', 2, 120),
    ('2024-01-01', 3, 100),
    ('2024-01-02', 1, 160),
    ('2024-01-02', 2, 130),
    ('2024-01-02', 3, 110),
    ('2024-01-03', 1, 40),
    ('2024-01-03', 2, 110),
    ('2024-01-03', 3, 90),
    ('2024-01-04', 1, 70),
    ('2024-01-04', 2, 140),
    ('2024-01-04', 3, 120),
    ('2024-01-05', 1, 180),
    ('2024-01-05', 2, 150),
    ('2024-01-05', 3, 130),
    ('2024-01-06', 1, 190),
    ('2024-01-06', 2, 120),
    ('2024-01-06', 3, 110),
    ('2024-01-07', 1, 140),
	('2024-01-07', 1, 60);
    select * from Footfall_Data;
   


CREATE TABLE Marketing_Data (
    Campaign_ID INT,
    Date DATE,
    Channel VARCHAR(50),
    Impressions INT,
    Clicks INT,
    Conversions INT
);

INSERT INTO Marketing_Data (Campaign_ID, Date, Channel, Impressions, Clicks, Conversions)
VALUES
    (1, '2024-01-01', 'Email', 10000, 500, 50),
    (2, '2024-01-01', 'Social Media', 15000, 800, 70),
    (3, '2024-01-01', 'TV', 20000, 10000, 80),
    (4, '2024-01-02', 'Email', 11000, 6000, 55),
    (5, '2024-01-02', 'Social Media', 16000, 850, 75),
    (6, '2024-01-02', 'TV', 21000, 1050, 85),
	(7, '2024-01-03', 'Email', 9000, 1450, 65),
    (8, '2024-01-03', 'Email', 9000, 450, 45),
    (9, '2024-01-03', 'Social Media', 8000, 750, 65),
    (10, '2024-01-04', 'TV', 19000, 950, 80),
    (11, '2024-01-04', 'Email', 12000, 700, 60),
    (12, '2024-01-04', 'Social Media', 18000, 750, 80),
    (13, '2024-01-05', 'TV', 22000, 1100, 90),
    (14, '2024-01-05', 'Email', 1300, 750, 57),
    (15, '2024-01-05', 'Social Media', 1900, 1000, 75),
    (16, '2024-01-06', 'TV', 23000, 1150, 65),
    (17, '2024-01-06', 'Email', 1400, 800, 70),
    (18, '2024-01-06', 'Social Media', 500, 1050, 50),
    (19, '2024-01-07', 'TV', 2400, 600, 52),
    (20, '2024-01-07', 'Email', 1500, 550, 55);
    
    select * from Marketing_Data;

    

CREATE TABLE Customer_Feedback (
    Date DATE,
    Customer_ID INT,
    Feedback VARCHAR(255),
    Rating INT, -- New column for rating
    Recommendation VARCHAR(255) -- New column for recommendation
);


INSERT INTO Customer_Feedback (Date,Customer_ID, Feedback, Rating, Recommendation)
VALUES
    ('2024-01-01',101, 'Great store layout!', 5, 'Yes'),
    ('2024-01-01',102, 'Friendly staff', 4, 'Yes'),
    ('2024-01-01',103, 'Could improve product variety', 3, 'No'),
    ('2024-01-02',104, 'Love the new collection!', 4.5, 'Yes'),
    ('2024-01-02',105, 'Quick checkout process', 4, 'Yes'),
    ('2024-01-02',106, 'Great customer service', 5, 'Yes'),
    ('2024-01-03',107, 'Clean and organized store', 4, 'Yes'),
    ('2024-01-03',108, 'Enhance traffic training and customer services', 2, 'No'),
    ('2024-01-03',109, 'Good discounts and offers', 4, 'Yes'),
	('2024-01-04',110, 'Increase the no of carts', 3, 'No'),
    ('2024-01-04', 111, 'Improve cleanliness in dining area', 3.5, 'Yes'),
    ('2024-01-04', 112, 'Expand vegetarian options on the menu', 4, 'Yes'),
    ('2024-01-05', 113, 'Faster service during peak hours', 4, 'Yes'),
    ('2024-01-05', 114, 'Better lighting in the parking area', 3, 'No'),
    ('2024-01-05', 115, 'Upgrade restroom facilities', 4.5, 'Yes'),
    ('2024-01-06', 116, 'Provide more seating options', 3.5, 'Yes'),
    ('2024-01-06', 117, 'Enhance online ordering experience', 4, 'Yes'),
    ('2024-01-06', 118, 'Offer healthier menu choices', 4.5, 'Yes'),
    ('2024-01-07', 119, 'Improve communication regarding promotions', 2.5, 'No'),
    ('2024-01-07', 120, 'Increase staff availability during busy hours', 3, 'Yes');

select * from Customer_Feedback;

 SELECT Feedback, COUNT(*) AS Frequency
    FROM Customer_Feedback
    WHERE Rating = 5 AND Recommendation = 'Yes'
    GROUP BY Feedback
    ORDER BY Frequency DESC
    LIMIT 3;


        
CREATE TABLE Demographic_Data (
    Store_ID INT,
    Location VARCHAR(50),
    Population INT,
    Income_Level VARCHAR(20),
    Preferences VARCHAR(255)
    );

INSERT INTO Demographic_Data (Store_ID,Location, Population, Income_Level, Preferences)
VALUES
    (1,'Kathmandu', 1000000, 'Medium', 'Electronics, Fashion'),
    (2,'Pokhara', 500000, 'High', 'Outdoor Activities, Tourism'),
    (3,'Biratnagar', 300000, 'Low', 'Basic Necessities, Budget Shopping'),
    (1,'Lalitpur', 400000, 'Medium', 'Electronics, Fashion'),
    (2,'Bhaktapur', 200000, 'High', 'Outdoor Activities, Tourism'),
    (3,'Butwal', 150000, 'Low', 'Basic Necessities, Budget Shopping'),
    (1,'Dharan', 250000, 'Medium', 'Electronics, Fashion'),
    (2,'Bharatpur', 350000, 'High', 'Outdoor Activities, Tourism'),
    (3,'Nepalgunj', 180000, 'Low', 'Basic Necessities, Budget Shopping'),
    (1,'Dhankuta', 90000, 'Low', 'Basic Necessities, Budget Shopping'),
    (2,'Itahari', 220000, 'Medium', 'Electronics, Fashion'),
    (3,'Hetauda', 130000, 'Low', 'Basic Necessities, Budget Shopping'),
    (1,'Janakpur', 170000, 'Low', 'Basic Necessities, Budget Shopping'),
    (2,'Dhangadhi', 190000, 'Medium', 'Outdoor Activities, Tourism'),
    (3,'Birgunj', 270000, 'Medium', 'Electronics, Fashion'),
    (1,'Birendranagar', 110000, 'Low', 'Basic Necessities, Budget Shopping'),
    (2,'Butwal', 150000, 'Medium', 'Outdoor Activities, Tourism'),
    (3,'Mahendranagar', 120000, 'Low', 'Basic Necessities, Budget Shopping'),
    (1,'Dharan', 250000, 'High', 'Outdoor Activities, Tourism'),
    (2,'Hetauda', 130000, 'Medium', 'Electronics, Fashion');

select * from Demographic_Data;


