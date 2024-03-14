-- Kysely, jolla haetaan sulkeiden nimet Suomi_Englanti-näkymästä

USE ITsanasto
GO

SELECT *
FROM Suomi_Englanti
WHERE Suomi LIKE '%sulku'
ORDER BY Suomi