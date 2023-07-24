-- Daniele
-- Esercizio 11
USE AziendaDiModa;

SELECT A.Id,
       A.Descrizione,
       XS.Nome,
       S.Nome,
       M.Nome,
       L.Nome,
       XL.Nome,
       Qta
FROM Articoli A
         JOIN ArticoliOrdini AO ON A.Id = AO.IdArticolo
         JOIN Taglie T ON AO.IdTaglia = T.Id
         LEFT JOIN (SELECT Id, Nome FROM Taglie WHERE Nome = 'XS') AS XS ON XS.Id = AO.IdTaglia
         LEFT JOIN (SELECT Id, Nome FROM Taglie WHERE Nome = 'S') AS S ON S.Id = AO.IdTaglia
         LEFT JOIN (SELECT Id, Nome FROM Taglie WHERE Nome = 'M') AS M ON M.Id = AO.IdTaglia
         LEFT JOIN (SELECT Id, Nome FROM Taglie WHERE Nome = 'L') AS L ON L.Id = AO.IdTaglia
         LEFT JOIN (SELECT Id, Nome FROM Taglie WHERE Nome = 'XL') AS XL ON XL.Id = AO.IdTaglia
GROUP BY A.id, A.Descrizione
ORDER BY A.Id


