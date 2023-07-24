-- Daniele
-- Esercizio 4
USE AziendaDiModa;
SELECT count(O.id) as OrdiniConfermati
FROM Ordini O
         JOIN StatiOrdini SO ON O.IdStato = SO.Id
WHERE Nome = 'Confermato'