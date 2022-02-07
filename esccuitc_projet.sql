-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  lun. 14 jan. 2019 à 16:35
-- Version du serveur :  10.2.21-MariaDB
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `esccuitc_projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `avoir_compet1`
--

CREATE TABLE `avoir_compet1` (
  `apogee` int(11) NOT NULL,
  `id1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avoir_compet1`
--

INSERT INTO `avoir_compet1` (`apogee`, `id1`) VALUES
(16004165, 1),
(16004165, 2),
(16004165, 3),
(16004165, 4),
(16004100, 1),
(16004100, 2),
(16004100, 3),
(16004100, 4),
(16007813, 2),
(16007813, 3),
(16007813, 4),
(16000087, 1),
(16000087, 2),
(16000087, 3),
(16000087, 4);

-- --------------------------------------------------------

--
-- Structure de la table `avoir_compet2`
--

CREATE TABLE `avoir_compet2` (
  `apogee` int(20) NOT NULL,
  `id2` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avoir_compet2`
--

INSERT INTO `avoir_compet2` (`apogee`, `id2`) VALUES
(16000087, 3),
(16000087, 4),
(16000087, 5),
(16000087, 6),
(16004100, 3),
(16004100, 4),
(16004100, 5),
(16004100, 6),
(16004165, 3),
(16004165, 4),
(16004165, 5),
(16004165, 6),
(16007813, 3),
(16007813, 4),
(16007813, 5);

-- --------------------------------------------------------

--
-- Structure de la table `avoir_compet3`
--

CREATE TABLE `avoir_compet3` (
  `apogee` int(20) NOT NULL,
  `id3` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avoir_compet3`
--

INSERT INTO `avoir_compet3` (`apogee`, `id3`) VALUES
(16000087, 1),
(16000087, 3),
(16004100, 1),
(16004165, 1),
(16004165, 3),
(16007813, 1),
(16007813, 3);

-- --------------------------------------------------------

--
-- Structure de la table `avoir_exp`
--

CREATE TABLE `avoir_exp` (
  `apogee` int(20) NOT NULL,
  `id5` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avoir_exp`
--

INSERT INTO `avoir_exp` (`apogee`, `id5`) VALUES
(16000087, 13),
(16004100, 4),
(16004165, 7),
(16007813, 10);

-- --------------------------------------------------------

--
-- Structure de la table `bureautique`
--

CREATE TABLE `bureautique` (
  `id1` int(20) NOT NULL,
  `b` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bureautique`
--

INSERT INTO `bureautique` (`id1`, `b`) VALUES
(1, 'Word'),
(2, 'Excel'),
(3, 'PowerPoint'),
(4, 'Access');

-- --------------------------------------------------------

--
-- Structure de la table `diplome`
--

CREATE TABLE `diplome` (
  `id0` int(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `etablissement` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `diplome`
--

INSERT INTO `diplome` (`id0`, `nom`, `etablissement`) VALUES
(4, 'Bac', 'Moulay Youssef'),
(6, 'licence en sciences de l\'Ã©ducation', 'CEPEC'),
(7, 'BAC', 'Maghrib Arabi'),
(8, 'Bac sciences maths B', 'LycÃ©e Moulay Youssef'),
(9, 'Bac sciences maths B', 'LycÃ©e Moulay Youssef'),
(10, 'Bac sciences maths B', 'LycÃ©e Moulay Youssef'),
(11, 'Bac sciences maths B', 'LycÃ©e Moulay Youssef'),
(12, '.KGVK?', '.JG?BL.'),
(13, 'Bac sciences maths B', 'LycÃ©e Moulay Youssef'),
(14, 'bac sciences physiques', 'Moulay youssef');

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `code` int(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `password` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`code`, `nom`, `password`) VALUES
(1, 'OCP', '7OCP'),
(2, 'ONCF', '14ONCF'),
(3, 'SAFRAN', '21SAFRAN'),
(4, 'Mentor Graphics Maroc', '28Mentor Graphics Maroc'),
(5, 'Altran Maroc', '35Altran Maroc'),
(6, 'PSA GROUPE', '42PSA GROUPE'),
(7, 'GIS4DS', '49GIS4DS'),
(8, 'Honeywell', '56Honeywell'),
(9, 'AGC ', '63AGC '),
(10, 'Talents 2.0', '70Talents 2.0'),
(11, 'NEXTRONIC', '77NEXTRONIC'),
(12, 'Sofrecom', '84Sofrecom');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `apogee` int(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` int(100) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `filiere` varchar(100) DEFAULT NULL,
  `adresse` varchar(200) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`apogee`, `nom`, `prenom`, `email`, `tel`, `date_naissance`, `filiere`, `adresse`, `photo`, `video`) VALUES
(11000058, 'WASMINE', 'BADR', 'badr.wasmine@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(12000048, 'BOUSSOUF', 'NISRINE', 'nisrine.boussouf@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(12000070, 'AKIF', 'OUSSAMA', 'oussama.akif@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(12000183, 'EL OUASSDI', 'HIND', 'hind.elouassdi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(12000185, 'AZOUGGAGH', 'NAHLA', 'nahla.azouggagh@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(12000293, 'RIAD', 'IMANE', 'imane.riad@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(12001974, 'LAAJILI', 'SOUMIA', 'soumia.laajili@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(12002392, 'BENMERIEME', 'ISMAIL', 'ismail.benmerieme@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(12003977, 'BRAHMI', 'MOHAMED AMINE', 'mohamedamine.brahmi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(12005579, 'BERRAHOU', 'AYOUB', 'ayoub.berrahou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002548, 'EL ATLASSI', 'SARA', 'sara.elatlassi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002565, 'ABBER', 'MONA', 'mona.abber@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002599, 'GUELZIM', 'JIHANE', 'jihane.guelzim@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002639, 'ASSAL', 'AHMED REDA', 'ahmedreda.assal@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002659, 'BENFETTAH', 'OUSSAMA', 'oussama.benfettah@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002664, 'EL KHADAR', 'MOUHCINE', 'mouhcine.elkhadar@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002725, 'MESBAHI', 'ILIASS', 'iliass.mesbahi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002773, 'ACHAHBOUN', 'EL-MEHDI', 'elmehdi.achahboun@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002784, 'ED-DAOUY', 'ABDELAZIZ', 'abdelaziz.eddaouy@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002787, 'BELAMRAOUAH', 'KHADIJA', 'khadija.belamraouah@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002789, 'AZREG', 'AYMAN', 'ayman.azreg@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002793, 'EL SABROUTY', 'RIHAB', 'rihab.elsabrouty@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002795, 'BENZAID', 'MOUHSSINE', 'mouhssine.benzaid@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002796, 'IMAM', 'MOUAAD', 'mouaad.imam@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002798, 'OUTALEB', 'DOUNIA', 'dounia.outaleb@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002801, 'KOURRICHE', 'ILYASSE', 'ilyasse.kourriche@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002949, 'EL HADRI', 'YASSINE', 'yassine.elhadri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002954, 'IHIA', 'JIHANE', 'jihane.ihia@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002957, 'CHOUAIBI', 'NIAMATE', 'niamate.chouaibi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002960, 'KARIMI', 'BADREDDINE', 'badreddine.karimi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002966, 'LBOUKILI', 'SAFAA', 'safaa.lboukili@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002970, 'KOUCHAM', 'FADOUA', 'fadoua.koucham@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002973, 'LAKHILI', 'ASMAE', 'asmae.lakhili@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002977, 'EZZAHI', 'YOUSSEF', 'youssef.ezzahi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002979, 'AL MOUBAKER', 'HAJAR', 'hajar.almoubaker@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002982, 'MAJIDI', 'MOHAMMED', 'mohammed.majidi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13002993, 'HADAJ', 'MOHAMED', 'mohamed.hadaj@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13003031, 'ALMOUHAK', 'KAOUTAR', 'kaoutar.almouhak@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13003032, 'FRAIGUI', 'OUMAIMA', 'oumaima.fraigui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13003050, 'HARIM', 'SALMA', 'salma.harim@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13003063, 'GAROUJ', 'SAFAA', 'safaa.garouj@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13003068, 'KABOURI', 'OUMAIMA', 'oumaima.kabouri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13003148, 'KHETTOUCH', 'NADIA', 'nadia.khettouch@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13003438, 'FAHAM', 'MANAL', 'manal.faham@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13003714, 'EL BOURAKKADI-SOUSSI', 'AYOUB', 'ayoub.elbourakkadisoussi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13003837, 'MOUSSA', 'AYOUB', 'ayoub.moussa@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13004048, 'TALEBI', 'NAJOUA', 'najoua.talebi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13005198, 'EL MALYH', 'BADREDDINE', 'badreddine.elmalyh@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13005237, 'MCHAREG', 'HIND', 'hind.mchareg@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13005274, 'OMARI', 'ABDELLAH', 'abdellah.omari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13005530, 'OUFKIR', 'BRAHIM', 'brahim.oufkir@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13005695, 'EL MANAIA', 'ILIASS', 'iliass.elmanaia@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13006087, 'RACHID', 'SARA', 'sara.rachid@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13006704, 'AIT CHAIB', 'WALID', 'walid.aitchaib@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13006832, 'HADIT', 'OUSSAMA', 'oussama.hadit@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13007014, 'EL-ABBADI', 'BOUTAINA', 'boutaina.elabbadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13007078, 'LAALAMI', 'ABDESSALAM', 'abdessalam.laalami@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13007111, 'AKSBI', 'OUSSAMA', 'oussama.aksbi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13007912, 'EL IDRISSI', 'TAOUFIQ', 'taoufiq.elidrissi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13007921, 'CHTIBY', 'SAFAA', 'safaa.chtiby@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13007923, 'EL OUARTI', 'YASSIR', 'yassir.elouarti@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13007956, 'ATTIKPATI', 'FOLUKE TIMOTHEE', 'foluketimothee.attikpati@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13007967, 'BOUCHAHMOUD', 'KENZA', 'kenza.bouchahmoud@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13008174, 'HELLAL', 'MOHAMED EL HABIB', 'mohamedelhabib.hellal@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13008258, 'MEJNOUB', 'MAROUANE', 'marouane.mejnoub@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13008732, 'MOUQINE', 'SARAH', 'sarah.mouqine@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(13008940, 'TOUSSAINT', 'PAUL EXER', 'paulexer.toussaint@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000001, 'BOUHNINI', 'MONCEF', 'moncef.bouhnini@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000002, 'AROUADA', 'YASSIR', 'yassir.arouada@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000004, 'LAQTOB', 'RANIA', 'rania.laqtob@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000005, 'DBIZA', 'HICHAM', 'hicham.dbiza@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000006, 'MOUNIR', 'SOUKAYNA', 'soukayna.mounir@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000007, 'LIAICHI', 'MOHAMED AMINE', 'mohamedamine.liaichi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000009, 'DOUBLALI', 'KAWTAR', 'kawtar.doublali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000011, 'DAHI', 'SAFOUANE', 'safouane.dahi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000013, 'SAADAOUI', 'ACHRAF', 'achraf.saadaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000014, 'KAFOU', 'MAROUANE', 'marouane.kafou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000020, 'OUHAMMOU', 'JIHANE', 'jihane.ouhammou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000021, 'EL HADI', 'JIHAD', 'jihad.elhadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000022, 'RIFI', 'ZAINAB', 'zainab.rifi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000024, 'DERKAOUI', 'ANOUAR', 'anouar.derkaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000025, 'BECHNIKHA', 'JALAL', 'jalal.bechnikha@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000026, 'MOUAKKID', 'ZAKARIA', 'zakaria.mouakkid@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000029, 'ET-TAZITI', 'OUALID', 'oualid.ettaziti@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000032, 'DALIL', 'YOUSSEF', 'youssef.dalil@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000033, 'AMMINOU', 'MAHA', 'maha.amminou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000034, 'BOUDOUN', 'BASMA', 'basma.boudoun@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000037, 'KAMARA', 'YOUSSEF', 'youssef.kamara@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000041, 'BOUKAIBAT', 'ACHRAF', 'achraf.boukaibat@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000042, 'ABLA', 'IKRAME', 'ikrame.abla@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000043, 'KARROUM', 'OMAIMA', 'omaima.karroum@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000045, 'SEYAR', 'HAFSA', 'hafsa.seyar@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000047, 'BARGACH', 'RANIA', 'rania.bargach@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000048, 'ASSIMI', 'CHAIMAA', 'chaimaa.assimi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000051, 'EL IDRISSI', 'SOFIA', 'sofia.elidrissi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000053, 'MOURABIT', 'AYOUB', 'ayoub.mourabit@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000054, 'BAHOUMI', 'BASMA', 'basma.bahoumi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000055, 'BENNANI', 'ZAID', 'zaid.bennani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000058, 'BOUDAKHANE', 'ALI', 'ali.boudakhane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000059, 'DRIBI', 'ZAKARIA', 'zakaria.dribi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000061, 'JAHID', 'SALIMA', 'salima.jahid@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000062, 'LAMRAOUI', 'ANASS', 'anass.lamraoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000064, 'MAHROUSS', 'ABDELGHANI', 'abdelghani.mahrouss@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000068, 'MOUAD', 'CHAIMAA', 'chaimaa.mouad@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000070, 'MAAYAT', 'SAFAA', 'safaa.maayat@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000081, 'AAMOUD', 'YOUSSRA', 'youssra.aamoud@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000083, 'EL BASRI', 'YASSINE', 'yassine.elbasri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000084, 'CHENTOUFI', 'OUMAIMA', 'oumaima.chentoufi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000086, 'HACHRI', 'ZAKARIAE', 'zakariae.hachri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000088, 'DAMIR', 'YOUSSEF', 'youssef.damir@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000092, 'MENDILI', 'AYOUB', 'ayoub.mendili@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000093, 'ERRAJI', 'HAJAR', 'hajar.erraji@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000099, 'LALAOUI MOUTARAJJI', 'ZINEB', 'zineb.lalaouimoutarajji@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000100, 'OUAMMOU', 'EL MEHDI', 'elmehdi.ouammou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000101, 'ZAAME', 'IMANE', 'imane.zaame@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000102, 'ATIR', 'LAILA', 'laila.atir@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000103, 'EL ALAM', 'NASSIM', 'nassim.elalam@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000108, 'EL ATTAOUI', 'ANAS', 'anas.elattaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000112, 'ZAIM', 'HANAE', 'hanae.zaim@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000116, 'ZAHIR', 'YASMINE', 'yasmine.zahir@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000119, 'ECH-CHIKHI', 'HIND', 'hind.echchikhi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000120, 'EL HOR', 'DRISS', 'driss.elhor@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000121, 'LABJOUJI', 'SOUFIANE', 'soufiane.labjouji@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000122, 'TAYEBI', 'LINA', 'lina.tayebi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000123, 'DERKAOUI', 'ABDERRAHMAN', 'abderrahman.derkaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000128, 'JEBBARI', 'ACHRAF', 'achraf.jebbari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000130, 'SAHRAOUI DOUKKALI', 'SAAD', 'saad.sahraouidoukkali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000132, 'CHAABI', 'NAIMA', 'naima.chaabi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000133, 'MALMOUM', 'AYATARRAHMANE', 'ayatarrahmane.malmoum@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000136, 'ATAR', 'WIAME', 'wiame.atar@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000137, 'ZANFI', 'OUSSAMA', 'oussama.zanfi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000138, 'SKRI', 'BADR-EZZAMAN', 'badrezzaman.skri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000139, 'HARRAKA', 'NASSIM', 'nassim.harraka@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000140, 'EL KHOMRI', 'EL MEHDI', 'elmehdi.elkhomri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000142, 'BELCADI', 'JIHANE', 'jihane.belcadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000146, 'ESSADIQI', 'DOUNIA', 'dounia.essadiqi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000147, 'BOUSTANI', 'AYMANE', 'aymane.boustani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000148, 'JEBBOUR', 'MOHAMED AMINE', 'mohamedamine.jebbour@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000149, 'BELOUIZA', 'CHARIFA', 'charifa.belouiza@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000150, 'ERRACHIDI', 'HAJAR', 'hajar.errachidi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000151, 'LAKHYARI', 'SOUHAYA', 'souhaya.lakhyari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000166, 'ROUDI-CHEMMAA', 'IMANE', 'imane.roudichemmaa@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000175, 'QOHAFA', 'ABDERRAHMAN', 'abderrahman.qohafa@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000179, 'MOUSSEHIL', 'ACHRAF', 'achraf.moussehil@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000185, 'MEZIANE', 'GHIZLANE', 'ghizlane.meziane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000186, 'ESSALHI', 'NADIYA', 'nadiya.essalhi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000188, 'AMARA', 'FATIMA ZAHRAE', 'fatimazahrae.amara@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000196, 'MOUJANE', 'LAMIAE', 'lamiae.moujane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000198, 'BOUSFIHA', 'TAREK', 'tarek.bousfiha@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000199, 'LAKHSSASSI', 'IMANE', 'imane.lakhssassi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000200, 'EL MAAROUFI', 'AMAR', 'amar.elmaaroufi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000202, 'SALHI', 'YASMINE', 'yasmine.salhi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000203, 'KHBIZI', 'AYOUB', 'ayoub.khbizi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000207, 'BAJI', 'ADAM', 'adam.baji@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000208, 'BAHBABI', 'ZAKARIA', 'zakaria.bahbabi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000209, 'LICER', 'SAID', 'said.licer@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000211, 'DERFOUFI', 'MARWA', 'marwa.derfoufi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000213, 'FAHIM', 'MERYEM', 'meryem.fahim@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000214, 'TOUZANI', 'OSSAMA', 'ossama.touzani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000216, 'EZZAAR', 'CHAIMAA', 'chaimaa.ezzaar@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000217, 'TELTI', 'HIND', 'hind.telti@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000218, 'DEKKAN', 'MAHASSINE', 'mahassine.dekkan@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000303, 'MOUTITE', 'ILYASS', 'ilyass.moutite@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000489, 'QABEQBA', 'MORAD', 'morad.qabeqba@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000641, 'GUESSAM', 'MARIAM', 'mariam.guessam@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000851, 'RHESRI', 'ABDESSAMAD', 'abdessamad.rhesri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000885, 'EL HATIMI', 'SOUKAINA', 'soukaina.elhatimi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000900, 'EL OTMANI', 'HOUYAM', 'houyam.elotmani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000925, 'TATA', 'OUMAYMA', 'oumayma.tata@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14000937, 'ACHAOUI', 'HASSNA', 'hassna.achaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14001418, 'BELHAJ', 'ZOUBIDA', 'zoubida.belhaj@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14001483, 'QANNOUF', 'SAFAA', 'safaa.qannouf@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14001777, 'ETTAZROUTI', 'LAMIAE', 'lamiae.ettazrouti@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14001865, 'TARIK', 'SALSABIL', 'salsabil.tarik@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14001914, 'ABERCHANE', 'OUMAIMA', 'oumaima.aberchane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14001940, 'NAJI', 'YAHYA', 'yahya.naji@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14002076, 'HADI', 'NOUR EL HOUDA', 'nourelhouda.hadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14002640, 'MAHTAT', 'YASSIN', 'yassin.mahtat@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14002930, 'BOUAZIZEN', 'BADR', 'badr.bouazizen@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14003512, 'MAJIDI', 'SANAE', 'sanae.majidi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14003535, 'BENHAIMOUD', 'HAMZA', 'hamza.benhaimoud@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14003591, 'BENDANIA', 'AYMANE', 'aymane.bendania@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14003627, 'FOUKHAR', 'JIHANE', 'jihane.foukhar@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14003641, 'TERRAF', 'MOHAMED CHERIF', 'mohamedcherif.terraf@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14003702, 'EL AMRI', 'OUSSAMA', 'oussama.elamri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14003733, 'EDDOUMY', 'MONCEF', 'moncef.eddoumy@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14003944, 'HANAFI', 'INSAF', 'insaf.hanafi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14003993, 'AMEZYANE', 'ZINEB', 'zineb.amezyane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004031, 'BIADI', 'NAJLAA', 'najlaa.biadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004046, 'DURGUT', 'JIHANE', 'jihane.durgut@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004067, 'AQIQ', 'MARYAME', 'maryame.aqiq@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004104, 'HAMZA', 'CHAYMAA', 'chaymaa.hamza@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004200, 'REZK', 'ZINEB', 'zineb.rezk@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004218, 'LAQIDI', 'RIM', 'rim.laqidi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004229, 'OMERANI', 'HANANE', 'hanane.omerani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004254, 'BOUZIANE', 'WALID', 'walid.bouziane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004327, 'ARKIZA', 'MARIAM', 'mariam.arkiza@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004360, 'ZAIDI', 'KHAWLA', 'khawla.zaidi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004572, 'RHOUAS', 'SARA', 'sara.rhouas@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004633, 'FAOUZI', 'OUMAYMA', 'oumayma.faouzi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004714, 'EL MABROUKI', 'HATIM', 'hatim.elmabrouki@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004781, 'BEL HOUSSINE', 'MOUAAD', 'mouaad.belhoussine@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004894, 'ADA', 'HICHAM', 'hicham.ada@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004946, 'MAZOUR', 'AHMED', 'ahmed.mazour@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004971, 'SLIMANI', 'ZAINAB', 'zainab.slimani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14004993, 'ZAARI JABIRI', 'SAMIYA', 'samiya.zaarijabiri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14005170, 'BOUMAHDI', 'SARA', 'sara.boumahdi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14005304, 'MASLOUHI', 'MARIAM', 'mariam.maslouhi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14005305, 'ESSAADI', 'RAJAE', 'rajae.essaadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14005491, 'BOUAZZA', 'FADWA', 'fadwa.bouazza@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14006099, 'AIT EL MAATI', 'NADYA', 'nadya.aitelmaati@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14006676, 'HADRANY', 'AMINE', 'amine.hadrany@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14008626, 'EL ACHRAF', 'ABDEDDAIM', 'abdeddaim.elachraf@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14008966, 'AIT MOH', 'EL MEHDI', 'elmehdi.aitmoh@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14009297, 'HANINI', 'FATIMA-EZAHRA', 'fatimaezahra.hanini@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14009368, 'EL HADDAD', 'ASMAE', 'asmae.elhaddad@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14009372, 'BENTALEB', 'YOUSSEF', 'youssef.bentaleb1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14009462, 'BEAJ', 'OUSAMA', 'ousama.beaj@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(14010196, 'DJUIPOU NJOUYEP', 'PAMELA', 'pamela.djuipounjouyep@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000001, 'ELFOUDALI', 'MANAL', 'manal.elfoudali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000002, 'BOUHERRAS', 'ABDELLAH', 'abdellah.bouherras@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000003, 'EL KHAOUDI', 'SALMA', 'salma.elkhaoudi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000005, 'BELKASS', 'MARWANE', 'marwane.belkass@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000006, 'AIT SALAH', 'OUSSAMA', 'oussama.aitsalah@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000007, 'KARIMI', 'BADR EDDINE', 'badreddine.karimi1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000008, 'SOUKHRATI', 'ASMAE', 'asmae.soukhrati@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000010, 'JAMLY', 'YOUSSEF', 'youssef.jamly@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000012, 'BENFEDANE', 'MOUAD', 'mouad.benfedane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000013, 'BOUJIDA', 'AMINE', 'amine.boujida@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000016, 'NAJI', 'MARIAM', 'mariam.naji@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000018, 'YADRI', 'SAMAH', 'samah.yadri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000019, 'MISSAOUI', 'MERIEM', 'meriem.missaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000020, 'EL AKHAL', 'IMANE', 'imane.elakhal@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000021, 'ELAASSALI', 'YOUSSEF', 'youssef.elaassali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000024, 'ZOUGAGH', 'YASSINE', 'yassine.zougagh@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000025, 'BOUTHOUR', 'SAFAA', 'safaa.bouthour@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000026, 'HADER', 'HICHAM', 'hicham.hader@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000028, 'DIRHOUSSI', 'MOHAMED', 'mohamed.dirhoussi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000029, 'EL MASBAHI', 'YOUSRA', 'yousra.elmasbahi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000030, 'ETTAHERI', 'MOUNIA', 'mounia.ettaheri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000031, 'AMHOUD', 'SAFAE', 'safae.amhoud@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000033, 'HACHCHOUM', 'MOHAMMED REDA', 'mohammedreda.hachchoum@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000034, 'SAIDI', 'MOHAMED', 'mohamed.saidi1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000036, 'HLOU', 'OUIJDANE', 'ouijdane.hlou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000038, 'DOUIREK', 'YOUSSEF', 'youssef.douirek@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000041, 'EL MAHRI', 'MERYAM', 'meryam.elmahri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000045, 'MERZAK', 'LOUBNA', 'loubna.merzak@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000046, 'SAFI', 'BADREDDINE', 'badreddine.safi1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000047, 'TARRE', 'MAROUANE', 'marouane.tarre@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000050, 'AZZOUZ', 'FADI', 'fadi.azzouz@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000051, 'EL ORCH', 'MOHAMMED AMINE', 'mohammedamine.elorch@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000052, 'ROCHDI', 'MERIEM', 'meriem.rochdi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000056, 'BOUJLILI', 'KHAOULA', 'khaoula.boujlili@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000061, 'HIBOUR', 'ALI', 'ali.hibour@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000064, 'EZZITOUNI', 'MARYEM', 'maryem.ezzitouni@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000065, 'EL-HARSAL', 'MOHAMED ALI', 'mohamedali.elharsal@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000068, 'AMNAY', 'HASNAE', 'hasnae.amnay@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000069, 'LYMOURI', 'MAHA', 'maha.lymouri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000070, 'EL ALAMI', 'NIZAR', 'nizar.elalami@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000071, 'FKIHI', 'ANAS', 'anas.fkihi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000072, 'ZHIRI', 'MOHAMED AMINE', 'mohamedamine.zhiri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000073, 'BERRADA', 'WISSAL', 'wissal.berrada@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000074, 'EL HARI', 'HAMZA', 'hamza.elhari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000075, 'HILIA', 'IMANE', 'imane.hilia@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000076, 'ALAMI M\'CHICHI', 'MAROUA', 'maroua.alamimchichi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000077, 'GAOUZI', 'ZAYNEB', 'zayneb.gaouzi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000080, 'KSIRI', 'HAJAR', 'hajar.ksiri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000081, 'LACHGUER', 'EL-MEHDI', 'elmehdi.lachguer@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000082, 'BENSLIMANE', 'HAMZA', 'hamza.benslimane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000083, 'MIORQI', 'EL MEHDI', 'elmehdi.miorqi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000085, 'BEMZAGH', 'SOUKAINA', 'soukaina.bemzagh@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000090, 'ECHCHAOUI', 'MOHAMMED', 'mohammed.echchaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000091, 'REDDAD', 'HAKIMA', 'hakima.reddad@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000096, 'AMRANI SOUHLI', 'MOHAMMED', 'mohammed.amranisouhli@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000097, 'EL ALAOUI', 'MOUNA', 'mouna.elalaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000098, 'BOUYA', 'SANAE', 'sanae.bouya@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000100, 'BOURAS', 'NOUREDDINE', 'noureddine.bouras@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000107, 'KABO', 'HOUDA', 'houda.kabo@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000109, 'ELOUATAOUI', 'WIDAD', 'widad.elouataoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000114, 'CHAHTI', 'WALID', 'walid.chahti@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000124, 'CHOUHAD', 'YASMINE', 'yasmine.chouhad@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000126, 'EL HANBALI', 'HAMZA', 'hamza.elhanbali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000134, 'NEJJAR', 'KAOUTAR', 'kaoutar.nejjar@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000135, 'REIFHI EL ALAOUI', 'OULAYA', 'oulaya.reifhielalaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000138, 'OUNABI', 'AYA', 'aya.ounabi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000139, 'MOUDDEN', 'CHAYMAE', 'chaymae.moudden@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000141, 'ADENAS', 'ACHRAF', 'achraf.adenas@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000142, 'LAHEMRE', 'MOHAMMED', 'mohammed.lahemre@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000143, 'EL MANSOURI', 'MOHAMED', 'mohamed.elmansouri2@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000149, 'SEFIANI', 'SALOUA', 'saloua.sefiani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000150, 'AZRI', 'MAROUA', 'maroua.azri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000151, 'CHABANI', 'OUSSAMA', 'oussama.chabani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15000153, 'CHERKAOUI MALKI', 'HAMZA', 'hamza.cherkaouimalki@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15002384, 'AYOUBI', 'OUMAIMA', 'oumaima.ayoubi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15002637, 'HADAMI', 'ABDENNACER', 'abdennacer.hadami@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15002660, 'IKKEN', 'ISMAIL', 'ismail.ikken@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15003032, 'BASSAOUI', 'MERIEME', 'merieme.bassaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15003138, 'BABA', 'AHMED', 'ahmed.baba1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15003893, 'CHERKAOUI TERMASTI', 'MANAL', 'manal.cherkaouitermasti@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004035, 'MOUFARREH', 'IMANE', 'imane.moufarreh@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004081, 'HADDOUN', 'MEHDI', 'mehdi.haddoun@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004104, 'CHICHI', 'IMANE', 'imane.chichi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004223, 'AKHRIF', 'ZINEB', 'zineb.akhrif@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004233, 'NAOUM', 'OTHMANE', 'othmane.naoum@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004247, 'ARSALEN', 'HASSAN', 'hassan.arsalen@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004269, 'NJILI', 'SARA', 'sara.njili@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004298, 'BAKKACHE', 'ACHRAF', 'achraf.bakkache@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004656, 'EL AYOUBI', 'SAFAA', 'safaa.elayoubi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004669, 'ZOUITINA', 'BTISSAM', 'btissam.zouitina@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004675, 'KEMMOU', 'HAMZA', 'hamza.kemmou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004692, 'ESSAFI', 'AZIZA', 'aziza.essafi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004704, 'BOUSHABA', 'MOUAD', 'mouad.boushaba@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004737, 'TAHI', 'YACINE', 'yacine.tahi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004740, 'EL MRABET', 'LAMYAE', 'lamyae.elmrabet@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004741, 'EL BEKBACHI', 'SAFAE', 'safae.elbekbachi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004743, 'CHEMAM', 'ISMAIL', 'ismail.chemam@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004746, 'SHAILI', 'OUMAIMA', 'oumaima.shaili@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004758, 'HANANE', 'AYMANE', 'aymane.hanane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004764, 'DOGHMI', 'MERYAM', 'meryam.doghmi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004777, 'ZDAIK', 'HAMZA', 'hamza.zdaik@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004793, 'ARHZANE', 'AMINE', 'amine.arhzane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004802, 'BEYOUD', 'ZINEB', 'zineb.beyoud@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004819, 'KRIEM', 'ABDERRAZZAK', 'abderrazzak.kriem@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004828, 'BOUMLIK', 'SANAE', 'sanae.boumlik@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004836, 'BOUZAGZAOU', 'WALID', 'walid.bouzagzaou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004842, 'DAOUDI', 'MOHAMMED', 'mohammed.daoudi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004851, 'ARAB', 'OUMAIMA', 'oumaima.arab@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004859, 'TAHI', 'OUSSAMA', 'oussama.tahi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004860, 'BOUKHLOUF', 'FATIMA-ZOHRA', 'fatimazohra.boukhlouf@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004864, 'N\'SSIS', 'MOHAMMED', 'mohammed.nssis@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004869, 'IAAGOUBI', 'YOUSSEF', 'youssef.iaagoubi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004876, 'SAMGHOULI', 'HAFSA', 'hafsa.samghouli@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004881, 'AIT AICHTE', 'FATIMA ZAHRA', 'fatimazahra.aitaichte@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004883, 'OUHILAL', 'ZINEB', 'zineb.ouhilal@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004887, 'BIADI', 'HALA', 'hala.biadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004888, 'SOUKAR', 'OUMAIMA', 'oumaima.soukar@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004893, 'EL MARZAK', 'AHLAM', 'ahlam.elmarzak@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004902, 'DEHMOUCH', 'MOHAMED-AMINE', 'mohamedamine.dehmouch@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004914, 'CHEDDADI', 'HAMZA', 'hamza.cheddadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004916, 'RHRIZ', 'NADA', 'nada.rhriz@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004917, 'MOUMEN', 'ANAS', 'anas.moumen@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004918, 'NASRI', 'OUMAIMA', 'oumaima.nasri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004919, 'EL MATMOUR', 'KAOUTAR', 'kaoutar.elmatmour@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004920, 'MONADIL', 'YASMINE', 'yasmine.monadil@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004921, 'OUBOHSSAINE', 'YOUNES', 'younes.oubohssaine@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15004922, 'JEMILY', 'ANAS', 'anas.jemily@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15005118, 'BOUMEDIANE', 'MANAL', 'manal.boumediane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15005123, 'BAAYER', 'KARIMA', 'karima.baayer@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15005158, 'DAOUDI', 'MOUNAT', 'mounat.daoudi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15005270, 'BENKHALDOUN', 'HAMZA', 'hamza.benkhaldoun@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15005309, 'EL JABIRI', 'ADNANE', 'adnane.eljabiri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15005345, 'ABDELLAOUI', 'SOUFIANE', 'soufiane.abdellaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15005380, 'MOUSSAIF', 'ZOUHAIR', 'zouhair.moussaif@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15005684, 'KAMAL IDRISSI', 'ZAINAB', 'zainab.kamalidrissi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15005701, 'TOTO', 'CHADI', 'chadi.toto@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15005712, 'EL HANCHI', 'OTHMANE', 'othmane.elhanchi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15005969, 'EL KHETTABI', 'BADR-EDDINE', 'badreddine.elkhettabi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15006018, 'DAAMACHE', 'ABIR', 'abir.daamache@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15006050, 'RAHIMI', 'MARYEM', 'maryem.rahimi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15006062, 'BELATI', 'KAOUTAR', 'kaoutar.belati@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15006226, 'TOUAHRI', 'MOHAMMED', 'mohammed.touahri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15006575, 'SAADI', 'YASSIR', 'yassir.saadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15006660, 'RACHIDI', 'MOUNA', 'mouna.rachidi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15006681, 'AITIAZZA', 'SAID', 'said.aitiazza@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15006714, 'NOURY', 'NOUHA', 'nouha.noury@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15006753, 'OUMIMOUN', 'BADR', 'badr.oumimoun@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15006791, 'OUMIMOUN', 'ZAKARIA', 'zakaria.oumimoun@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15007036, 'EJRHOM', 'MARYEM', 'maryem.ejrhom@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15007086, 'ZAITER', 'ALAAEDDINE', 'alaaeddine.zaiter@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15007198, 'AGOUZOUL', 'LOUBNA', 'loubna.agouzoul@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15007708, 'LAARIF', 'IKRAME', 'ikrame.laarif@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15007833, 'DIYANE', 'ISLAM', 'islam.diyane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15007869, 'JLIDA', 'YOUNESS', 'youness.jlida@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008396, 'TAOUFIK', 'MOHAMMED', 'mohammed.taoufik1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008403, 'AHMANI', 'OUMAIMA', 'oumaima.ahmani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008406, 'BACHIRI', 'SOUHAIL', 'souhail.bachiri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008420, 'EL HORD', 'IKRAM', 'ikram.elhord@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008424, 'EL GUANDAFI', 'MANAL', 'manal.elguandafi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008600, 'EL HABRI', 'ANASS', 'anass.elhabri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008890, 'BAKO ARIFARI', 'BOUCHRA', 'bouchra.bakoarifari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008891, 'HAMED', 'AHMED MOHAMED', 'ahmedmohamed.hamed@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008897, 'L\'ANNAZ', 'NOUHAILA', 'nouhaila.lannaz@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008902, 'NAMOU', 'SIDI SALEKH', 'sidisalekh.namou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008907, 'JDI', 'ALI', 'ali.jdi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15008911, 'NAJI', 'ZINEB', 'zineb.naji@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15009119, 'MORJANE', 'WISAL', 'wisal.morjane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15009192, 'HADDOUMI', 'IKRAME', 'ikrame.haddoumi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15009201, 'ABDU IDRIS ALI', 'JAMAL', 'jamal.abduidrisali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15009289, 'DIOUF', 'NDIAYO', 'ndiayo.diouf@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15009291, 'NDOUR', 'MARIE EMMA', 'marieemma.ndour@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(15010573, 'HAJJANI', 'MEHDI', 'mehdi.hajjani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000004, 'AARAB', 'ASMAE', 'asmae.aarab1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000008, 'HADDOU', 'NADA', 'nada.haddou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000009, 'FTAICH', 'YOUNES', 'younes.ftaich@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000011, 'KNIT', 'YASSINE', 'yassine.knit@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000017, 'ZBIRI', 'WALID', 'walid.zbiri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000018, 'CHIBI', 'SAAD', 'saad.chibi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000019, 'ARHALAI', 'FAHD', 'fahd.arhalai@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000023, 'DRISSI LAHSINI', 'MOHAMED ADNANE', 'mohamedadnane.drissilahsini@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000024, 'OUAHID', 'ACHRAF', 'ouahid.achraf@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000026, 'MOTASSIM', 'MOHAMMED EL MEHDI', 'mohammedelmehdi.motassim@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000028, 'LOURHZALI', 'OUSSAMA', 'oussama.lourhzali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000029, 'ECHBARI', 'AYOUB', 'ayoub.echbari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000030, 'DINI', 'NIZAR', 'nizar.dini@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000031, 'ELHAMRA', 'MOHAMED', 'mohamed.elhamra@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000032, 'BENKADDOUR', 'CHAIMA', 'chaima.benkaddour@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000034, 'HOUDAIR', 'ABIR', 'abir.houdair@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000035, 'EL HROUR', 'BOUTHAYNA', 'bouthayna.elhrour@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000036, 'LAHJOMRI', 'YOUSSEF', 'youssef.lahjomri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000037, 'LAFQUIH-TITOUANI', 'ALLIAE', 'alliae.lafquihtitouani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000038, 'ESSABBANE', 'SAFAE', 'safae.essabbane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000039, 'KERKEB', 'YOUSRA', 'yousra.kerkeb@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000041, 'AHABBAR', 'OMAR', 'omar.ahabbar@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000042, 'EL BOUKHARI', 'NISRINE', 'nisrine.elboukhari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000043, 'EL HAMRI', 'FOUAD', 'fouad.elhamri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000044, 'EL MANSOUR', 'IBRAHIM', 'ibrahim.elmansour@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000050, 'EL HALABI', 'AYOUB', 'ayoub.elhalabi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000051, 'OUHAMOU', 'HAMZA', 'hamza.ouhamou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000052, 'EL GHRABLI', 'OMAR', 'omar.elghrabli@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000054, 'MESKINI', 'HAMZA', 'hamza.meskini@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000055, 'KHYATI', 'DOUNIA', 'dounia.khyati@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000057, 'BENELKARI', 'YASSINE', 'yassine.benelkari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000058, 'EL GUELIOUL', 'AYOUB', 'ayoub.elguelioul@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000059, 'EL HACOBI', 'MAROUANE', 'marouane.elhacobi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000061, 'BELQAID', 'SALMA', 'salma.belqaid@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000062, 'EL BAZI', 'FATIMA ZAHRA', 'fatimazahra.elbazi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000063, 'EDDEGDAG', 'HICHAM', 'hicham.eddegdag@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000065, 'ZAKARIA', 'YOUSRA', 'yousra.zakaria@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000066, 'OUBNICHOU', 'NIHAL', 'nihal.oubnichou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000068, 'EL RHEZZALI', 'MANAL', 'manal.elrhezzali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000070, 'BOUMEZOUED', 'OUMAIMA', 'oumaima.boumezoued@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000072, 'HACHIMI ALAOUI', 'SALMA', 'salma.hachimialaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000076, 'LAKLAOUI', 'KAOUTAR', 'kaoutar.laklaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000077, 'TAHIRI', 'MOHAMMED AMINE', 'mohammedamine.tahiri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000078, 'BOUNASSEH', 'HAMZA', 'hamza.bounasseh@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000079, 'MERJAKTANE', 'SALIM', 'salim.merjaktane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000080, 'ESSEMLALI', 'OUSSAMA', 'oussama.essemlali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000083, 'ERGOUYEG', 'MOUAD', 'mouad.ergouyeg@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000086, 'ARZIKI', 'ISMAIL', 'ismail.arziki@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000087, 'BELLARABI', 'IBTIHAL', 'ibtihal.bellarabi@uit.ac.ma', 645327891, '1999-03-24', 'Genie industrielle', 'BLOC AJ NO 22 HAY EL HAJ KACEM CYM RABAT', '16000087.jpg', NULL),
(16000088, 'ZOUAK', 'MAROUANE', 'marouane.zouak@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000090, 'IMZEL', 'MOHAMED', 'mohamed.imzel@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000091, 'QNIWEN', 'MOHAMED KAMAL', 'mohamedkamal.qniwen@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000093, 'ABDELLAOUI', 'BTIHAL', 'btihal.abdellaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000094, 'IBN MAJAH', 'MOHAMMED-ZIDANE', 'mohammedzidane.ibnmajah@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000095, 'AFRIAD', 'MANAL', 'manal.afriad@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000109, 'AKIL', 'OMAR', 'omar.akil@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000129, 'OUIYZME', 'AMAL', 'amal.ouiyzme@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000131, 'KILITO', 'JAAFAR', 'jaafar.kilito@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000149, 'MRASSLI', 'AHMED', 'ahmed.mrassli@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000176, 'ASEBRIY', 'ZINEB', 'zineb.asebriy@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000178, 'AINOUCH', 'TAHA', 'taha.ainouch@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000179, 'SGHIR', 'SOHAIB', 'sohaib.sghir@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000182, 'OUNSS', 'MOHAMED', 'mohamed.ounss@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000188, 'ANNANE', 'AYA', 'aya.annane@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000191, 'LBRAI', 'SALAH EDDINE', 'salaheddine.lbrai@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000194, 'SARDI', 'MOUAD', 'mouad.sardi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000195, 'TRIBAK', 'YASSINE', 'tribak.yassine@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000213, 'IKRADINE', 'SALMA', 'salma.ikradine@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000214, 'CHBIKI', 'HAJAR', 'hajar.chbiki@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000233, 'EL HALOUI', 'IKRAM', 'ikram.elhaloui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000234, 'ELHADIOUIA', 'LEILA', 'leila.elhadiouia@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000236, 'EL BIKRI', 'SAFAE', 'safae.elbikri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000238, 'GUOURCH', 'OTMANE', 'otmane.guourch@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000253, 'KHENOUSSI', 'YASSINE', 'yassine.khenoussi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000275, 'EL HALOUI', 'LAILA', 'laila.elhaloui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000276, 'KADDIOUI', 'ABDELALI', 'abdelali.kaddioui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000277, 'EL FAKIR', 'HAJAR', 'hajar.elfakir@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000278, 'ADDAOUI', 'WASSIM', 'wassim.addaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000298, 'LOTFI', 'ZINEB', 'zineb.lotfi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000299, 'BOUMAZZOUGH', 'RANIA', 'rania.boumazzough@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16000300, 'EL MOUSSAID', 'SALMA', 'salma.elmoussaid@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16001381, 'OUADOUDI', 'JAAFAR', 'jaafar.ouadoudi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16001406, 'LAAREJ', 'IBTISSAM', 'ibtissam.laarej@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16001427, 'KCHIBEL', 'CHAYMAE', 'chaymae.kchibel@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16001455, 'EL KABLI', 'ANASS', 'anass.elkabli@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16001485, 'LAZFI', 'YAZID', 'yazid.lazfi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16001583, 'BELHROUKIA', 'HANAE', 'hanae.belhroukia@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16001615, 'DAHMOU', 'HICHAM', 'hicham.dahmou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003795, 'LAHMIDI', 'MOHAMMED TAOUFIK', 'mohammedtaoufik.lahmidi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003813, 'BENDALI', 'AMINE', 'amine.bendali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003854, 'EL AMRAOUI', 'YASSINE', 'yassine.elamraoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003887, 'EL ATI', 'KAOUTAR', 'kaoutar.elati@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003897, 'HANSALA', 'SALMA', 'salma.hansala@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003918, 'EL-MAALEM', 'ABDENNACER', 'abdennacer.elmaalem@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003932, 'BOUCHTITA', 'ISSAM', 'issam.bouchtita@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003941, 'EL-HOMAINI', 'ISSA', 'issa.elhomaini@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003959, 'EL KHABOURI', 'FATIMA ZAHRA', 'fatimazahra.elkhabouri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003985, 'ANNAJI', 'KAOUTAR', 'kaoutar.annaji@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003986, 'SABRI', 'ELMAHDI', 'elmahdi.sabri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16003987, 'BENGHABRIT', 'MOHAMMED', 'mohammed.benghabrit@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004008, 'EL HOUSNI', 'MOHAMED', 'mohamed.elhousni1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004018, 'MELYANI', 'YOUSSEF', 'youssef.melyani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004030, 'JOUDARI', 'ALAEDDINE', 'alaeddine.joudari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004032, 'BOUHOUCH', 'ZAKARIA', 'zakaria.bouhouch@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004047, 'DOUIMIA', 'RIAD', 'riad.douimia@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004062, 'ENNADDAM', 'YOUSRA', 'yousra.ennaddam@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004078, 'EL HARCHALI', 'KHADIJA', 'khadija.elharchali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004080, 'ASKANDER', 'MARIEM', 'mariem.askander@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004100, 'CHKIOUA', 'YASMINE', 'yasmine.chkioua@uit.ac.ma', 636519656, '2019-06-09', 'Genie informatique', '14 rue Hassan II Rabat', '16004100.jpg', '16004100.mp4'),
(16004126, 'DINAR', 'OTHMANE', 'othmane.dinar@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004132, 'KANDAZ', 'ZINEB', 'zineb.kandaz@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004140, 'HAMAN', 'SAMIA', 'samia.haman@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004146, 'NOHAIR', 'HAMZA', 'hamza.nohair@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004153, 'DAOUCHI', 'MERIEM', 'meriem.daouchi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004161, 'IBRIZ', 'ABDALLAH', 'abdallah.ibriz@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004165, 'KZIBER', 'OUMAIMA', 'oumaima.kziber@uit.ac.ma', 643018578, '1998-07-17', 'Genie informatique', 'N 13 bettana SALE', '16004165.jpg', '16004165.mp4'),
(16004175, 'KASMI', 'BOUTAYNA', 'boutayna.kasmi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004185, 'HRIK', 'AMINE', 'amine.hrik@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004221, 'ANIGRI', 'SOUHA', 'souha.anigri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004242, 'IDOUFAQIR', 'ASSIA', 'assia.idoufaqir@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004294, 'EL MGANI', 'KHALIL', 'khalil.elmgani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004613, 'AIT CHEIKH', 'ZAKARIAE', 'zakariae.aitcheikh@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004628, 'BOUAZIZ', 'RAJAA', 'rajaa.bouaziz@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004667, 'TAHRI', 'OUASSIMA', 'ouassima.tahri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `etudiant` (`apogee`, `nom`, `prenom`, `email`, `tel`, `date_naissance`, `filiere`, `adresse`, `photo`, `video`) VALUES
(16004678, 'BENMAMOUNE', 'ABDESSAMAD', 'abdessamad.benmamoune@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004700, 'BENABDALLAH', 'AMINE', 'amine.benabdallah@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004718, 'LAMMARI', 'SAFOUANE', 'safouane.lammari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004732, 'ERRAJI', 'SAMIA', 'samia.erraji@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004757, 'TIMOULALI', 'OUAHIB', 'ouahib.timoulali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004765, 'ABROUK-EL ALAMI', 'YOUSSRA', 'youssra.abroukelalami@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004791, 'LARAICHI', 'SALMA', 'salma.laraichi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004799, 'EL OUEZGHARI', 'YOUSSEF', 'youssef.elouezghari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004809, 'ZERRIF', 'YASSIR', 'yassir.zerrif@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004848, 'OUAKOUR', 'NOUAMANE', 'nouamane.ouakour@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004865, 'LAMSAOURI', 'HAMZA', 'hamza.lamsaouri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004905, 'AHLA', 'YASSIR', 'yassir.ahla@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004940, 'HAMMADI', 'SARA', 'sara.hammadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004967, 'EL MAMY', 'YOUNES', 'younes.elmamy@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16004986, 'EL MANSOURI', 'MALAK', 'malak.elmansouri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005029, 'KAOUISSI', 'ASMAE', 'asmae.kaouissi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005041, 'KAJAI', 'SALAH EDDINE', 'salaheddine.kajai@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005055, 'BELOUALID', 'SIHAM', 'siham.beloualid@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005088, 'EL FILALI', 'CHAIMAE', 'chaimae.elfilali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005620, 'DIARRA', 'BANGALI FODE', 'bangalifode.diarra@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005637, 'EN-NAY', 'ZINEB', 'zineb.ennay@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005655, 'EZ ZAYAT', 'LAMYA', 'lamya.ezzayat@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005659, 'DIDI ALAOUI', 'BTISSAM', 'btissam.didialaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005665, 'AZMI', 'NISRINE', 'nisrine.azmi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005695, 'BOUMEFTAH', 'AHLAM', 'ahlam.boumeftah@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005700, 'CHAKIR', 'HIND', 'hind.chakir@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005729, 'FERIANI', 'OTHMANE', 'othmane.feriani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005772, 'KHALIL', 'CHAIMAE', 'chaimae.khalil@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005829, 'MIMIS', 'ASSIA', 'assia.mimis@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005889, 'AFTIS', 'NOURA', 'noura.aftis@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16005977, 'EL-KDIOUI', 'HOUDA', 'houda.elkdioui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006035, 'HALIM', 'OUSSAMA', 'oussama.halim@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006082, 'BENABBOU', 'RAJAE', 'rajae.benabbou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006519, 'MINOUAL', 'NAJLAE', 'najlae.minoual@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006521, 'RACHAD', 'KAOUTAR', 'kaoutar.rachad@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006555, 'HARCHAOUI', 'AKRAM', 'akram.harchaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006556, 'IRCHACHEN', 'IMANE', 'imane.irchachen@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006558, 'KABOUCHI', 'KAOUTAR', 'kaoutar.kabouchi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006571, 'KACEMI', 'BADR', 'badr.kacemi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006572, 'FAIQ', 'ABDESSAMAD', 'abdessamad.faiq@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006574, 'EL MOUSSAOUI', 'CHAIMAE', 'chaimae.elmoussaoui1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006577, 'LAKHAL', 'MOUAD', 'mouad.lakhal@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006578, 'MEKKAOUI', 'RIM', 'rim.mekkaoui@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006582, 'EL GHEMARI', 'HIND', 'hind.elghemari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006593, 'CHOUAI', 'FATIMA EZZAHRA', 'fatimaezzahra.chouai@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006599, 'EL MEJJATI', 'HOUSSAM EDDINE', 'houssameddine.elmejjati@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006600, 'AGNAOU', 'MERIEM', 'meriem.agnaou@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006603, 'HOURIMECHE', 'IKRAME', 'ikrame.hourimeche@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006604, 'AL KOSTIT', 'NOUHAILA', 'nouhaila.alkostit@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006634, 'RAHMOUN', 'OUSSAMA', 'oussama.rahmoun@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006637, 'LAKHEL', 'OUMAIMA', 'oumaima.lakhel@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006638, 'KHAM', 'ACHRAF', 'achraf.kham@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006640, 'SKIBA', 'AMINA', 'amina.skiba@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006644, 'DAOUDI', 'ELMEHDI', 'elmehdi.daoudi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006654, 'KAABOUCH', 'INAAM', 'inaam.kaabouch@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006655, 'ISMAILI', 'SOUKAINA', 'soukaina.ismaili@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006671, 'EL HARICHI', 'CHAYMAE', 'chaymae.elharichi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006700, 'BEN LARBI DELAI', 'RHITA', 'rhita.benlarbidelai@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006728, 'NGUEUO SOLEFACK', 'ELVIRA', 'elvira.ngueuosolefack@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006733, 'MOUMTAJI', 'ANAS', 'anas.moumtaji@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006740, 'BENZOUINA', 'OUMAIMA', 'oumaima.benzouina@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006741, 'FAQIR', 'CHAYMAA', 'chaymaa.faqir@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16006747, 'DEBBI', 'YASSINE', 'yassine.debbi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16007103, 'LAKOUISMI', 'CHAYMAA', 'chaymaa.lakouismi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16007105, 'HAJJAR', 'HAMZA', 'hamza.hajjar@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16007130, 'BELMAHJOUB', 'YOUSSEF', 'youssef.belmahjoub@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16007410, 'MOHAMED BELLO', 'ABDOULATIF SIDIKI', 'abdoulatifsidiki.mohamedbello@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16007438, 'RADI', 'MEHDI', 'mehdi.radi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16007597, 'AL BIKRI', 'ASSIA', 'assia.albikri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16007598, 'AKRIM', 'OUISSAL', 'ouissal.akrim@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16007599, 'ASMAI', 'ANOUAR', 'anouar.asmai@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16007813, 'BOUSLAH', 'SALMA', 'salma.bouslah@uit.ac.ma', 615424678, '1999-03-06', 'Genie informatique', 'Hay fath ,415,Rabat', '16007813.jpg', '16007813.mp4'),
(16007846, 'FALLAH', 'CHAIMAE', 'chaimae.fallah@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16007935, 'CHRAIBI', 'HASSAN', 'hassan.chraibi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16008131, 'TOHOURI WAKRA IRENE', 'JESSICA CAROLLE', 'jessicacarolle.tohouriwakrairene@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16008184, 'NOURREDDINE', 'YOUNESS', 'youness.nourreddine@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16008506, 'JERMOUMI', 'ASMAA', 'asmaa.jermoumi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16008664, 'BAALI', 'AYOUB', 'ayoub.baali@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16009302, 'MERIAG', 'ASMAE', 'asmae.meriag@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16009331, 'ZEGLAMA', 'AHMED', 'ahmed.zeglama@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16009343, 'BIDDA', 'AMINE', 'amine.bidda@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16009358, 'AMGHARI', 'MANAL', 'manal.amghari@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16009360, 'BELAOULA', 'MOHAMED AMINE', 'mohamedamine.belaoula@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16009363, 'AITAZZOUZ', 'IMAD', 'imad.aitazzouz@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16009380, 'HAMMANI', 'CHAIMAE', 'chaimae.hammani1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16009382, 'EL MOUMNI', 'AMINA', 'amina.elmoumni1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16009734, 'LAHLIMI', 'SOFIA', 'sofia.lahlimi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16010050, 'MRABAT', 'SAIDA', 'saida.mrabat@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16010130, 'BELMAATI', 'SAFAE', 'safae.belmaati@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16010369, 'ABOU-EL-KHALFI', 'ISMAIL', 'ismail.abouelkhalei@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16010432, 'BOUKHAR', 'ABDELILAH', 'abdelilah.boukhar@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16010833, 'RAHOUNI', 'KHALIL', 'khalil.rahouni1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16011537, 'EL ABBADI', 'IBTIHAL', 'ibtihal.elabbadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16012167, 'AOUZAI', 'YOUNES', 'younes.aouzal@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16012171, 'NEFZI', 'ILYAS', 'ilyas.nefzi1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16012797, 'FRIKI', 'MARIEME', 'marieme.friki1@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16012807, 'IBNOU EL FAKIR', 'LAMYAE', 'lamyae.ibnouelfakir@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(16012809, 'SABRY', 'OUMAIMA', 'oumaima.sabry@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17000468, 'NHIRI', 'SALMA', 'salma.nhiri@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17000543, 'LAKTAIBI', 'ANASS', 'anass.laktaibi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17000549, 'GOUMIDI', 'ABDERRAZZAK', 'abderrazzak.goumidi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17000711, 'GLIOULA', 'HIND', 'hind.glioula@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17003110, 'FAIZ', 'HAJAR', 'hajar.faiz@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17003784, 'KERDOUD', 'MOUAD', 'mouad.kerdoud@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17003882, 'AOUINE', 'MERIEM', 'meriem.aouine@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17004061, 'SRAISAH', 'OUMAIMA', 'oumaima.sraisah@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17004163, 'LAAZOUZI', 'AHMED', 'ahmed.laazouzi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17004178, 'AZZOUZI', 'ABDELLAH', 'abdellah.azzouzi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17005215, 'ELKHDADI', 'AHMED', 'ahmed.elkhdadi@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17005227, 'ERRAZGOUNI', 'SAAD', 'saad.errazgouni@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17005830, 'BENSELLAM', 'HAJAR', 'hajar.bensellam@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL),
(17005983, 'HASSANI', 'ISSAM-EDDINE', 'issameddine.hassani@uit.ac.ma', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `expre_prof`
--

CREATE TABLE `expre_prof` (
  `id5` int(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `organisme` varchar(100) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `expre_prof`
--

INSERT INTO `expre_prof` (`id5`, `position`, `organisme`, `date_debut`, `date_fin`) VALUES
(4, 'Stagiaire', 'OCP', '2017-07-03', '2017-08-04'),
(6, 'Stagiaire', 'ONCF', '2019-01-12', '2019-01-26'),
(7, 'Stagiaire', 'ONEP', '2018-07-04', '2018-08-04'),
(8, 'ceo', 'ceo', '2019-01-19', '2019-01-27'),
(9, 'stagiaire', 'ocp', '2019-01-19', '2019-02-19'),
(10, 'stagiaire', 'ocp', '2019-01-11', '2019-02-11'),
(11, 'UIGLKH', 'UIIGOHPM', '2019-01-24', '2019-01-17'),
(12, 'stagiaire', 'ocp', '2019-01-11', '2019-02-11'),
(13, 'stagiaire', 'ocp', '2019-02-06', '2019-03-23');

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

CREATE TABLE `langues` (
  `id4` int(20) NOT NULL,
  `lang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `langues`
--

INSERT INTO `langues` (`id4`, `lang`) VALUES
(1, 'Arabe'),
(2, 'Francais'),
(3, 'Anglais'),
(4, 'Espagnol'),
(5, 'Allemand'),
(6, 'Mandarin');

-- --------------------------------------------------------

--
-- Structure de la table `lang_info`
--

CREATE TABLE `lang_info` (
  `id2` int(20) NOT NULL,
  `linfo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lang_info`
--

INSERT INTO `lang_info` (`id2`, `linfo`) VALUES
(1, 'Javascript'),
(2, 'Java'),
(3, 'PHP'),
(4, 'C'),
(5, 'Python'),
(6, 'Pascal');

-- --------------------------------------------------------

--
-- Structure de la table `obtenir`
--

CREATE TABLE `obtenir` (
  `id0` int(20) NOT NULL,
  `apogee` int(20) NOT NULL,
  `date_obtention` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `obtenir`
--

INSERT INTO `obtenir` (`id0`, `apogee`, `date_obtention`) VALUES
(4, 16004100, 2016),
(7, 16004165, 2016),
(8, 16007813, 2016),
(14, 16000087, 2016);

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `id6` int(20) NOT NULL,
  `intitule` varchar(300) NOT NULL,
  `filiere` varchar(100) NOT NULL,
  `duree` int(20) NOT NULL,
  `date` date NOT NULL,
  `code` int(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` varchar(2500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id6`, `intitule`, `filiere`, `duree`, `date`, `code`, `type`, `description`) VALUES
(3, 'Conception des BDs', 'Genie Informatique', 3, '2019-01-04', 2, 'Observation', 'Une offre de stage operationnel concernant la gestion des bases de donnees dans notre departement informatique.'),
(19, 'DÃ©veloppement', 'Genie Informatique', 6, '2019-01-11', 1, 'Pre-embauche', 'Creation d une nouvelle application IHM INSIDE pour remplacer a terme GENPI.'),
(23, 'DÃ©veloppement apps Web', 'Genie Informatique', 6, '2018-12-25', 7, 'PFE', 'Dans le cadre de son dÃ©veloppement, le cabinet GIS4DS cherche un dÃ©veloppeur d\'applications web, maÃ®trisant le langage C, la plateforme ASP.NET, LINQ, et d\'autres technologies du dÃ©veloppement WEB.'),
(12, 'Developpement WEB', 'Genie Informatique', 4, '2019-01-11', 9, 'PFE', 'Offre de stage rÃ©munÃ©rÃ©e pour un projet important. On cherche des Ã©lÃ¨ves ingÃ©nieurs en informatique compÃ©tents et crÃ©atifs.'),
(22, 'RÃ©alisation d\'une application de gestion de RH', 'Genie Informatique', 3, '2019-01-18', 3, 'Operationnel', 'Nous sommes Ã  la recherche d\'un(e) stagiaire ayant une formation informatique permettant de rÃ©aliser une application de gestion des ressources humaines pour notre entreprise basÃ©e Ã  l\'aÃ©ropole Casablanca.'),
(13, 'Stage logistique rÃ©munÃ©rÃ©', 'Genie Industrielle', 6, '2019-01-19', 1, 'Pre-embauche', 'Rémunération 1500 MAD\r\nLe stagiaire s\'impliquera dans l\'optimisation logistique des salles. Il mettera en place la logique d\'organisation des cours et jouera un rôle déterminant dans la définition des prix et promotions.');

-- --------------------------------------------------------

--
-- Structure de la table `offre_compet1`
--

CREATE TABLE `offre_compet1` (
  `id6` int(20) NOT NULL,
  `id1` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `offre_compet1`
--

INSERT INTO `offre_compet1` (`id6`, `id1`) VALUES
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(12, 4),
(13, 4),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(22, 4),
(23, 4);

-- --------------------------------------------------------

--
-- Structure de la table `offre_compet2`
--

CREATE TABLE `offre_compet2` (
  `id6` int(20) NOT NULL,
  `id2` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `offre_compet2`
--

INSERT INTO `offre_compet2` (`id6`, `id2`) VALUES
(3, 3),
(3, 4),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(13, 4),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(19, 6),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(23, 1),
(23, 3),
(23, 4);

-- --------------------------------------------------------

--
-- Structure de la table `offre_compet3`
--

CREATE TABLE `offre_compet3` (
  `id6` int(20) NOT NULL,
  `id3` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `offre_compet3`
--

INSERT INTO `offre_compet3` (`id6`, `id3`) VALUES
(3, 1),
(12, 1),
(13, 1),
(19, 1),
(19, 2),
(19, 3),
(22, 1),
(22, 2),
(23, 1);

-- --------------------------------------------------------

--
-- Structure de la table `offre_compet4`
--

CREATE TABLE `offre_compet4` (
  `id6` int(11) NOT NULL,
  `id4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `offre_compet4`
--

INSERT INTO `offre_compet4` (`id6`, `id4`) VALUES
(3, 2),
(3, 3),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(19, 6),
(22, 2),
(22, 3),
(22, 5),
(23, 3),
(23, 5);

-- --------------------------------------------------------

--
-- Structure de la table `parler`
--

CREATE TABLE `parler` (
  `apogee` int(11) NOT NULL,
  `id4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `parler`
--

INSERT INTO `parler` (`apogee`, `id4`) VALUES
(16000087, 1),
(16000087, 2),
(16000087, 3),
(16004100, 1),
(16004100, 2),
(16004100, 3),
(16004165, 1),
(16004165, 2),
(16004165, 3),
(16007813, 1),
(16007813, 2),
(16007813, 3);

-- --------------------------------------------------------

--
-- Structure de la table `postuler`
--

CREATE TABLE `postuler` (
  `apogee` int(20) NOT NULL,
  `id6` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `postuler`
--

INSERT INTO `postuler` (`apogee`, `id6`) VALUES
(16004100, 3),
(16004100, 12),
(16004100, 22),
(16004100, 23),
(16004165, 3),
(16004165, 12),
(16004165, 19),
(16004165, 22),
(16004165, 23),
(16007813, 12);

-- --------------------------------------------------------

--
-- Structure de la table `sys_exploitation`
--

CREATE TABLE `sys_exploitation` (
  `id3` int(20) NOT NULL,
  `sys_ex` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sys_exploitation`
--

INSERT INTO `sys_exploitation` (`id3`, `sys_ex`) VALUES
(1, 'Windows'),
(2, 'MAC-OS'),
(3, 'Linux');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avoir_compet1`
--
ALTER TABLE `avoir_compet1`
  ADD KEY `apogee` (`apogee`),
  ADD KEY `id1` (`id1`),
  ADD KEY `apogee_2` (`apogee`);

--
-- Index pour la table `avoir_compet2`
--
ALTER TABLE `avoir_compet2`
  ADD UNIQUE KEY `apogee_2` (`apogee`,`id2`),
  ADD KEY `apogee` (`apogee`),
  ADD KEY `id2` (`id2`);

--
-- Index pour la table `avoir_compet3`
--
ALTER TABLE `avoir_compet3`
  ADD UNIQUE KEY `apogee_2` (`apogee`,`id3`),
  ADD KEY `apogee` (`apogee`),
  ADD KEY `id3` (`id3`);

--
-- Index pour la table `avoir_exp`
--
ALTER TABLE `avoir_exp`
  ADD KEY `apogee` (`apogee`,`id5`),
  ADD KEY `apogee_2` (`apogee`),
  ADD KEY `id5` (`id5`);

--
-- Index pour la table `bureautique`
--
ALTER TABLE `bureautique`
  ADD PRIMARY KEY (`id1`),
  ADD KEY `id1` (`id1`);

--
-- Index pour la table `diplome`
--
ALTER TABLE `diplome`
  ADD PRIMARY KEY (`id0`),
  ADD KEY `id0` (`id0`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`apogee`),
  ADD KEY `apogee` (`apogee`),
  ADD KEY `apogee_2` (`apogee`),
  ADD KEY `apogee_3` (`apogee`),
  ADD KEY `apogee_4` (`apogee`),
  ADD KEY `apogee_5` (`apogee`);

--
-- Index pour la table `expre_prof`
--
ALTER TABLE `expre_prof`
  ADD PRIMARY KEY (`id5`);

--
-- Index pour la table `langues`
--
ALTER TABLE `langues`
  ADD PRIMARY KEY (`id4`);

--
-- Index pour la table `lang_info`
--
ALTER TABLE `lang_info`
  ADD PRIMARY KEY (`id2`);

--
-- Index pour la table `obtenir`
--
ALTER TABLE `obtenir`
  ADD KEY `id0` (`id0`,`apogee`),
  ADD KEY `id0_2` (`id0`),
  ADD KEY `apogee` (`apogee`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`id6`),
  ADD UNIQUE KEY `intitule` (`intitule`,`filiere`,`duree`,`date`,`code`,`type`,`description`),
  ADD KEY `code` (`code`);

--
-- Index pour la table `offre_compet1`
--
ALTER TABLE `offre_compet1`
  ADD UNIQUE KEY `id6_2` (`id6`,`id1`),
  ADD KEY `id6` (`id6`),
  ADD KEY `id1` (`id1`);

--
-- Index pour la table `offre_compet2`
--
ALTER TABLE `offre_compet2`
  ADD UNIQUE KEY `id6_2` (`id6`,`id2`),
  ADD KEY `id6` (`id6`),
  ADD KEY `id2` (`id2`);

--
-- Index pour la table `offre_compet3`
--
ALTER TABLE `offre_compet3`
  ADD UNIQUE KEY `id6_3` (`id6`,`id3`),
  ADD KEY `id6` (`id6`),
  ADD KEY `id3` (`id3`),
  ADD KEY `id6_2` (`id6`),
  ADD KEY `id3_2` (`id3`);

--
-- Index pour la table `offre_compet4`
--
ALTER TABLE `offre_compet4`
  ADD UNIQUE KEY `id6` (`id6`,`id4`),
  ADD KEY `id4` (`id4`);

--
-- Index pour la table `parler`
--
ALTER TABLE `parler`
  ADD KEY `apogee` (`apogee`,`id4`),
  ADD KEY `apogee_2` (`apogee`,`id4`),
  ADD KEY `parler_ibfk_2` (`id4`);

--
-- Index pour la table `postuler`
--
ALTER TABLE `postuler`
  ADD UNIQUE KEY `apogee_2` (`apogee`,`id6`),
  ADD KEY `apogee` (`apogee`),
  ADD KEY `id6` (`id6`);

--
-- Index pour la table `sys_exploitation`
--
ALTER TABLE `sys_exploitation`
  ADD PRIMARY KEY (`id3`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bureautique`
--
ALTER TABLE `bureautique`
  MODIFY `id1` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `diplome`
--
ALTER TABLE `diplome`
  MODIFY `id0` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `code` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `expre_prof`
--
ALTER TABLE `expre_prof`
  MODIFY `id5` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `langues`
--
ALTER TABLE `langues`
  MODIFY `id4` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `lang_info`
--
ALTER TABLE `lang_info`
  MODIFY `id2` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `id6` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `sys_exploitation`
--
ALTER TABLE `sys_exploitation`
  MODIFY `id3` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avoir_compet1`
--
ALTER TABLE `avoir_compet1`
  ADD CONSTRAINT `avoir_compet1_ibfk_3` FOREIGN KEY (`id1`) REFERENCES `bureautique` (`id1`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avoir_compet1_ibfk_4` FOREIGN KEY (`apogee`) REFERENCES `etudiant` (`apogee`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `avoir_compet2`
--
ALTER TABLE `avoir_compet2`
  ADD CONSTRAINT `avoir_compet2_ibfk_1` FOREIGN KEY (`apogee`) REFERENCES `etudiant` (`apogee`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avoir_compet2_ibfk_2` FOREIGN KEY (`id2`) REFERENCES `lang_info` (`id2`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `avoir_compet3`
--
ALTER TABLE `avoir_compet3`
  ADD CONSTRAINT `avoir_compet3_ibfk_1` FOREIGN KEY (`apogee`) REFERENCES `etudiant` (`apogee`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avoir_compet3_ibfk_2` FOREIGN KEY (`id3`) REFERENCES `sys_exploitation` (`id3`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `avoir_exp`
--
ALTER TABLE `avoir_exp`
  ADD CONSTRAINT `avoir_exp_ibfk_1` FOREIGN KEY (`apogee`) REFERENCES `etudiant` (`apogee`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avoir_exp_ibfk_2` FOREIGN KEY (`id5`) REFERENCES `expre_prof` (`id5`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `obtenir`
--
ALTER TABLE `obtenir`
  ADD CONSTRAINT `obtenir_ibfk_1` FOREIGN KEY (`id0`) REFERENCES `diplome` (`id0`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obtenir_ibfk_2` FOREIGN KEY (`apogee`) REFERENCES `etudiant` (`apogee`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `offre`
--
ALTER TABLE `offre`
  ADD CONSTRAINT `offre_ibfk_1` FOREIGN KEY (`code`) REFERENCES `entreprise` (`code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `offre_compet1`
--
ALTER TABLE `offre_compet1`
  ADD CONSTRAINT `offre_compet1_ibfk_1` FOREIGN KEY (`id6`) REFERENCES `offre` (`id6`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offre_compet1_ibfk_2` FOREIGN KEY (`id1`) REFERENCES `bureautique` (`id1`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `offre_compet2`
--
ALTER TABLE `offre_compet2`
  ADD CONSTRAINT `offre_compet2_ibfk_1` FOREIGN KEY (`id6`) REFERENCES `offre` (`id6`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offre_compet2_ibfk_2` FOREIGN KEY (`id2`) REFERENCES `lang_info` (`id2`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `offre_compet3`
--
ALTER TABLE `offre_compet3`
  ADD CONSTRAINT `offre_compet3_ibfk_1` FOREIGN KEY (`id6`) REFERENCES `offre` (`id6`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offre_compet3_ibfk_2` FOREIGN KEY (`id3`) REFERENCES `sys_exploitation` (`id3`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `offre_compet4`
--
ALTER TABLE `offre_compet4`
  ADD CONSTRAINT `offre_compet4_ibfk_1` FOREIGN KEY (`id4`) REFERENCES `langues` (`id4`),
  ADD CONSTRAINT `offre_compet4_ibfk_2` FOREIGN KEY (`id6`) REFERENCES `offre` (`id6`);

--
-- Contraintes pour la table `parler`
--
ALTER TABLE `parler`
  ADD CONSTRAINT `parler_ibfk_1` FOREIGN KEY (`apogee`) REFERENCES `etudiant` (`apogee`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parler_ibfk_2` FOREIGN KEY (`id4`) REFERENCES `langues` (`id4`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `postuler`
--
ALTER TABLE `postuler`
  ADD CONSTRAINT `postuler_ibfk_1` FOREIGN KEY (`apogee`) REFERENCES `etudiant` (`apogee`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `postuler_ibfk_2` FOREIGN KEY (`id6`) REFERENCES `offre` (`id6`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
