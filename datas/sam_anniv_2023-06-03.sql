-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : dim. 04 juin 2023 à 08:42
-- Version du serveur : 10.10.2-MariaDB
-- Version de PHP : 8.2.0

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `sam_anniv`
--
DROP DATABASE IF EXISTS `sam_anniv`;
CREATE DATABASE IF NOT EXISTS `sam_anniv` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `sam_anniv`;

-- --------------------------------------------------------

--
-- Structure de la table `anniversaires`
--

DROP TABLE IF EXISTS `anniversaires`;
CREATE TABLE IF NOT EXISTS `anniversaires` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_anniversaire` date DEFAULT NULL,
  `nom` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int(2) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `anniversaires`
--

INSERT INTO `anniversaires` (`id`, `date_anniversaire`, `nom`, `age`) VALUES
(1, '2022-02-16', 'Clement', 1),
(2, '2021-10-08', 'Diego', 1),
(3, '2021-12-23', 'Éléonore', 1),
(4, '2020-06-12', 'Sarah', 2),
(5, '2013-10-16', 'Ariel', 9),
(6, '2012-08-08', 'Elisa', 10),
(7, '2012-05-21', 'Naomi', 10),
(8, '2012-12-31', 'Teiana', 10),
(9, '2009-12-11', 'Red', 13),
(10, '2008-06-26', 'Amelia', 14),
(11, '2008-10-29', 'Lucy Loud', 14),
(12, '2008-11-07', 'Simon', 14),
(13, '2008-04-04', 'Samuel', 15),
(14, '2007-03-08', 'Martin', 16),
(15, '2006-09-22', 'Noah', 16),
(16, '2005-11-04', 'Timothé', 17),
(17, '2005-03-16', 'Matteo', 18),
(18, '2004-08-25', 'Zoé', 18),
(19, '2004-02-19', 'Jules', 19),
(20, '2003-02-14', 'Lynn', 20),
(21, '2002-08-24', 'Nathan', 20),
(22, '2001-08-31', 'Luna', 21),
(23, '1999-12-21', 'Lori', 23),
(24, '1998-07-22', 'Galle', 24),
(25, '1998-01-12', 'Gambi', 25),
(26, '1996-04-12', 'Anne-Laure', 27),
(27, '1989-04-18', 'Antoine', 34),
(28, '1988-06-05', 'Mery', 34),
(29, '1986-12-20', 'Bruno', 36),
(30, '1985-04-13', 'Corentin', 38),
(31, '1985-08-03', 'Marlène', 37),
(32, '1985-03-05', 'Felipe', 38),
(33, '1985-01-18', 'Marine', 38),
(34, '1984-08-27', 'Nicolas', 38),
(35, '1980-10-29', 'Patricia', 42),
(36, '1980-01-01', 'Elin', 43),
(37, '1979-08-04', 'Melanie', 43),
(38, '1978-09-22', 'Myriam', 44),
(39, '1977-03-02', 'Michael', 46),
(40, '1972-05-05', 'Pascal', 51),
(41, '1967-11-22', 'Vahan', 55),
(42, '1965-07-12', 'Narine', 57),
(43, '1965-04-18', 'Yves', 58),
(44, '1957-09-07', 'Maria', 65),
(45, '1957-01-29', 'Quentin', 66),
(46, '1954-07-11', 'Martine', 68),
(47, '1955-01-22', 'Nathalie', 68),
(48, '1943-09-25', 'Charles', 79),
(49, '1936-11-11', 'Lily', 86),
(50, '1932-12-28', 'Mamie Rose', 90);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
