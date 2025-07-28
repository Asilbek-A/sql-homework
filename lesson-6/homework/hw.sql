Puzzle-1 
SELECT 
  CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col1,
  CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS col2
FROM InputTbl
GROUP BY 
  CASE WHEN col1 < col2 THEN col1 ELSE col2 END,
  CASE WHEN col1 < col2 THEN col2 ELSE col1 END;

Puzzle-2
  
SELECT * 
FROM TestMultipleZero
WHERE A <> 0 OR B <> 0 OR C <> 0 OR D <> 0;

Puzzle-3

SELECT * 
FROM section1
WHERE id % 2 = 1;

Puzzle-4

SELECT TOP 1 * 
FROM section1
ORDER BY id ASC;

Puzzle-5

SELECT TOP 1 * 
FROM section1
ORDER BY id DESC;

Puzzle-6 
SELECT *
FROM section1
WHERE name LIKE 'b%';

Puzzle-7
SELECT *
FROM ProductCodes
WHERE Code LIKE '%\_%' ESCAPE '\';




