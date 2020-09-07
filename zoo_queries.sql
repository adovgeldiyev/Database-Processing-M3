CREATE TABLE Animal
(
  AID SERIAL,
  AName VARCHAR(30) NOT NULL,
  ACategory VARCHAR(18),
  
  TimeToFeed NUMERIC(4,2),
  
  CONSTRAINT Animal_PK
    PRIMARY KEY(AID)
);
INSERT INTO Animal VALUES(1, 'Galapagos Penguin', 'exotic', 0.5);
INSERT INTO Animal VALUES(2, 'Emperor Penguin', 'rare', 0.75);
INSERT INTO Animal VALUES(3, 'Sri Lankan sloth bear', 'exotic', 2.5);
INSERT INTO Animal VALUES(4, 'Grizzly bear', 'common', 3.0);
INSERT INTO Animal VALUES(5, 'Giant Panda bear', 'exotic', 1.5);
INSERT INTO Animal VALUES(6, 'Florida black bear', 'rare', 1.75);
INSERT INTO Animal VALUES(7, 'Siberian tiger', 'rare', 3.25);
INSERT INTO Animal VALUES(8, 'Bengal tiger', 'common', 2.75);
INSERT INTO Animal VALUES(9, 'South China tiger', 'exotic', 2.5);
INSERT INTO Animal VALUES(10, 'Alpaca', 'common', 0.25);
INSERT INTO Animal VALUES(11, 'Llama', NULL, 3.5);

Select * from Animal;

select aname
from animal
where timetofeed<1.50;

select aname
from animal
where acategory='rare' OR acategory = 'exotic';

select aname
from animal
where acategory is NULL;

select aname
from animal
where acategory='rare' AND timetofeed BETWEEN 1 and 1.25;

Select round(avg(timetofeed),2)
from animal
where acategory = 'rare';

select count(*)
from animal
where acategory is NULL;

select min(timetofeed), max(timetofeed)
from animal;

select aname, acategory
from animal
where aname='Alpaca' or aname = 'Llama' or not acategory='exotic';