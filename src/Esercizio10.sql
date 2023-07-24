-- Daniele
-- Esercizio 10
USE AziendaDiModa;
SELECT F.id, F.Nome as Filato, Round(SUM(FA.Qta * AO.Qta)) as Qta
FROM Ordini O
         JOIN ArticoliOrdini AO on O.Id = AO.IdOrdine
         JOIN Articoli A on AO.IdArticolo = A.Id
         JOIN AziendaDiModa.FilatiArticoli FA on A.Id = FA.IdArticolo
         JOIN AziendaDiModa.Filati F on FA.IdFilato = F.Id
WHERE O.Id = 6
GROUP BY F.id, F.Nome