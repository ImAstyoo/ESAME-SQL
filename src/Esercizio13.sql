-- Daniele
-- Esercizio 13
USE AziendaDiModa;
UPDATE Filati
SET Nome = 'Filato in cotone Blu'
WHERE Id = 6;
SELECT *
FROM Filati
WHERE Nome LIKE '% cottone %';
