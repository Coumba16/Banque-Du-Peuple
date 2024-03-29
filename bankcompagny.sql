-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 18 Décembre 2019 à 09:35
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bankcompagny`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cni` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `tel` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `cni`, `nom`, `prenom`, `adresse`, `tel`) VALUES
(1, '456723', 'Ndiaye', 'RAMA', 'mermoz', '7725251221'),
(2, '456287', 'Ndoye', 'Abdou', 'dakar', '772255547'),
(3, '45875', 'Dieng', 'Abdou', 'poste', '771412587'),
(4, '9999', 'Ndiaye', 'Zahra', 'rufisque', '77444444'),
(5, '271500', 'Diagne', 'Aicha', 'Dakar', '776515042'),
(6, '152378', 'Diop', 'Dabakh', 'Rufisque', '771215248'),
(7, '888855', 'Dieng', 'Modou', 'parcel', '772255185'),
(8, '888855', 'Niang', 'Mbaye', 'parcel', '772255185'),
(9, '1111', 'Diop', 'Babacar', 'Rufisque', '774521128'),
(10, '123456', 'Seck', 'Fatima', 'Dakar', '784345560'),
(11, '123456', 'Seck', 'Fatima', 'Dakar', '784345560'),
(12, 'kia5', 'Ndiaye', 'Fatima', 'Diop', '781435698'),
(13, '19876', 'Seck', 'Maguette', 'Kaolack', '772162287'),
(14, '2000', 'Diop', 'Alima', 'Saint-Louis', '705171586'),
(15, '20001', 'Ndiaye', 'Alpha', 'Oukam', '777012443'),
(16, '20010', 'Diop', 'Rokhaya', 'StLouis', '778144028'),
(17, '', '', '', '', ''),
(18, '123456780', 'SDFGH', 'ERTYUI', 'ZERTYHUJ', '765434567'),
(19, '199087', 'Diagne', 'Mor', 'Rufisque', '778765436'),
(20, '19087', 'Sylla', 'Hamidou', 'Parcelle', '771347689'),
(21, '1234567890', 'Mbow', 'Momar', 'parcelle', '776543897'),
(22, '', '', '', '', ''),
(23, '4665', 'mp', 'coumba', 'fr', '1256631'),
(24, '', '', '', '', ''),
(25, '', '', '', '', ''),
(26, '4665', 'dacosta', 'coumba', 'rufisque', ''),
(27, '4665', 'dacosta', 'coumba', 'rufisque', '785454545'),
(28, '4665', 'adja', 'coumba', 'tr', 'dfgh422'),
(29, '4665', 'adja', 'coumba', 'Rufisq', '784343953'),
(37, '25663', 'opkj', 'azerty', 'gffd', '36254'),
(38, '875421', 'ba', 'seydou', '', '7855524145'),
(39, '45214', 'sall', 'macky', 'dakar', '250485'),
(40, '4665', 'dacosta', 'coumba', 'rufisque', '5245624'),
(41, '4665', 'adja', 'coumba', 'paris', '5266'),
(42, '0507', 'NIANG', 'ALY', 'PARCELLE', '771825414'),
(43, '123', 'sene', 'faty', 'deaku', '213654'),
(44, '456', 'nk,l', 'bn', 'bn,', '23'),
(45, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE IF NOT EXISTS `compte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(25) NOT NULL,
  `dateCreation` varchar(10) NOT NULL,
  `solde` int(11) NOT NULL DEFAULT '0',
  `idClient` int(11) NOT NULL,
  `idGestCompte` int(11) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero` (`numero`),
  KEY `idClient` (`idClient`),
  KEY `idGestCompte` (`idGestCompte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`id`, `numero`, `dateCreation`, `solde`, `idClient`, `idGestCompte`, `etat`) VALUES
(1, 'FSN_06042019_C1', '06-04-2019', 839, 1, 1, 1),
(2, 'FSN_06042019_C2', '06-04-2019', 500, 2, 1, 1),
(3, 'FSN_10042019_C3', '10-04-2019', 10000, 3, 1, 1),
(4, 'FSN_10042019_C4', '10-04-2019', 3000, 4, 1, 1),
(5, 'FSN_11042019_C5', '11-04-2019', 11000, 5, 1, 1),
(6, 'FSN_11042019_C6', '11-04-2019', 1, 6, 1, 1),
(7, 'FSN_11042019_C7', '11-04-2019', 1070353682, 7, 1, 1),
(9, 'FSN_11042019_C8', '11-04-2019', 1, 9, 1, 1),
(10, 'FSN_22062019_C10', '22-06-2019', 10000, 10, 1, 1),
(11, 'FSN_22062019_C11', '22-06-2019', 10000, 11, 1, 1),
(12, 'FSN_22062019_C12', '22-06-2019', 1997, 12, 1, 1),
(13, 'FSN_26062019_C13', '26-06-2019', 10000, 13, 1, 1),
(14, 'FSN_26062019_C14', '26-06-2019', 5000, 14, 1, 1),
(15, 'FSN_27062019_C15', '27-06-2019', 20000, 15, 1, 1),
(16, 'FSN_28062019_C16', '28-06-2019', 10000, 16, 1, 1),
(18, 'FSN_28062019_C18', '28-06-2019', 20000, 18, 1, 1),
(19, 'FSN_28062019_C19', '28-06-2019', 85025000, 19, 1, 1),
(20, 'FSN_28062019_C20', '28-06-2019', 25000, 20, 1, 1),
(21, 'FSN_29062019_C21', '29-06-2019', 15000, 21, 1, 1),
(22, 'FSN_29062019_C22', '29-06-2019', 100000, 4, 1, 1),
(23, 'FSN_29062019_C23', '29-06-2019', 50000, 3, 1, 1),
(24, 'FSN_02072019_C24', '02-07-2019', 52222, 1, 1, 1),
(25, 'FSN_03072019_C25', '03-07-2019', 5000, 1, 1, 1),
(34, 'FSN_03072019_C26', '03-07-2019', 1425, 37, 1, 1),
(35, 'FSN_03072019_C35', '03-07-2019', 10001000, 38, 1, 1),
(36, 'FSN_03072019_C36', '03-07-2019', 9665, 39, 1, 1),
(37, 'FSN_04072019_C37', '04-07-2019', 9666, 40, 1, 1),
(38, 'FSN_04072019_C38', '04-07-2019', 113365, 41, 1, 1),
(39, 'FSN_04072019_C39', '04-07-2019', 55558, 1, 1, 1),
(42, 'FSN_04072019_C42', '04-07-2019', 30000, 42, 1, 1),
(43, 'FSN_04072019_C43', '04-07-2019', 100000, 42, 1, 0),
(44, 'FSN_01122019_C44', '01-12-2019', 40000, 1, 1, 1),
(45, 'FSN_01122019_C45', '01-12-2019', 23000, 43, 1, 1),
(46, 'FSN_01122019_C46', '01-12-2019', 2000000, 1, 1, 1),
(47, 'FSN_01122019_C47', '01-12-2019', 5, 1, 1, 1),
(48, 'FSN_03122019_C48', '03-12-2019', 44444, 1, 1, 1),
(49, 'FSN_04122019_C49', '04-12-2019', 0, 44, 1, 0),
(50, 'FSN_04122019_C50', '04-12-2019', 963852, 45, 1, 1),
(51, 'FSN_04122019_C51', '04-12-2019', 741562, 1, 1, 1),
(52, 'FSN_04122019_C52', '04-12-2019', 2147483647, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

CREATE TABLE IF NOT EXISTS `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) NOT NULL,
  `dateOperation` varchar(10) NOT NULL,
  `montant` int(11) NOT NULL,
  `idCompte` int(11) NOT NULL,
  `idTypeOpe` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero` (`numero`),
  KEY `idCompte` (`idCompte`),
  KEY `idTypeOpe` (`idTypeOpe`),
  KEY `idUser` (`idUser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Contenu de la table `operation`
--

INSERT INTO `operation` (`id`, `numero`, `dateOperation`, `montant`, `idCompte`, `idTypeOpe`, `idUser`) VALUES
(1, 'FSN_06042019_OP1', '06-04-2019', 50000, 1, 1, 1),
(2, 'FSN_06042019_OP2', '06-04-2019', 10000, 2, 1, 1),
(3, 'FSN_06042019_OP3', '06-04-2019', 10000, 2, 1, 1),
(4, 'FSN_10042019_OP4', '10-04-2019', 222, 1, 1, 1),
(5, 'FSN_10042019_OP5', '10-04-2019', 222, 1, 1, 1),
(6, 'FSN_10042019_OP6', '10-04-2019', 10000, 1, 1, 1),
(7, 'FSN_10042019_OP7', '10-04-2019', 10000, 1, 1, 1),
(8, 'FSN_10042019_OP8', '10-04-2019', 150000, 1, 1, 1),
(9, 'FSN_10042019_OP9', '10-04-2019', 150000, 1, 1, 1),
(10, 'FSN_11042019_OP10', '11-04-2019', 100, 1, 1, 1),
(11, 'FSN_11042019_OP11', '11-04-2019', 10, 1, 2, 1),
(12, 'FSN_11042019_OP12', '11-04-2019', 150, 1, 1, 1),
(13, 'FSN_11042019_OP13', '11-04-2019', 10000, 5, 1, 1),
(14, 'FSN_11042019_OP14', '11-04-2019', 10000, 5, 1, 1),
(15, 'FSN_11042019_OP15', '11-04-2019', 1, 6, 1, 1),
(16, 'FSN_11042019_OP16', '11-04-2019', 0, 7, 1, 1),
(18, 'FSN_11042019_OP17', '11-04-2019', 1, 9, 1, 1),
(20, 'FSN_12042019_OP20', '12-04-2019', 155, 1, 1, 1),
(21, 'FSN_02062019_OP21', '02-06-2019', 15000, 1, 1, 1),
(22, 'FSN_02062019_OP22', '02-06-2019', 300000, 1, 1, 1),
(23, 'FSN_02062019_OP23', '02-06-2019', 300000, 1, 2, 1),
(24, 'FSN_02062019_OP24', '02-06-2019', 300000, 1, 2, 1),
(25, 'FSN_02062019_OP25', '02-06-2019', 80000, 1, 2, 1),
(26, 'FSN_02062019_OP26', '02-06-2019', 10000, 1, 1, 1),
(27, 'FSN_02062019_OP27', '02-06-2019', 10000, 1, 2, 1),
(28, 'FSN_02062019_OP28', '02-06-2019', 10000, 1, 1, 1),
(29, 'FSN_02062019_OP29', '02-06-2019', 16000, 1, 1, 1),
(30, 'FSN_02062019_OP30', '02-06-2019', 16000, 1, 2, 1),
(34, 'FSN_02062019_OP31', '02-06-2019', 15000, 1, 2, 1),
(35, 'FSN_02062019_OP35', '02-06-2019', 15000, 2, 2, 1),
(36, 'FSN_02062019_OP36', '02-06-2019', 15000, 5, 2, 1),
(37, 'FSN_02062019_OP37', '02-06-2019', 2500, 2, 2, 1),
(38, 'FSN_02062019_OP38', '02-06-2019', 2500, 2, 2, 1),
(39, 'FSN_02062019_OP39', '02-06-2019', 2500, 5, 2, 1),
(40, 'FSN_02062019_OP40', '02-06-2019', 500, 2, 3, 1),
(41, 'FSN_02062019_OP41', '02-06-2019', 500, 2, 3, 1),
(42, 'FSN_02062019_OP42', '02-06-2019', 500, 2, 3, 1),
(43, 'FSN_02062019_OP43', '02-06-2019', 500, 2, 3, 1),
(44, 'FSN_02062019_OP44', '02-06-2019', 500, 2, 3, 1),
(45, 'FSN_02062019_OP45', '02-06-2019', 500, 2, 3, 1),
(46, 'FSN_02062019_OP46', '02-06-2019', 500, 2, 3, 1),
(47, 'FSN_02062019_OP47', '02-06-2019', 500, 2, 3, 1),
(48, 'FSN_02062019_OP48', '02-06-2019', 500, 5, 3, 1),
(49, 'FSN_02062019_OP49', '02-06-2019', 500, 5, 3, 1),
(50, 'FSN_02062019_OP50', '02-06-2019', 500, 5, 3, 1),
(51, 'FSN_02062019_OP51', '02-06-2019', 10000, 4, 1, 1),
(52, 'FSN_02062019_OP52', '02-06-2019', 10000, 3, 1, 1),
(53, 'FSN_02062019_OP53', '02-06-2019', 5000, 3, 3, 1),
(54, 'FSN_02062019_OP54', '02-06-2019', 5000, 3, 1, 1),
(55, 'FSN_02062019_OP55', '02-06-2019', 5000, 3, 3, 1),
(56, 'FSN_02062019_OP56', '02-06-2019', 5000, 3, 3, 1),
(57, 'FSN_02062019_OP57', '02-06-2019', 2500, 3, 3, 1),
(58, 'FSN_02062019_OP58', '02-06-2019', 5000, 3, 3, 1),
(59, 'FSN_02062019_OP59', '02-06-2019', 2000, 3, 3, 1),
(60, 'FSN_02062019_OP60', '02-06-2019', 2000, 4, 3, 1),
(61, 'FSN_02062019_OP61', '02-06-2019', 1000, 3, 3, 1),
(62, 'FSN_22062019_OP62', '22-06-2019', 10000, 10, 1, 1),
(63, 'FSN_22062019_OP63', '22-06-2019', 10000, 11, 1, 1),
(64, 'FSN_22062019_OP64', '22-06-2019', 1997, 12, 1, 1),
(65, 'FSN_26062019_OP65', '26-06-2019', 10000, 13, 1, 1),
(66, 'FSN_26062019_OP66', '26-06-2019', 5000, 14, 1, 1),
(67, 'FSN_27062019_OP67', '27-06-2019', 20000, 15, 1, 1),
(68, 'FSN_27062019_OP68', '27-06-2019', 10000, 5, 1, 1),
(69, 'FSN_28062019_OP69', '28-06-2019', 10000, 16, 1, 1),
(70, 'FSN_28062019_OP70', '28-06-2019', 20000, 18, 1, 1),
(71, 'FSN_28062019_OP71', '28-06-2019', 25000, 19, 1, 1),
(72, 'FSN_28062019_OP72', '28-06-2019', 25000, 20, 1, 1),
(73, 'FSN_29062019_OP73', '29-06-2019', 25000, 21, 1, 1),
(74, 'FSN_29062019_OP74', '29-06-2019', 10000, 21, 2, 1),
(75, 'FSN_03072019_OP75', '03-07-2019', 1425, 34, 1, 1),
(76, 'FSN_03072019_OP76', '03-07-2019', 10000000, 35, 1, 1),
(77, 'FSN_03072019_OP77', 'FSN_030720', 55000000, 19, 1, 1),
(78, 'FSN_03072019_OP78', 'FSN_030720', 130000000, 19, 1, 1),
(79, 'FSN_03072019_OP79', 'FSN_030720', 450000000, 7, 1, 1),
(80, 'FSN_03072019_OP80', 'FSN_030720', 0, 7, 1, 1),
(81, 'FSN_03072019_OP81', 'FSN_030720', 0, 7, 1, 1),
(82, 'FSN_03072019_OP82', 'FSN_030720', 1000, 35, 1, 1),
(83, 'FSN_03072019_OP83', 'FSN_030720', 44555, 7, 1, 1),
(84, 'FSN_03072019_OP84', 'FSN_030720', 0, 7, 1, 1),
(85, 'FSN_03072019_OP85', 'FSN_030720', 5000000, 7, 1, 1),
(86, 'FSN_03072019_OP86', 'FSN_030720', 5000000, 7, 1, 1),
(87, 'FSN_03072019_OP87', 'FSN_030720', 54548454, 7, 1, 1),
(88, 'FSN_03072019_OP88', 'FSN_030720', 100000000, 19, 2, 1),
(89, 'FSN_03072019_OP89', 'FSN_030720', 8500000, 7, 1, 1),
(90, 'FSN_03072019_OP90', 'FSN_030720', 8500000, 7, 1, 1),
(91, 'FSN_03072019_OP91', 'FSN_030720', 568775675, 7, 1, 1),
(92, 'FSN_03072019_OP92', '03-07-2019', 9665, 36, 1, 1),
(93, 'FSN_03072019_OP93', 'FSN_030720', 15000, 7, 2, 1),
(94, 'FSN_03072019_OP94', 'FSN_030720', 30000002, 7, 2, 1),
(95, 'FSN_04072019_OP95', '04-07-2019', 9666, 37, 1, 1),
(96, 'FSN_04072019_OP96', '04-07-2019', 2255, 38, 1, 1),
(97, 'FSN_04072019_OP97', 'FSN_040720', 55555, 38, 1, 1),
(98, 'FSN_04072019_OP98', 'FSN_040720', 55555, 38, 1, 1),
(99, 'FSN_04072019_OP99', '04-07-2019', 25000, 42, 1, 1),
(100, 'FSN_04072019_OP100', 'FSN_040720', 5000, 42, 1, 1),
(101, 'FSN_04072019_OP101', 'FSN_040720', 22222, 43, 2, 1),
(102, 'FSN_01122019_OP102', '01-12-2019', 23000, 45, 1, 1),
(103, 'FSN_04122019_OP103', '04-12-2019', 0, 49, 1, 1),
(104, 'FSN_04122019_OP104', '04-12-2019', 963852, 50, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `typeoperation`
--

CREATE TABLE IF NOT EXISTS `typeoperation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `typeoperation`
--

INSERT INTO `typeoperation` (`id`, `nom`) VALUES
(1, 'depot'),
(2, 'retrait'),
(3, 'transfert');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profil` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `login`, `password`, `profil`) VALUES
(1, 'COUMBA', 'SENE', 'adja', 'passer', 'admin'),
(2, 'NDAO', 'QUEEN', 'sophie', 'passer', 'caissier'),
(4, 'DACOSTA', 'RAMATOULAYE', 'rama', 'passer', 'admin'),
(64, '', '', '', '', ''),
(68, '', '', 'admin', 'admin', 'admin');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `compte_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `compte_ibfk_2` FOREIGN KEY (`idGestCompte`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`idCompte`) REFERENCES `compte` (`id`),
  ADD CONSTRAINT `operation_ibfk_3` FOREIGN KEY (`idUser`) REFERENCES `utilisateur` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
