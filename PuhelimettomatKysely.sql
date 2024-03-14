-- Haetaan puhelimettomat työntekijät
USE Henkilosto
GO

SELECT Sukunimi, Etunimi
FROM dbo.Puhelinluettelo
WHERE Puhelinnumero IS NULL
ORDER BY Sukunimi, Etunimi
