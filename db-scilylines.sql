-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 13 oct. 2022 à 21:52
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db-scilylines`
--

-- --------------------------------------------------------

--
-- Création de l'utilisateur `admin`
--

DROP USER `admin`@`localhost`;
FLUSH PRIVILEGES;

CREATE USER 'admin'@'localhost' IDENTIFIED WITH caching_sha2_password BY '***';GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 'admin'@'localhost';ALTER USER 'admin'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;GRANT ALL PRIVILEGES ON `symfony`.* TO 'admin'@'localhost';

--
-- Structure de la table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` varchar(30) NOT NULL,
  `password` char(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '3db857812fdaf74e3de40fec4080ff96');

--
-- Structure de la table `liaison`
--

DROP TABLE IF EXISTS `liaison`;
CREATE TABLE IF NOT EXISTS `liaison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duree` varchar(5) NOT NULL,
  `portDepart` int(11) NOT NULL,
  `portArrivee` int(11) NOT NULL,
  `idSecteur` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-depart` (`portDepart`),
  KEY `fk-arrivee` (`portArrivee`),
  KEY `id` (`id`),
  KEY `duree` (`duree`),
  KEY `fk-Secteur` (`idSecteur`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `liaison`
--

INSERT INTO `liaison` (`id`, `port_depart_id`, `secteur_id`, `duree`, `port_arrivee_id`) VALUES
(15, '1h30', 1, 2, 1),
(16, '4h', 2, 4, 2),
(17, '2h', 1, 4, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


CREATE USER 'admin'@'localhost' IDENTIFIED WITH caching_sha2_password BY '***';GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 'admin'@'localhost';ALTER USER 'admin'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;GRANT ALL PRIVILEGES ON `symfony`.* TO 'admin'@'localhost';