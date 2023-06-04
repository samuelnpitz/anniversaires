-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : dim. 04 juin 2023 à 08:50
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `anniversaires`
--

INSERT INTO `anniversaires` (`id`, `date_anniversaire`, `nom`) VALUES
(1, '2022-02-16', 'Clement'),
(2, '2021-10-08', 'Diego'),
(3, '2021-12-23', 'Éléonore'),
(4, '2020-06-12', 'Sarah'),
(5, '2013-10-16', 'Ariel'),
(6, '2012-08-08', 'Elisa'),
(7, '2012-05-21', 'Naomi'),
(8, '2012-12-31', 'Teiana'),
(9, '2009-12-11', 'Red'),
(10, '2008-06-26', 'Amelia'),
(11, '2008-10-29', 'Lucy Loud'),
(12, '2008-11-07', 'Simon'),
(13, '2008-04-04', 'Samuel'),
(14, '2007-03-08', 'Martin'),
(15, '2006-09-22', 'Noah'),
(16, '2005-11-04', 'Timothé'),
(17, '2005-03-16', 'Matteo'),
(18, '2004-08-25', 'Zoé'),
(19, '2004-02-19', 'Jules'),
(20, '2003-02-14', 'Lynn'),
(21, '2002-08-24', 'Nathan'),
(22, '2001-08-31', 'Luna'),
(23, '1999-12-21', 'Lori'),
(24, '1998-07-22', 'Galle'),
(25, '1998-01-12', 'Gambi'),
(26, '1996-04-12', 'Anne-Laure'),
(27, '1989-04-18', 'Antoine'),
(28, '1988-06-05', 'Mery'),
(29, '1986-12-20', 'Bruno'),
(30, '1985-04-13', 'Corentin'),
(31, '1985-08-03', 'Marlène'),
(32, '1985-03-05', 'Felipe'),
(33, '1985-01-18', 'Marine'),
(34, '1984-08-27', 'Nicolas'),
(35, '1980-10-29', 'Patricia'),
(36, '1980-01-01', 'Elin'),
(37, '1979-08-04', 'Melanie'),
(38, '1978-09-22', 'Myriam'),
(39, '1977-03-02', 'Michael'),
(40, '1972-05-05', 'Pascal'),
(41, '1967-11-22', 'Vahan'),
(42, '1965-07-12', 'Narine'),
(43, '1965-04-18', 'Yves'),
(44, '1957-09-07', 'Maria'),
(45, '1957-01-29', 'Quentin'),
(46, '1954-07-11', 'Martine'),
(47, '1955-01-22', 'Nathalie'),
(48, '1943-09-25', 'Charles'),
(49, '1936-11-11', 'Lily'),
(50, '1932-12-28', 'Mamie Rose');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
