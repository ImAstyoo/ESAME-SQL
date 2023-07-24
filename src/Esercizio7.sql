-- Daniele
-- Esercizio 7
USE AziendaDiModa;
SELECT A.Id, Descrizione, SUM(Qta) as Qta
FROM Articoli A
         join ArticoliOrdini AO ON A.Id = AO.IdArticolo
         join Ordini O on AO.IdOrdine = O.Id
         JOIN StatiOrdini on O.IdStato = StatiOrdini.Id
WHERE Nome = 'In Produzione'
   OR Nome = 'Confermato'
GROUP BY A.id
ORDER BY Qta DESC, A.id