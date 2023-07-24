-- Daniele
-- Esercizio 11
USE AziendaDiModa;


# Pensavo di utilizzare un IF per cui FINCHÈ non trova una taglia, va avanti, quando la trova, aggiunge e moltiplica per la qta
SELECT A.Id,
       A.Descrizione,
       XS.Nome as XS,
       S.Nome as S,
       M.Nome as M,
       L.Nome as L,
       XL.Nome as XL
FROM Articoli A
         JOIN ArticoliOrdini AO ON A.Id = AO.IdArticolo
         JOIN Taglie T ON AO.IdTaglia = T.Id
         LEFT JOIN (SELECT Id, Nome FROM Taglie WHERE Nome = 'XS') AS XS ON XS.Id = AO.IdTaglia
         LEFT JOIN (SELECT Id, Nome FROM Taglie WHERE Nome = 'S') AS S ON S.Id = AO.IdTaglia
         LEFT JOIN (SELECT Id, Nome FROM Taglie WHERE Nome = 'M') AS M ON M.Id = AO.IdTaglia
         LEFT JOIN (SELECT Id, Nome FROM Taglie WHERE Nome = 'L') AS L ON L.Id = AO.IdTaglia
         LEFT JOIN (SELECT Id, Nome FROM Taglie WHERE Nome = 'XL') AS XL ON XL.Id = AO.IdTaglia
ORDER BY A.Id


