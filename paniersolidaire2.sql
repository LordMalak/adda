-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Sam 26 Avril 2014 à 13:39
-- Version du serveur: 5.5.34
-- Version de PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `paniersolidaire2`
--

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE IF NOT EXISTS `contenir` (
  `datePanier` datetime NOT NULL,
  `codeProduit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`datePanier`,`codeProduit`),
  KEY `fk_contenir_produit` (`codeProduit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contenir`
--

INSERT INTO `contenir` (`datePanier`, `codeProduit`, `quantite`) VALUES
('2013-12-05 00:00:00', 1, 500),
('2013-12-05 00:00:00', 2, 500),
('2013-12-05 00:00:00', 3, 1000),
('2013-12-05 00:00:00', 4, 1000),
('2013-12-05 00:00:00', 5, 500),
('2013-12-05 00:00:00', 10, 2000),
('2013-12-12 00:00:00', 1, 800),
('2013-12-12 00:00:00', 2, 1000),
('2013-12-12 00:00:00', 3, 500),
('2013-12-12 00:00:00', 6, 500),
('2013-12-12 00:00:00', 8, 500),
('2014-04-17 00:00:00', 1, 57);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE IF NOT EXISTS `panier` (
  `datePanier` datetime NOT NULL,
  PRIMARY KEY (`datePanier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `panier`
--

INSERT INTO `panier` (`datePanier`) VALUES
('2013-12-05 00:00:00'),
('2013-12-12 00:00:00'),
('2014-04-17 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `code` int(11) NOT NULL,
  `libelle` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`code`, `libelle`) VALUES
(1, 'Pomme de terre'),
(2, 'Carotte'),
(3, 'Poireau'),
(4, 'Potiron'),
(5, 'Navet'),
(6, 'Oignon'),
(7, 'Pomme'),
(8, 'Poire'),
(9, 'Banane'),
(10, 'Orange');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `contenir_ibfk_1` FOREIGN KEY (`datePanier`) REFERENCES `panier` (`datePanier`),
  ADD CONSTRAINT `contenir_ibfk_2` FOREIGN KEY (`codeProduit`) REFERENCES `produit` (`code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
