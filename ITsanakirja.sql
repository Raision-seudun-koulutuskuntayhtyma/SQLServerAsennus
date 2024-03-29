USE [master]
GO
/****** Object:  Database [ITsanasto]    Script Date: 5.3.2024 14.25.46 ******/
CREATE DATABASE [ITsanasto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ITsanasto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ITsanasto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ITsanasto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ITsanasto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ITsanasto] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ITsanasto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ITsanasto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ITsanasto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ITsanasto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ITsanasto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ITsanasto] SET ARITHABORT OFF 
GO
ALTER DATABASE [ITsanasto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ITsanasto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ITsanasto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ITsanasto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ITsanasto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ITsanasto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ITsanasto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ITsanasto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ITsanasto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ITsanasto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ITsanasto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ITsanasto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ITsanasto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ITsanasto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ITsanasto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ITsanasto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ITsanasto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ITsanasto] SET RECOVERY FULL 
GO
ALTER DATABASE [ITsanasto] SET  MULTI_USER 
GO
ALTER DATABASE [ITsanasto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ITsanasto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ITsanasto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ITsanasto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ITsanasto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ITsanasto] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ITsanasto] SET QUERY_STORE = ON
GO
ALTER DATABASE [ITsanasto] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ITsanasto]
GO
/****** Object:  Table [dbo].[Sanakirja]    Script Date: 5.3.2024 14.25.46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanakirja](
	[Englanti] [nvarchar](50) NOT NULL,
	[Suomi] [nvarchar](50) NOT NULL,
	[Selitys] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sanakirja] PRIMARY KEY CLUSTERED 
(
	[Englanti] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'argument', N'argumentti', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'arithmetic opreator', N'matemaattiset operaattorit', N'Merkit joilla suoritetaan laskutoimituksia')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'array', N'vekori', N'Rakenteellinen tietotyyppi useiden eri arvojen tallentamiseen samaan muuttujaan')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'assignment operator', N'sijoitusoperaattori', N'Merkki, jolla annetaan muuttujalle tai vakiolle arvo')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'base class', N'yliluokka', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'bin', N'kansio', N'Applen käyttämä termi hakemistosta')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'bitwise operators', N'totuusarvo-operaattori biteittäin', N'Boolen algebran operaatiot, yleensä JA ja TAI biteittäin')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'block', N'lohko', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'boolean', N'totuusarvo', N'Boolen algebran tosi  (true) tai epätosi (false) Pyhtonissa kirjoitetaan isolla alkukirjaimella, C#:ssa pienellä')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'boolean operators', N'totuusarvo-operaattorit', N'Boolen algebran operaatiot, yleensä JA ja TAI')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'bracket', N'kaarisulku', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'branch', N'kehityshaara', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'bug', N'bugi', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'cache', N'välimuisti', N'Dataa säilytetään väliaikaisesti sen todellisen sijainnin ulkopuolella')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'char', N'merkki', N'Yksittäinen kirjoitusmerkki')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'child', N'tytär', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'choise', N'valinta', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'class', N'luokka', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'client', N'asiakas', N'Palvelua tai palvelinta hyödyntävä ohjelma tai tietokone')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'clipboard', N'leikepöytä', N'Sovelluksesta kopioitujen tietojen säilytyspaikka käyttöjärjestelmässä tai sovelluksessa')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'commit', N'vahvistus', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'comparison operator', N'vertailuoperaattori', N'Merkit joilla vertaillaan suuruutta')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'constant', N'vakio', N'Muuttuja, jonka arvo ei ole muutettavissa, toiminta riippuu käytetystä ohjelmointikielestä')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'container', N'kontti', N'Koodin tallennusyksikkö, jonka tarkka määritelmä riippuu kehitysympäristöstä.')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'curly bracket', N'aaltosulku', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'data structure', N'tietorakenne', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'data type', N'tietotyyppi', N'Määrittelee muuttujan tarvitseman tilan keskusmuistissa')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'debugging', N'virheenkorjaus', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'decimal', N'desimaaliluku', N'Tietotyyppi, jolla esitetään desimaalilukuja. Määritellään kuinka paljon varsinaisia numeroita ja desimaaleja halutaa näyttää')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'dictionary', N'sanakirja', N'Rakenteellinen tietotyyppi tietojen esittämiseen avain-arvo-pareina')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'directory', N'hakemisto', N'Käyttöjärjestelmän viittaus taltioon, jossa voi olla useita tiedostoja tai toisia hakemistoja')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'double', N'kaksoistarkkuuden liukuluku', N'Tietotyyppi suurten tai erittäin tarkkojen desimaalilukujen esittämiseen')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'double quote', N'lainausmerkki', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'fetch', N'hakea muutokset', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'field', N'kenttä', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'float', N'liukuluku', N'Tietotyyppi desimaalilukujen esittämiseen ilman määritystä desimaalien määrästä')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'folder', N'kansio', N'Käyttöliittymissä käytetty termi hakemistosta')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'function', N'funktio', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'hash table', N'hajautustaulu', N'Rakenteellinen tietotyyppi tiivistettyy tallennukseen')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'heap', N'keko', N'Erityiset säännöt täyttävä puumainen rakenteellinen tietotyyppi')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'inheritance', N'periytyminen', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'instance', N'esiintymä', N'Luokasta johdettu objekti tai ohjelmiston asennus, esim. SQL Server instance')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'integration testing', N'integraatiotestaus', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'invariant', N'muuttumaton', N'Arvoa ei voi muuttaa')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'iterator', N'iteraattori', N'Rakenteellinen tietotyyppi, jota voidaan käydä alkioittain läpi')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'key', N'avain', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'list', N'lista', N'Rakenteellinen tietotyyppi useiden eri arvojen tallentamiseen samaan muuttujaan')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'loop', N'silmukka', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'machine learning', N'koneoppiminen', N'Tekoälyn osa-alue, jossa tietokone oppii datan perusteella ratkomaan ongelmia')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'merge', N'yhdistäminen', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'merge conflict', N'yhdistämisvirhe', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'method', N'metodi', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'microservice', N'mikropalvelu', N'Arkkitehtuuri, jossa sovellus rakennetaan pienten yksinkertaisten palveluiden varaan, joita hyödynnetään API-kutsujen avulla.')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'name space', N'nimiavaruus', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'object', N'olio', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'open source', N'avoin lähdekoodi', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'operator', N'operaattori', N'Merkki, jolla tehdään sijoituksia, laskentaa tai vertailua')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'origin', N'alkuperäisrepositorio', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'parameter', N'parametri', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'parent', N'äiti', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'prompt', N'kehote', N'Konsolipohjaisissa sovelluksissa oleva kehote syöttää tietoja. Voi kertoa myös käyttöoikeustason tms. lisätietoja.')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'property', N'ominaisuus', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'proxy', N'välikäsi', N'Välityspalvelimista tai -sovelluksista käytettävä nimitys')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'pull', N'ladata muutokset', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'push', N'tallentaa muutokset', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'queue', N'jono', N'Rakenteellinen tietotyyppi useamman arvon tallentamiseksi muuttujaan. Viimeeksi lisätty luetaan muuttujasta viimeisenä')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'scalar', N'skalaari (matematiikka)', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'schema', N'nimiavaruus, skeema', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'scope', N'näkyvyysalue', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'server', N'palvelin', N'Asiakkaille palveluita tarjoava ohjelmisto tai tietokone')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'shell', N'kuori', N'Monimerkityksellinen termi, voi tarkoittaa esim. käyttöjärjestelmän komentojen ajojärjestelmää')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'simple datatype', N'yksinkertainen tietotyyppi', N'Muuttujaan voi tallentaa vain yhden tiedon kerrallaan')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'single quote', N'puolilainausmerkki', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'square bracket', N'hakasulku', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'stack', N'pino', N'Rakenteellinen tietotyyppi useamman arvon tallentamiseksi muuttujaan. Viimeeksi lisätty luetaan muuttujasta ensimmäisenä')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'stage', N'valmistella', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'stash', N'muutosten kätkeminen', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'string', N'merkkijono', N'Yksinkertainen tietotyyppi kirjainmerkeistä koostuvan tieton tallentamiseen')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'structural programming', N'rakenteellinen ohjelmointi', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'structure', N'rakenne', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'structured data type', N'rakenteellinen tietotyyppi', N'Muuttujaan voi tallentaa useita eri arvoja')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'subclass', N'aliluokka', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'superclass', N'yliluokka', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'system testing', N'järjestelmätestaus', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'table (databases)', N'taulu (tietokannat)', N'Tietojen perustallennusyksikkö relaatiotietokannoissa')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'table (programming)', N'taulukko (ohjelmointi)', N'Moniulotteinen vektori, jossa on rivi- ja sarakeindeksi')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'testing', N'testaus', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'tuple', N'monikko', N'Rakenteellinen tietotyyppi tietojen esittämiseen avain-arvo-pareina')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'unit testing', N'yksikkötestaus', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'value', N'arvo', NULL)
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'variable', N'muuttuja', N'Ohjelmointikielissä keskusmuistiin tilapäisesti tallennettava tieto')
INSERT [dbo].[Sanakirja] ([Englanti], [Suomi], [Selitys]) VALUES (N'vector', N'vektori (matematiikka)', NULL)
GO
USE [master]
GO
ALTER DATABASE [ITsanasto] SET  READ_WRITE 
GO
