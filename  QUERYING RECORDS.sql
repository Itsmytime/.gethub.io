--1.
SELECT *
FROM planes
WHERE year >=2000;

--2.
SELECT *
FROM planes
WHERE manufacturer ='BoeinG'

--3.
SELECT *
FROM planes
WHERE year BETWEEN 1980 AND 1990;

--4.
SELECT *
FROM planes
WHERE manufacturer IN ('CESSNA', 'BOEING', 'AIRBUS');

--5.
SELECT *
FROM planes
WHERE year IS NULL;

--6.
SELECT *
FROM planes
WHERE speed IS NOT NULL;

--7.
SELECT *
FROM planes
WHERE seats <50 OR seats>200;

--8.
SELECT *
FROM planes
WHERE engine LIKE 'TURBO%';

--9.
SELECT *
FROM planes
WHERE model LIKE '___-___';

--10.
SELECT *
FROM planes
WHERE year <1980 AND seats >100;

--11.
SELECT *
FROM planes
WHERE year >2000 OR engine = 'Reciprocating';

--12.
SELECT *
FROM planes
WHERE year BETWEEN 1980 AND 1990
AND engines <> 2
AND speed IS NOT NULL
AND manufacturer IN ('BOEING','CESSNA')

--13
SELECT *
FROM planes
WHERE year BETWEEN 1980 AND 1990
AND engines <> 2
AND speed IS NOT NULL
OR manufacturer IN ('BOEING','CESSNA')

--14.
SELECT *
FROM planes
WHERE year BETWEEN 1980 AND 1990
AND engines <> 2
AND (speed IS NOT NULL
OR manufacturer IN ('BOEING','CESSNA'))








