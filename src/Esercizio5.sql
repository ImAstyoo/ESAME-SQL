-- Daniele
-- Esercizio 5
USE AziendaDiModa;
SELECT A.Id, Descrizione, Prezzo, Nome as Categoria
FROM Articoli A
         JOIN CategorieArticoli CA ON A.IdCategoria = CA.Id
ORDER BY Id