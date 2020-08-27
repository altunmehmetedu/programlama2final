-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 27 Ağu 2020, 19:19:13
-- Sunucu sürümü: 5.5.65-MariaDB
-- PHP Sürümü: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `odevdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araba`
--

CREATE TABLE `araba` (
  `id` int(11) NOT NULL,
  `araba_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `araba_fiyat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `araba`
--

INSERT INTO `araba` (`id`, `araba_ad`, `araba_fiyat`) VALUES
(381, 'HATASIZ 2017 TOYOTA COROLLA 1.4 D-4D TOUCH ANINDA KREDİ İLE', 163750),
(382, 'FERRAH OTOMOTİV\'DEN TOYOTA VERSO HATASIZ+BOYASIZ 1.6 LPG\'Lİ', 132000),
(383, '_OttoBull_ 2010 TOYOTA COROLLA 1.4 D-4D ELEGANT', 85000),
(384, '2012 TOYOTA AURİS 1.4 D-4D F1 VİTES OTOMATİK HASAR KAYITSIZ', 98900),
(385, '2017 Corolla Touch DİZEL OTOMATİK BOYASIZ TRAMERSİZ 42.000 KM', 175900),
(386, 'BOYASIZ DEĞİŞENSİZ TRAMERSİZ 12000 KM\'DE SIFIR AYARINDA ADVANCE', 189750),
(387, 'AA MOTORS SATILIK FULL EXTRALI FB PLAKALI', 84500),
(388, 'BOLU YAKIŞIR OTOTMOTİV\'\'\'DEN COROLLA', 131500),
(389, 'BOLU YAKIŞIR OTOMOTİV\'\'\'DEN TOYOTA AURİS OTOMATİK', 133750),
(390, 'DURAKOĞLU OTOMOTİVDEN 2010 HATASIZ BOYASIZ', 105000),
(391, 'BOYASIZ-DEĞİŞENSİZ-TRAMERSİZ-TERTEMİZ-LOVATO LPGLİ', 114900),
(392, 'TERTEMİZ-İKİNCİ SAHİBİNDEN-EMSALSİZ KM DE-SOL PAKET-LPGLİ', 84900),
(393, 'Galeriden Toyota Auris 1.33 Comfort 2012 Model Muğla', 96500),
(394, '2013 MODEL 1.4D4D Active Skypack CAM TAVAN OTOMATİK', 105000),
(395, 'ONUR OTOMOTİV\'DEN BAKIMLI TEMİZ KUSURSUZ DEĞİŞENSİZ 2001 TERRA', 48900),
(396, 'Bakmadan geçme masrafız bakımlı', 98500),
(397, 'KUSURSUZ TEMİZLİKTE HATASIZ 1.4 DİZEL COMFORT PLUS VSC Lİ', 99900),
(398, 'TR İN EN UYGUNU 2009 MODEL BENZİN 143.000 KM TAM OTOMATİK VİTES-', 68500),
(399, 'Memurdan Toyota Auris 2015 Model LPG\'li hasarsız değişensiz', 116750),
(400, 'Sahibinden Toyota Corolla 1.33 Comfort 2012 Model', 117500);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `araba`
--
ALTER TABLE `araba`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `araba`
--
ALTER TABLE `araba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
