SELECT * FROM FilmLocations
LIMIT 5;

SELECT * FROM FilmLocations LIMIT 15 OFFSET 10;

SELECT DISTINCT Title FROM FilmLocations
WHERE ReleaseYear='2015'
limit 3 offset 5;

-- ===========================================================================

SELECT Title, Locations, ReleaseYear 
FROM FilmLocations WHERE ReleaseYear <= 2000
ORDER BY ReleaseYear DESC;

-- ==============================================================================

SELECT Title, ProductionCompany, Locations, ReleaseYear 
FROM FilmLocations WHERE Writer <> 'James Cameron';

-- ===============================================================================

SELECT COUNT(*) AS Num_of_Records FROM FilmLocations

SELECT COUNT(*) FROM FilmLocations
WHERE ReleaseYear < 1950;

-- ================================================================================

SELECT COUNT(Locations) AS Num_of_Locations FROM FilmLocations
WHERE Writer='James Cameron';

-- ===============================================================================

SELECT DISTINCT Title FROM FilmLocations
limit 5;

-- ==============================================================================

SELECT COUNT(DISTINCT ReleaseYear) FROM FilmLocations
WHERE ProductionCompany='Warner Bros. Pictures';

-- ==============================================================================

SELECT DISTINCT Title, ReleaseYear
FROM FilmLocations
WHERE ReleaseYear > 2000
GROUP BY ReleaseYear;

-- ==============================================================================
SELECT Title, ReleaseYear, Count(*) AS Num_of_Films_Per_Year
FROM FilmLocations
WHERE ReleaseYear > 2000
GROUP BY ReleaseYear
ORDER BY ReleaseYear;
-- ==============================================================================
SELECT DISTINCT Title, Director
FROM FilmLocations
WHERE Locations = 'City Hall';
-- ==============================================================================
