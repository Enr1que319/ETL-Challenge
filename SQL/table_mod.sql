--INSERT UNIQUE VALUES IN production_companies, cat_genders, cat_original_languaje

INSERT INTO cat_production_companies (name)
SELECT DISTINCT production_companies
FROM prueba;

INSERT INTO cat_genders (name)
SELECT DISTINCT genders
FROM prueba;

INSERT INTO cat_original_languaje (name)
SELECT DISTINCT original_languaje
FROM prueba;

--UPDATE Genres with number
UPDATE prueba as p
SET genres = c.id
FROM cat_genres AS c
WHERE p.genres = c.name

--UPDATE original_languaje with number
UPDATE prueba as p
SET original_language = c.id
FROM cat_original_language AS c
WHERE p.original_language = c.name

--UPDATE original_languaje with number
UPDATE prueba as p
SET production_companies = c.id
FROM cat_production_companies AS c
WHERE p.production_companies = c.name

--INSERT DATA FROM PRUEBA TO MOVIE DETAILS
ALTER TABLE prueba DROP index;

ALTER TABLE prueba
ALTER COLUMN original_language TYPE INT USING original_language::integer;

ALTER TABLE prueba
ALTER COLUMN genres TYPE INT USING genres::integer;

ALTER TABLE prueba
ALTER COLUMN popularity TYPE FLOAT USING popularity::FLOAT;

ALTER TABLE prueba
ALTER COLUMN production_companies TYPE INT USING production_companies::INT;

SET datestyle = dmy;
ALTER TABLE prueba
ALTER COLUMN release_date TYPE DATE USING release_date::DATE;

INSERT INTO movies_details 
SELECT * FROM prueba;

DROP TABLE prueba;