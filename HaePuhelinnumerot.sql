-- Haetaan työntekijöiden puhelinnumerot
-- WHERE-ehtoa käyttäen

USE Henkilosto
GO

SELECT Sukunimi, Etunimi, Puhelinnumero, Liittymatyyppiteksti
FROM dbo.Tyontekija, dbo.Liittyma, dbo.Liitymatyyppi
WHERE dbo.Tyontekija.TyontekijaID = dbo.Liittyma.TyontekijaID AND 
dbo.Liitymatyyppi.LiittymatyyppiID = dbo.Liittyma.Tyyppi