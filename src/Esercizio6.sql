-- Daniele
-- Esercizio 6
USE AziendaDiModa;
SELECT O.Id, Data, C.Nominativo as Nominativo, SO.Nome as Stato
FROM Ordini O
         join StatiOrdini SO ON O.IdStato = SO.Id
      join Clienti C on C.Id = O.IdCliente
ORDER BY Stato, Nominativo