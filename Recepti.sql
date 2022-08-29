-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 01. Sep 2019. u 22:21
-- Verzija servera: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Recepti`
--

-- --------------------------------------------------------

--
-- Struktura tabele `korisnik`
--

CREATE TABLE `korisnik` (
  `username` varchar(30) COLLATE utf8mb4_croatian_ci NOT NULL,
  `mail` varchar(30) COLLATE utf8mb4_croatian_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Prikaz podataka tabele `korisnik`
--

INSERT INTO `korisnik` (`username`, `mail`, `password`) VALUES
('aleks996', 'aleksandram@gmail.com', 'aleks123'),
('maki1234', 'm.markagic@hotmail.com', 'maki4321'),
('pera1234', 'peraperic007@gmail.com', 'perazmaj123'),
('slavce123', 'slavisamar67@hotmail.com', 'slavce321'),
('zoka973', 'mzorica73@gmail.com', 'zoka1234');

-- --------------------------------------------------------

--
-- Struktura tabele `kuvar`
--

CREATE TABLE `kuvar` (
  `username` varchar(30) COLLATE utf8mb4_croatian_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_croatian_ci NOT NULL,
  `ime` varchar(30) COLLATE utf8mb4_croatian_ci NOT NULL,
  `prezime` varchar(50) COLLATE utf8mb4_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Prikaz podataka tabele `kuvar`
--

INSERT INTO `kuvar` (`username`, `password`, `ime`, `prezime`) VALUES
('jovica123', 'jovica321', 'Jovica', 'Jovičić'),
('ljubomir123', 'ljubomir321', 'Ljubomir', 'Stanišić'),
('makibrzi', 'brzimaki', 'Marko', 'Brzak'),
('misko123', 'misko321', 'Saša', 'Mišić'),
('petar123', 'petar321', 'Petar', 'Gajić');

-- --------------------------------------------------------

--
-- Struktura tabele `ocena`
--

CREATE TABLE `ocena` (
  `id_Recept` int(30) NOT NULL,
  `id_Korisnik` varchar(30) COLLATE utf8mb4_croatian_ci NOT NULL,
  `ocena` int(10) NOT NULL,
  `vreme` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Prikaz podataka tabele `ocena`
--

INSERT INTO `ocena` (`id_Recept`, `id_Korisnik`, `ocena`, `vreme`) VALUES
(1, 'aleks996', 6, '2019-08-12'),
(1, 'maki1234', 9, '2019-08-19'),
(1, 'pera1234', 10, '2019-08-03'),
(2, 'aleks996', 9, '2019-08-07'),
(2, 'maki1234', 8, '2019-08-20'),
(2, 'slavce123', 10, '2019-08-21'),
(4, 'aleks996', 8, '2019-08-15'),
(4, 'slavce123', 9, '2019-09-26'),
(5, 'slavce123', 9, '2019-08-17'),
(6, 'aleks996', 8, '2019-08-01'),
(6, 'zoka973', 10, '2019-08-21'),
(7, 'pera1234', 7, '2019-08-21'),
(8, 'maki1234', 10, '0000-00-00'),
(9, 'maki1234', 10, '0000-00-00'),
(9, 'pera1234', 5, '0000-00-00'),
(10, 'pera1234', 8, '0000-00-00'),
(11, 'aleks996', 7, '2019-08-16'),
(11, 'zoka973', 9, '2019-08-14'),
(12, 'slavce123', 8, '2019-08-14'),
(13, 'aleks996', 6, '2019-08-14'),
(14, 'slavce123', 10, '2019-08-22'),
(16, 'maki1234', 7, '2019-08-13'),
(16, 'pera1234', 9, '2019-08-09'),
(17, 'zoka973', 10, '2019-08-30'),
(18, 'zoka973', 10, '2019-08-28'),
(19, 'aleks996', 9, '2019-08-02');

-- --------------------------------------------------------

--
-- Struktura tabele `recept`
--

CREATE TABLE `recept` (
  `id` int(30) NOT NULL,
  `naziv` varchar(100) COLLATE utf8mb4_croatian_ci NOT NULL,
  `slika` varchar(1000) COLLATE utf8mb4_croatian_ci NOT NULL,
  `opis` varchar(6) COLLATE utf8mb4_croatian_ci NOT NULL,
  `sastojci` varchar(1000) COLLATE utf8mb4_croatian_ci NOT NULL,
  `postupak` varchar(2000) COLLATE utf8mb4_croatian_ci NOT NULL,
  `usernameKuvara` varchar(30) COLLATE utf8mb4_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Prikaz podataka tabele `recept`
--

INSERT INTO `recept` (`id`, `naziv`, `slika`, `opis`, `sastojci`, `postupak`, `usernameKuvara`) VALUES
(1, 'Posna pirinčana pasta sa gamborima', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/08/Bezglutenska-pasta-sa-gamborima-1440x960.png', 'slano', 'Sastojci\r\nKoličina: 2 porcije\r\n– 250g zamrznutih gambora\r\n– 2 čena belog luka\r\n– 5 + 1 kašika maslinovog ulja\r\n– 1 ravna kašičica himalajske soli\r\n– 1 šaka svežeg bosiljka\r\n– 1 šaka svežeg peršunovog lišća\r\n– 1 paradajz\r\n– 1 šaka spanaća\r\n– 2 kašike ajvara\r\n– 1/2 limuna, sok\r\n– 220g bezglutenske pirinčane testenine\r\n– 1 kašičica crnog susama (za dekoraciju)', 'Uputstvo za pripremu\r\n1. Odmrznite, operite i osušite gambore pa ih ubacite u činiju zajedno da izgnječenim belim lukom, sitno seckanim paradajzom, bosiljkom, peršunovim liscem i baby spanaćem. Posolite i dodajte 4 kašike maslinovog ulja.\r\n2. Ostavite gambore da odstoje u marinadi minimum 15 minuta.\r\n3. Nakon toga, sve sastojke iz činije izručite u tiganj i dinstajte oko 10 minuta, uz često mešanje.\r\n4. Skinite sa vatre i dodajte 2 kašike ajvara uz limunov sok.\r\n5. Skuvajte pirinčanu testeninu prema uputstvu, isperite pod mlazom hladne vode, iscedite i sjedinite sa sosom od gambora.\r\n6. Po želji, za potrebe dekoracije, pospite crnim susamom.', 'misko123'),
(2, 'Italijanska piletina u rerni', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/08/T1A9088-1440x960.jpg', 'slano', 'Sastojci\r\nâ€“ 2-3 pileÄ‡a filea\r\nâ€“ 1 Å¡aka listiÄ‡a sveÅ¾eg bosiljka\r\nâ€“ 1 Å¡aka cherry paradajza \r\nâ€“ 1 pakovanje mozzarella sira\r\nâ€“ maslinovo ulje\r\nâ€“ so i biber', 'Uputstvo za pripremu\r\n1. PileÄ‡i file zasecite na 5-6 mesta.\r\n2. U svaki prorez stavite po komad mozzarella sira, list bosiljka i polovinu cherry paradajza.\r\n3. Tako pripremljeno meso stavite u vatrostalnu Äiniju i premaÅ¾ite maslinovim uljem.\r\n4. Pospite meso morskom solju i crnim biberom pa prekrijte folijom i pecite 30 minuta na 200 stepeni.\r\n5. Sklonite foliju i joÅ¡ malo zapecite meso, dok ne porumeni.', 'misko123'),
(3, 'VoÄ‡ni kolaÄ sa borovnicama i malinama', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/08/T1A9151-1440x960.jpg', 'slatko', 'Sastojci\r\nâ€“ 250g ovsenih pahuljica\r\nâ€“ 1/2 kesice praÅ¡ka za pecivo\r\nâ€“ 5 kaÅ¡ika kokosovog Å¡eÄ‡era\r\nâ€“ 1 kaÅ¡iÄica cimeta\r\nâ€“ 100g agava sirupa\r\nâ€“ 1 jaje\r\nâ€“ 1 Å¡olja bademovog mleka\r\nâ€“ 3 kaÅ¡ike grÄkog jogurta\r\nâ€“ 7 kaÅ¡ika otopljenog kokosovog ulja\r\nâ€“ 1 Å¡aka malina\r\nâ€“ 1 Å¡aka  borovnica\r\nâ€“ 2 pune kaÅ¡ike kikiriki putera', 'Uputstvo za pripremu\r\n1. U jednoj Äiniji pomeÅ¡ajte ovsene pahuljice, kokosov Å¡eÄ‡er, praÅ¡ak za pecivo i cimet.\r\n2. U drugoj Äiniji pomeÅ¡ajte sve ostale sastojke, osim malina i borovnica.\r\n3. Sjedinite obe smese u jednu, pa joj polako dodajte voÄ‡e.\r\n4. Izlijte masu u kalup postavljen pek papirom pa pecite 30 minuta na 180 stepeni.\r\n5. KolaÄ potpuno ohladite pre seÄenja.', 'makibrzi'),
(4, 'Palenta sa rukolom i semenkama bundeve', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/08/Palenta-1440x960.png', 'slano', 'Sastojci      \r\nâ€“ 2/3 Å¡olje palente\r\nâ€“ 200ml vode\r\nâ€“ 1 Å¡aka bundevinih semenki\r\nâ€“ 1 veÄ‡a Å¡aka rukole \r\nâ€“ 1 kaÅ¡ika ekstra deviÄanskog maslinovog ulja\r\nâ€“ 1 kaÅ¡iÄica limunovog soka\r\nâ€“ 1/2 kaÅ¡iÄice soli ', 'Uputstvo za pripremu\r\n1. Sipajte vodu i 1/3 kasÌŒicÌŒice soli u Å¡erpu. Nakon Å¡to provri, smanjite temperaturu i postepeno dodajte palentu, konstantno meÅ¡ajuÄ‡i.\r\n2. Nakon sto se palenta zgusne, pomerite Å¡erpu sa ringle.\r\n3. Pripremite dresing od maslinovog ulja, limunovog soka i soli.\r\n4. U posebnoj Äiniji, zaÄinite rukolu a potom je stavite na vrh palente koju ste servirali na tanjir.\r\n5. Po vrhu rukole pospite bundevine semenke i servirajte.', 'makibrzi'),
(5, 'Sirove rolnice sa povrÄ‡em i biljem', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/08/Letnje-avokado-rolnice-1440x960.png', 'slano', 'Sastojci\r\nâ€“ Â½ Å¡olje pirinaÄanih nudli\r\nâ€“ 4 pirinÄana listiÄ‡a za rolnice\r\nâ€“ Â½ kaÅ¡iÄice ekstradeviÄanskog maslinovog ulja\r\nâ€“ 1 kaÅ¡ika svetlog susamovog ulja\r\nâ€“ 1 Å¡olja vrganja, sveÅ¾ih ili suÅ¡enih\r\nâ€“ Â½ kaÅ¡iÄice soja sosa\r\nâ€“ nekoliko sveÅ¾ih listova bosiljka i nane\r\nâ€“ Â½ avokada\r\nâ€“ 1 Å¡olja rukole\r\nâ€“ kikiriki puter za umakanje', 'Uputstvo za pripremu\r\n1. Skvajte pirinÄane nudle prema uputsvu sa pakovanja.\r\n2. Na tiganju zagrejte susamovo ulje i prodinstajte peÄurke tako da omekÅ¡aju i porumene.\r\n3. Prelijte peÄurke soja sosom i ostavite sa strane da se ohlade.\r\n4. PirinÄane listiÄ‡e potopite u toplu vodu 5 sekundi, pa ih nakon toga stavite na Äistu kuhinjsku krpu da absorbuje viÅ¡ak vode.\r\n5. Na sredinu svakog listiÄ‡a stavite nudle, peÄurke, avokado iseckan na kriÅ¡ke, sveÅ¾e zaÄinsko bilje i rukolu.\r\n6. Zamotajte i urolajte ih.\r\n7. Servirajte rolnice sa povrÄ‡em zajedno sa kikiriki puterom za umakanje.', 'makibrzi'),
(6, 'DomaÄ‡i dÅ¾em od borovnica sa Äia semenkama', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/08/Dz%CC%8Cem-od-borovnica-i-c%CC%8Cia-semenki-1440x960.png', 'slatko', 'Sastojci\r\nâ€“ 2 Å¡olje borovnica \r\nâ€“ 2 kaÅ¡ike javorovog sirupa\r\nâ€“ 1 kaÅ¡ika sveÅ¾eg limunovog soka\r\nâ€“ 1 kaÅ¡ika ekstrakta vanile\r\nâ€“ 1 ravna kaÅ¡iÄica cimeta\r\nâ€“ 3 kaÅ¡ike Äia semenki\r\nâ€“ manji prstohvat himalajske soli', 'Uputstvo za pripremu\r\n1. U Å¡erpu srednje veliÄine stavite borovnice, limunov sok i ekstrakt vanile pa kuvajte 3 do 5 minuta na srednjoj vatri, meÅ¡ajuÄ‡i sve vreme.\r\n2. Zatim dodajte sirup od javora, cimet i so pa sklonite sa ringle.\r\n3. Dobijenu smesu pomeÅ¡ajte sa Äia semenkama i onda sve zajedno prespite u staklenu teglu ili Äiniju.\r\n4. Ostavite dÅ¾em da se ohladi i zgusne, a potom stavite teglu u friÅ¾ideru najmanje sat vremena.\r\n5. Ukoliko dÅ¾em nije dovoljno gust, dodajte joÅ¡ Äia semenki.', 'makibrzi'),
(7, 'ÄŒorbica od paradajza sa ovasom', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/08/T1A9120-1440x960.jpg', 'slano', 'Sastojci\r\nâ€“ 1 crni luk\r\nâ€“ 2 kaÅ¡ike ulja\r\nâ€“ 2 Äena belog luka\r\nâ€“ 1 Å¡olja rendane Å¡argarepe \r\nâ€“ 1/2 Å¡olje ovasa\r\nâ€“ 1 konzerva paradajz pelata u komadima\r\nâ€“ so, biber, kumin, perÅ¡un (i drugi zaÄini po ukusu)', 'Uputstvo za pripremu\r\n1. Na ulju izdinstajte crni i beli luk pa dodajte Å¡argarepu i nastavite sa dinstanjem joÅ¡ 10 minuta.\r\n2. Ubacite paradajz, isprani ovas, 2l vode i pustite da provri.\r\n3. Sastojke krÄkajte 1 sat, uz povremeno dolivanje vode, po potrebi.\r\n4. Pred kraj, zaÄinite Äorbicu po ukusu, prohladite i servirajte uz seckani perÅ¡un.', 'jovica123'),
(8, 'Pasta sa Å¡itake peÄurkama', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/07/DSC_3064-1440x962.jpg', 'slano', 'Sastojci\r\nâ€“ 50g suÅ¡enih Å¡itake peÄurke\r\nâ€“ 2 mlada luka\r\nâ€“ 2 Å¡ake sitno seckanog perÅ¡unovog liÅ¡Ä‡a\r\nâ€“ 100ml vode\r\nâ€“ 2 Å¡ake rendane Å¡argarepe \r\nâ€“ 2 kaÅ¡ike susamovog ulja\r\nâ€“ prstohvat himalajske soli\r\nâ€“ 5cm sveÅ¾eg Ä‘umbira\r\nâ€“ 220g obarene bezglutenske testenine\r\nâ€“ 1 kaÅ¡ika maslinovog ulja za testeninu\r\nâ€“ 1 kaÅ¡ika kuzu praha (zguÅ¡njivaÄ)\r\nâ€“ crni susam (za posipanje)', 'Uputstvo za pripremu\r\n1. U Äiniji potopiti Å¡itake peÄurke, minimum 30 minuta.\r\n2. Nakon toga procediti vodu i iseckati peÄurke uzduÅ¾no, na trakice.\r\n3. U tiganju, na ulju, proprÅ¾iti Ä‘umbir i mladi luk, zatim dodati rendanu Å¡argarepu i Å¡itake peÄurke.\r\n4. Dinstati uz Äesto meÅ¡anje, pa doliti vodu i nastaviti sa dinstanjem joÅ¡ 10-ak minuta. Posoliti po ukusu.\r\n5. Kuzu prah razmutiti u 100ml hladne vode pa ubaciti u jelo i meÅ¡ati dok se sos sa peÄurkama ne zgusne. Skloniti sa Å¡poreta.\r\n6. Servirati sos preko obarene testenine pa posuti crnim susamom kao dekoraciju.', 'jovica123'),
(9, 'Tart sa kupinama i borovnicama', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/08/Tart.sa_.kupinama-1440x992.jpg', 'slatko', 'Sastojci\r\nKora\r\n(Pleh za tart 18cm)\r\nâ€“ 350g Oreo keksa\r\nâ€“ 80g putera (otopljenog)\r\nFil\r\nâ€“ 250g kupina \r\nâ€“ 100g borovnica \r\nâ€“ 300g krem sira\r\nâ€“ 150ml slatke pavlake\r\nâ€“ 1 kaÅ¡ika Å¡eÄ‡era u prahu\r\nâ€“ 1 kaÅ¡ika arome vanile\r\nâ€“ 1 kesica Å¾elatina u prahu', 'Uputstvo za pripremu\r\n1. U multipraktiku sameljite Oreo keks i pomeÅ¡ajte sa otopljenim puterom.\r\n2. Smesu utisnite u pleh kao podlogu za tart.\r\n3. Pripremite fil tako Å¡to Ä‡ete Å¾elatin sipati u Äinijicu i preliti sa 4 kaÅ¡ike ledene vode, promeÅ¡ati i ostaviti da nabubri.\r\n4. U odvojenom sudu, umutite slatku pavlaku i vanilu.\r\n5. Kupine i borovnice sameljite u multipraktiku (po Å¾elji procedite od semenki).\r\n6. Krem sir umutite sa Å¡eÄ‡erom u prahu, zatim mu dodajte samleveno voÄ‡e i prethodno umuÄ‡enu slatku pavlaku.\r\n7. Smesu staviti preko kore i ostaviti nekoliko sati ili preko noÄ‡i da se stegne.\r\n8. Ukrasite sveÅ¾im voÄ‡em po Å¾elji.', 'jovica123'),
(10, 'Sirovi Äizkejk sa prelivom od borovnica', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/07/Cizkejk.borovnica-1440x959.jpg', 'slatko', 'Sastojci\r\nKora\r\nâ€“ 200g integralnog keksa\r\nâ€“ 50g putera\r\nFil\r\nâ€“ 400g maskarpone sira\r\nâ€“ 1 kisela pavlaka\r\nâ€“ 150ml slakte pavlake\r\nâ€“ 2 kaÅ¡ike Å¡eÄ‡era u prahu\r\nâ€“ 1 kesica Å¾elatina u prahu\r\nâ€“ 3 kaÅ¡ike hladne vode\r\nSos\r\nâ€“ 500g borovnica \r\nâ€“ 2 kesice vanilinog Å¡eÄ‡era\r\nâ€“ 1 kaÅ¡ika arome vanile\r\nâ€“ 50ml vode', 'Uputstvo za pripremu\r\n1. Pripremite koru tako Å¡to Ä‡ete u blenderu sjediniti keks i otopljeni puter pa smesu utisnuti u dno pleha preÄnika 18cm.\r\n2. Za fil, u Äiniji prelijte Å¾elatin sa vodom i ostavite da odstoji 5 minuta.\r\n3. U drugoj Äiniji, sjedinite sir, kiselu pavlaku, Å¡eÄ‡er pa zatim u tu smesu umeÅ¡ajte slatku pavlaku.\r\n4. Å½elatin zagrejte da se vrati u teÄno stanje, potom sipajte u kremastu smesu koju ste pripremili i dobro promeÅ¡ajte.\r\n5. Napravite preliv od borovnica za sirovi Äizkejk, tako Å¡to Ä‡ete u Å¡erpici kuvati sve sastojke 10tak minuta dok ne ispari viÅ¡ak vode i ostane gust sos.\r\n6. U gotov fil umeÅ¡ajte 1 kaÅ¡iku sosa od borovnica (ne meÅ¡ajte previse, da ostanu ljubiÄaste Å¡are).\r\n7. U plehu preko podloge rasporedite fil i ostavite u friÅ¾ideru minimum 5 sati da se stegne.\r\n8. Prilikom serviranja, sirovi Äizkejk treba preliti sa sosom od borovnica.\r\n\r\n', 'jovica123'),
(11, 'KolaÄ sa malinama i mrvicama', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/07/IMG_3718_Facetune_02-07-2019-11-10-35-1440x959.jpg', 'slatko', 'Sastojci\r\nâ€œKoraâ€\r\nâ€“ 400g prezli\r\nâ€“ 150g braon Å¡eÄ‡era\r\nâ€“ 2 kesice vanilinog Å¡eÄ‡era\r\nâ€“ 100ml ulja\r\nâ€“ 1 kaÅ¡ika cimeta\r\nFil\r\nâ€“ 1l mleka\r\nâ€“ 150g braon Å¡eÄ‡era\r\nâ€“ 1 praÅ¡ak za pecivo\r\nâ€“ 2 kesice vanilinog Å¡eÄ‡era\r\nâ€“ 1 jaje\r\nâ€“ 180g griza\r\nâ€“ 90g putera\r\nDodatak\r\nâ€“ oko 600g malina ', 'Uputstvo za pripremu\r\n1. Pripremite â€œkoruâ€ tako Å¡to Ä‡ete sjediniti sve sastojke. Ostavite je sa strane.\r\n2. Za fil, odvojite 300ml mleka i pomeÅ¡ajte sa svim navedenim sastojcima izuzev putera.\r\n3. 700ml mleka stavite da provri pa dodajte prethodnu smesu i kuvajte dok se ne zgusne. Na kraju dodajte puter i sjedinite.\r\n4. U pleh sipajte polovinu smese sa prezlama, zatim poreÄ‘ajte maline, pa rasporedite fil i na kraju opet prezle.\r\n5. Pecite u zagrejanoj rerni na 180 stepeni (bez ventilatora) 1 sat.\r\n6. SaÄekajte da se kolaÄ sa malinama i mrvicama prohladi, isecite pa posluÅ¾ite sa kuglom sladoleda i sveÅ¾im malinama.', 'misko123'),
(12, 'Ledeni tart sa malinama', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/06/T1A7019-1440x960.jpg', 'slatko', 'Sastojci\r\nKora\r\nâ€“ 125g omekÅ¡alog putera\r\nâ€“ 5 kaÅ¡ika kokosovog Å¡eÄ‡era\r\nâ€“ 1 jaje\r\nâ€“ 1 Å¡olja braÅ¡na\r\nâ€“ prstohvat soli\r\nFil\r\nâ€“ 350g neslanog sira\r\nâ€“ 7 kaÅ¡ika meda ili agava sirupa\r\nâ€“ 1/2 kaÅ¡iÄice vanile\r\nâ€“ 1 Å¡aka malina\r\nâ€“ 5 kaÅ¡ika otopljenog kokosovog ulja\r\nÄŒokoladna glazura\r\nâ€“ 7 kaÅ¡ika kakao putera\r\nâ€“ 7 kaÅ¡ika kokosovog ulja\r\nâ€“ 2 pune kaÅ¡ike sirovog kakaa\r\nâ€“ 5 kaÅ¡ika agava sirupa', 'Uputstvo za pripremu\r\n1. Zamesite testo tako Å¡to Ä‡ete pomeÅ¡ati sve sastojke za koru.\r\n2. Umotajte u providnu foliju i stavite u friÅ¾ider na 20 minuta da se stegne.\r\n3. Razvucite testo u kalup za tart, izbockajte ga viljuÅ¡kom i pecite 15-20 minuta na 180 stepeni.\r\n4. Izvadite iz rerne i ostavite da se ohladi.\r\n5. U multipraktik stavite sve sastojke za fil i umutite.\r\n6. Prelijte fil preko kore i stavite u zamrzivaÄ na 2-3 sata da se stegne.\r\n7. U Å¡erpici istopite kakao puter i kokosovo ulje.\r\n8. Sklonite sa vatre i umeÅ¡ajte kakao prah i agava sirup.\r\n9. Prohladite, pa prelijte preko skoro zamrznutog fila.\r\n10. Vratite u zamrzivaÄ da se tart sa malinama stegne pre seÄenja i sluÅ¾enja i postane ledeen.', 'misko123'),
(13, 'Salata sa cveklom i spanaÄ‡em', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/07/DSC_3343-Edit-1440x938.jpg', 'slano', 'Sastojci\r\nâ€“ 1 kaÅ¡ika otopljenog kokosovog ulja\r\nâ€“ 1 cvekla\r\nâ€“ 4 Å¡ake baby spanaÄ‡a \r\nâ€“ 1 Äen belog luka\r\nâ€“ 1/2 limuna, sok\r\nâ€“ prstohvat himalajske soli\r\nâ€“ 1 kuvano jaje\r\nâ€“ 1 kaÅ¡iÄica crnog susama', 'Uputstvo za pripremu\r\n1. Na kokosovom ulju izdinstajte beli luk i cveklu seÄenu na trakice.\r\n2. Dodajte baby spanaÄ‡, dinstajte joÅ¡ minut pa zaÄinite sa limunovim sokom i solju po ukusu.\r\n3. Dobro promeÅ¡ajte, pospite crnim susamom i servirajte uz kuvano jaje.', 'ljubomir123'),
(14, 'Salata sa tofu sirom i tikvicama', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/07/DSC_3311-1440x962.jpg', 'slano', 'Sastojci\r\nâ€“ 1 Å¡aka baby spanaÄ‡a \r\nâ€“ 1 tikvica\r\nâ€“ 100g sirovog, organskog tofu sira\r\nâ€“ 3 + 2 kaÅ¡ike maslinovog ulja\r\nâ€“ 3 kaÅ¡ike Tamari sosa\r\nâ€“ 3 kaÅ¡ike + 1 kaÅ¡ika jabukovog sirÄ‡eta\r\nâ€“ 3 kaÅ¡ike rendanog crvenog kupusa\r\nâ€“ 1 Å¡aka rendane Å¡argarepe \r\nâ€“ 1 mladi luk\r\nâ€“ 1 kaÅ¡ika seckanog perÅ¡unovog liÅ¡Ä‡a\r\nâ€“ prstohvat himalajske soli', 'Uputstvo za pripremu\r\n1. Pripremite tofu sir tako Å¡to Ä‡ete ga iseckati na kockice veliÄine 2Ã—2 cm, preliti sa maslinovim uljem, Tamari sosom i jabukovim sirÄ‡etom, poslagati u tepsiju prekrivenu pek papirom i peÄ‡i u zagrejanoj rerni na 200 stepeni 20-25 minuta.\r\n2. Kada tofu sir poprimi zlatno braon boju, izvadite ga iz rerne i ostavite da se ohladi.\r\n3. Napravite spirale od tikvica (nudle) pa ih stavite u veliku Äiniju sa baby spanaÄ‡em, crvenim kupusom, Å¡argarepom i mladim lukom.\r\n4. Dodajte maslinovo ulje, jabukovo sirÄ‡e i so, pa dobro promeÅ¡ajte.\r\n5. Salatu servirajte na tanjir, a preko nje stavite peÄeni sir pripremljen prema naÅ¡em receptu.\r\n6. Po vrhu pospite sitno seckano perÅ¡unovo liÅ¡Ä‡e.', 'ljubomir123'),
(15, 'Ovsena kaÅ¡a sa bobiÄastim voÄ‡em', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/06/T1A1706-1440x960.jpg', 'slatko', 'Sastojci\r\nâ€“ 50g ovsenih pahuljica\r\nâ€“ 350ml kokosovog mleka\r\nâ€“ 1 kaÅ¡ika meda\r\nâ€“ 1/3 kaÅ¡iÄice cimeta\r\nâ€“ 5-6 borovnica \r\nâ€“ 3 jagode ', 'Uputstvo za pripremu\r\n1. IzruÄite u Å¡erpicu ovsene pahuljice i mleko pa kuvajte na tihoj vatri 5 minuta.\r\n2. Sklonite sa vatre da se prohlade pa umeÅ¡ajte cimet i med.\r\n3. Naseckajte sveÅ¾e jagode i ubacite borovnice.\r\n4. Servirajte toplo.', 'ljubomir123'),
(16, 'Mus sa prelivom od jagoda', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/06/Mus-sa-prelivom-od-jagoda-1440x960.jpg', 'slatko', 'Sastojci\r\nMus\r\nâ€“ 300g jagoda \r\nâ€“ 70g Å›eÄ‡era u prahu\r\nâ€“ 3 + 2 kaÅ¡ike soka od pomorandÅ¾e\r\nâ€“ 200g kisele pavlake\r\nâ€“ 150ml slatke pavlake\r\nâ€“ 1 kesica Å¾elatina\r\nâ€“ 3 kaÅ¡ike hladne vode\r\nPreliv\r\nâ€“ 400g jagoda \r\nâ€“ 2 kesice vanilinog Å¡eÄ‡era\r\nâ€“ 1 kaÅ¡ika ekstrakta vanile\r\nâ€“ 100ml vode\r\nâ€“ 100g braon Å¡eÄ‡era', 'Uputstvo za pripremu\r\n1. Prvo pripremite mus tako Å¡to Ä‡ete Å¾elatin preliti sa 3 kaÅ¡ike hladne vode i ostaviti da odstoji 5 minuta.\r\n2. Umutite slatku pavlaku (pazite da ne bude previse umuÄ‡ena).\r\n3. Jagode izblendirajte u blenderu zajedno sa Å¡eÄ‡erom i 3 kaÅ¡ike soka od pomorandÅ¾e.\r\n4. Prebacite u cediljku i procedite od semenki.\r\n5. Å½elatinu dodajte dve kaÅ¡ike soka od pomorandÅ¾e i podgrejte ga tako da se vrati u teÄno stanje.\r\n6. Dodajte jagode i dobro umutite.\r\n7. Na kraju sjedinite meÅ¡avinu sa kiselom pavlakom, a zatim lagano umeÅ¡ajte i prethodno umuÄ‡enu slatku pavlaku.\r\n8. Ostavite mus u friÅ¾ideru sat vremena da se zgusne.\r\n9. Pripremite sos tako Å¡to Ä‡ete kuvati sve sastojke 15-tak minuta na srednjoj vatri.\r\n10. RuÄnim mikserom izblendirajte sve kuvane sastojke, procedite kroz cediljku i ostavite da se ohladi.\r\n11. Sos prelijte preko musa prilikom serviranja.', 'ljubomir123'),
(17, 'Sirova torta sa jagodama', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/06/T1A1637-1440x960.jpg', 'slatko', 'Sastojci\r\nKora\r\nâ€“ 25 sirovih urmi\r\nâ€“ 1 Å¡olja peÄenog leÅ¡nika\r\nâ€“ 1 kaÅ¡ika sirovog kakaa\r\nâ€“ 2 kaÅ¡ike otopljenog kokosovog ulja\r\nSloj sa jagodama\r\nâ€“ 2 kaÅ¡ike agave sirupa\r\nâ€“ 10 jagoda \r\nFil\r\nâ€“ 2 1/2 Å¡olje sirovog indijskog oraha â€“ potopljenog u vodu preko noÄ‡i\r\nâ€“ 5 kaÅ¡ika otopljenog kokosovog ulja\r\nâ€“ 8 kaÅ¡ika agave sirups\r\nâ€“ 1 kaÅ¡iÄica arome vanile\r\nGlazura\r\nâ€“ 2 pune kaÅ¡ika sirovog kakaoa\r\nâ€“ 5 kaÅ¡ika kokosovog ulja\r\nâ€“ 5 kaÅ¡ika kakao putera\r\nâ€“ 5 kaÅ¡ika agave sirupa', 'Uputstvo za pripremu\r\n1. PoÄnite sa pripremom kore. U multipraktiku usitnite 1 Å¡olju peÄenog leÅ¡nika.\r\n2. Dodajte urme, kakao i kokosovo ulje i nastavite sa blendiranjem dok se smesa ne ujednaÄi.\r\n3. Smesu stavite u kalup za tortu, pa u friÅ¾ider da se stegne.\r\n5. Za fil, indijski orah ocedite pa ubacite u multipraktik i izblendirajte da bude kremast.\r\n6. Dodajte kokosovo ulje, aromu vanile i agava sirup pa nastavite sa blendiranjem dok smesa ne bude ujednaÄena.\r\n7. Izvadite koru iz friÅ¾idera pa na nju namaÅ¾ite agava sirup i naseckajte jagode.\r\n8. Preko jagoda ravnomerno rasporedite fil od indijskog oraha i vratite u frizider.\r\n9. Za glazuru, u Å¡erpici otopite kakao puter zajedno sa kokosovim uljem.\r\n10. Uklonite sa varte, umeÅ¡ajte agava sirup i kakao pa prelijte smesu preko torte.\r\n12. Sirova torta sa jagodama treba da odstoji u friÅ¾ideru minimum 3-4 sata pre serviranja.', 'petar123'),
(18, 'Sladak kolaÄ od krompira', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/06/Kolac.od_.krompira-1440x1042.jpg', 'slatko', 'Sastojci\r\nTesto\r\nâ€“ 300g slatkog krompira (batat)\r\nâ€“ 150g rendane Å¡argarepe \r\nâ€“ 3 kaÅ¡ike meda\r\nâ€“ 2 jajeta\r\nâ€“ 3 kaÅ¡ike kokosovog ulja\r\nâ€“ 1 kaÅ¡ika ekstrakta vanile\r\nâ€“ 1 kaÅ¡iÄica cimeta\r\nâ€“ 1/2 kaÅ¡iÄice praÅ¡ka za pecivo\r\nâ€“ 1/2 kaÅ¡iÄice sode bikarbone\r\nâ€“ 1/4 kaÅ¡iÄice muskatnog oraÅ¡ÄiÄ‡a\r\nâ€“ 1/2 kaÅ¡iÄice mlevenog Ä‘umbira\r\nâ€“ Prstohvat soli\r\nâ€“ 120g braÅ¡na\r\nâ€“ Suvo groÅ¾Ä‘e (po Å¾elji)\r\nFil\r\nâ€“ 1 beli krompir\r\nâ€“ 4 kaÅ¡ike meda\r\nâ€“ 3 kaÅ¡ike otopljenog kokosovog ulja ili maslaca\r\nâ€“ 1 kaÅ¡ika ekstrakta vanile\r\nâ€“ prstohvat soli\r\nâ€“ 1 kaÅ¡ika limunovog soka + narendana korica\r\nToping\r\nâ€“ 70g oraha', 'Uputstvo za pripremu\r\n1. Za pripremu testa, u multipraktiku usitnite krompir, dodajte ostale sastojke (izuzev Å¡argarepe) i blendirajte dok se smesa ne sjedini.\r\n2. UmeÅ¡ajte Å¡argarepu pa prebacite smesu u pleh veliÄine 25x15cm, postavljen papirom za peÄenje.\r\n3. Smesu pecite u zagrejanoj rerni 45 minuta na 180 stepeni dok ne dobije zlatnu boju.\r\n4. Kako biste napravili fil, skuvajte beli krompir, procedite ga od vode i izgnjeÄite.\r\n5. U velikoj Äiniji pomeÅ¡ajte sve sastojke za fil, ubacite beli kuvani krompir i mutite mikserom dok se smesa u potpunosti ne ujednaÄi.\r\n6. Fil prohladite pa premaÅ¾ite preko kolaÄa.\r\n7. KolaÄ stavite u friÅ¾ider da odstoji minimum 2-3 sata pre sluÅ¾enja.\r\n8. Pospite kolaÄ od krompira usitnjenim orasima i isecite.', 'petar123'),
(19, 'DomaÄ‡i namaz od plavog patlidÅ¾ana', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/06/T1A6824-1440x960.jpg', 'slano', 'Sastojci\r\nâ€“ 1 crni luk\r\nâ€“ 1 Äen belog luka\r\nâ€“ 2 kaÅ¡ike maslinovog ulja\r\nâ€“ 1 Å¡aka rendane Å¡argarepe\r\nâ€“ 1 Å¡tap stabljike celera\r\nâ€“ 1 manji plavi patlidÅ¾an\r\nâ€“ 5 kaÅ¡ika pelata\r\nâ€“ malo sveÅ¾eg perÅ¡una\r\nâ€“ so i biber (po ukusu)', 'Uputstvo za pripremu\r\n1. Iseckajte patlidÅ¾an, posolite i ostavite da odstoji.\r\n2. U tiganju proprÅ¾ite sitno seckani beli i crni luk.\r\n3. Dodajte iseckani celer i nastavite sa dinstanjem joÅ¡ 10 minuta.\r\n4. Na kraju umeÅ¡ajte patlidÅ¾an (opran od soli) i pelat i krÄkajte uz povremeno meÅ¡anje dok veÄ‡ina vode ne ispari.\r\n5. Smesu prohladite, pa umutite Å¡tapnim mikserom.\r\n6. Dodajte perÅ¡un, so i biber po ukusu.\r\n7. Stavite namaz od plavog patlidÅ¾ana u teglicu i Äuvajte u friÅ¾ideru.', 'petar123'),
(20, 'ZapeÄeni grÄki feta sir sa Äeri paradajzom', 'https://www.klubzdravihnavika.com/wp-content/uploads/2019/07/Snapseed-1440x961.jpg', 'slano', 'Sastojci\r\nZapeÄeni grÄki feta sir\r\nâ€“ 250g grÄkog feta sira\r\nâ€“ 50ml maslinovog ulja\r\nâ€“ 7 komada Äeri paradajza \r\nâ€“ 5 Äena belog luka\r\nâ€“ krupna morska so\r\nâ€“ sveÅ¾e mleveni biber\r\nPoÅ¡irana jaja\r\nâ€“ 2 jajeta\r\nâ€“ 1 kaÅ¡ika sirÄ‡eta\r\nPrilog\r\nâ€“ 1 Å¡aka baby spanaÄ‡a \r\nâ€“ 1 Å¡aka rukolice ', 'Uputstvo za pripremu\r\n1. Stavite feta sir na pleh obloÅ¾en pek papirom. Pored njega dodajte na polovine naseckan Äeri paradajz, beli luk, ruzmarin i sve to prelijte maslinovim uljem. Posolite i pobiberite.\r\n2. Pecite u rerni zagrejanoj na 180 stepeni oko 25 minuta pa ukljuÄite ventilator i pecite joÅ¡ 3-4 minuta.\r\n3. U malo veÄ‡u Å¡erpicu sipajte vodu i stavite da provri. U dve manje Äinijice (ili Å¡oljice) razbijte dva jaja.\r\n4. Sipajte sirÄ‡e u vodu, promeÅ¡ajte kaÅ¡ikom pa spustite paÅ¾ljivo jaja u vodu jedno pored drugog. Ostavite ih da se kuvaju taÄno tri minuta. Izvadite ih na kratko na ubrus, a potom prebacite na feta sir kada je serviran na tanjiru.\r\n5. Servirajte uz baby spanaÄ‡ i rukolicu kao prilog, dodajte sastojke iz pleha i prelijte preostalim maslinovim uljem u kojem se povrÄ‡e peklo.', 'petar123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `kuvar`
--
ALTER TABLE `kuvar`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ocena`
--
ALTER TABLE `ocena`
  ADD PRIMARY KEY (`id_Recept`,`id_Korisnik`,`vreme`),
  ADD KEY `FK_K` (`id_Korisnik`);

--
-- Indexes for table `recept`
--
ALTER TABLE `recept`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_KUVAR` (`usernameKuvara`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recept`
--
ALTER TABLE `recept`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ograničenja za izvezene tabele
--

--
-- Ograničenja za tabele `ocena`
--
ALTER TABLE `ocena`
  ADD CONSTRAINT `FK_K` FOREIGN KEY (`id_Korisnik`) REFERENCES `korisnik` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_R` FOREIGN KEY (`id_Recept`) REFERENCES `recept` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograničenja za tabele `recept`
--
ALTER TABLE `recept`
  ADD CONSTRAINT `FK_KUVAR` FOREIGN KEY (`usernameKuvara`) REFERENCES `kuvar` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
