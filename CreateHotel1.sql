-- Creates tables for Hotel Reservation App

USE Hotelli1
GO

CREATE TABLE Paikkakunta (
                KVPostinumero NVARCHAR(20) NOT NULL,
                Postitoimipaikka NVARCHAR(50) NOT NULL,
                CONSTRAINT Paikkaunta_pk PRIMARY KEY (KVPostinumero)
)

CREATE TABLE Matkustaja (
                Hetu NVARCHAR(20) NOT NULL,
                Etunimi NVARCHAR(30) NOT NULL,
                Sukunimi NVARCHAR(30) NOT NULL,
                Kansalaisuus NVARCHAR(20) NOT NULL,
                Katuosoite NVARCHAR(30) NOT NULL,
                KVPostinumero NVARCHAR(20) NOT NULL,
                Puhelin NVARCHAR(20),
                CONSTRAINT Matkustaja_pk PRIMARY KEY (Hetu)
)

-- Comment for table [Matkustaja]: Matkustajan perustiedot

-- Comment for column [KVPostinumero]: ISO-standardin mukainen postinumero 3 kirjaimisella maakoodilla


CREATE TABLE Huone (
                Huonenumero NVARCHAR(10) NOT NULL,
                Kapasiteetti INT NOT NULL,
                CONSTRAINT Huone_pk PRIMARY KEY (Huonenumero)
)

-- Comment for table [Huone]: Hotellihuoneen perustiedot

-- Comment for column [Kapasiteetti]: Montako henkilöä huoneeseen mahtuu


CREATE TABLE Varaus (
                Paiva DATETIME NOT NULL,
                Huonenumero NVARCHAR(10) NOT NULL,
                Hetu NVARCHAR(20) NOT NULL,
                CONSTRAINT Varaus_pk PRIMARY KEY (Paiva, Huonenumero)
)

-- Comment for table [Varaus]: Taulu huonevarausten kirjaamiseen


CREATE TABLE Majoittuminen (
                Paiva DATETIME NOT NULL,
                Huonenumero NVARCHAR(10) NOT NULL,
                Hetu NVARCHAR(20) NOT NULL,
                CONSTRAINT Majoittuminen_pk PRIMARY KEY (Paiva, Huonenumero, Hetu)
)

-- Comment for table [Majoittuminen]: Majoittumiseen liittyvät tarkentavat tiedot. Täytetään hotelliin kijauduttaessa.


ALTER TABLE Matkustaja ADD CONSTRAINT Paikkakunta_Matkustaja_fk
FOREIGN KEY (KVPostinumero)
REFERENCES Paikkakunta (KVPostinumero)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Varaus ADD CONSTRAINT Matkustaja_Varaus_fk
FOREIGN KEY (Hetu)
REFERENCES Matkustaja (Hetu)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Majoittuminen ADD CONSTRAINT Matkustaja_Majoittuminen_fk
FOREIGN KEY (Hetu)
REFERENCES Matkustaja (Hetu)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Varaus ADD CONSTRAINT Huone_Varaus_fk
FOREIGN KEY (Huonenumero)
REFERENCES Huone (Huonenumero)
ON DELETE NO ACTION
ON UPDATE NO ACTION

ALTER TABLE Majoittuminen ADD CONSTRAINT Varaus_Majoittuminen_fk
FOREIGN KEY (Paiva, Huonenumero)
REFERENCES Varaus (Paiva, Huonenumero)
ON DELETE NO ACTION
ON UPDATE NO ACTION
