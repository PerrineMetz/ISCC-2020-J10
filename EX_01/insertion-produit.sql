-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 07 juil. 2020 à 11:21
-- Version du serveur :  5.7.26
-- Version de PHP :  7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `BaseTest01`
--
CREATE DATABASE IF NOT EXISTS `BaseTest01` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `BaseTest01`;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `description` longtext NOT NULL,
  `prix` float NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `description`, `prix`, `quantite`) VALUES
(1, 'T-shirt rouge', 'T-shirt coton de couleur rouge', 15.5, 5),
(2, 'T-shirt vert', 'T-shirt coton de couleur verte', 15.5, 6),
(3, 'T-shirt argent', 'T-shirt coton de couleur argent', 15.5, 8),
(4, 'Short bleu', 'Short jean de couleur bleu', 16.5, 5),
(5, 'Short vert ', 'Short jean de couleur verte', 19.99, 5),
(6, 'Gilet noir', 'gilet de couleur noir', 19.99, 10),
(7, 'Veste argent', 'Veste de couleur argentée', 35, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD UNIQUE KEY `id` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
