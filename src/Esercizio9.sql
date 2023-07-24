-- Daniele
-- Esercizio 9
USE AziendaDiModa;
SELECT C.id, C.Nominativo, SUM(Qta * Prezzo) as Fatturato
FROM Clienti C
         LEFT JOIN Ordini O ON C.Id = O.IdCliente
         LEFT JOIN StatiOrdini SO ON O.IdStato = SO.Id
         LEFT JOIN ArticoliOrdini AO ON O.Id = AO.IdOrdine
         LEFT JOIN Articoli A ON AO.IdArticolo = A.Id
GROUP BY C.id, C.Nominativo
ORDER BY  Fatturato DESC



