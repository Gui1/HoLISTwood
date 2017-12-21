-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 21 déc. 2017 à 16:53
-- Version du serveur :  10.1.22-MariaDB
-- Version de PHP :  7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `holistwood`
--

-- --------------------------------------------------------

--
-- Structure de la table `hw_comments`
--

CREATE TABLE `hw_comments` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `content` text NOT NULL,
  `status` enum('published','deleted','waiting moderation') NOT NULL DEFAULT 'published',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Structure de la table `hw_movies`
--

CREATE TABLE `hw_movies` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `year` datetime NOT NULL,
  `runtime` int(4) NOT NULL,
  `director` varchar(255) NOT NULL,
  `writer` varchar(255) NOT NULL,
  `actors` text NOT NULL,
  `plot` text NOT NULL,
  `awards` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `imdb_id` int(11) NOT NULL,
  `production` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `status` enum('released','in production') NOT NULL DEFAULT 'in production'
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Structure de la table `hw_rating`
--

CREATE TABLE `hw_rating` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `note` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Structure de la table `hw_users`
--

CREATE TABLE `hw_users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `role` enum('user','admin','superadmin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `hw_comments`
--
ALTER TABLE `hw_comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hw_movies`
--
ALTER TABLE `hw_movies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hw_rating`
--
ALTER TABLE `hw_rating`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hw_users`
--
ALTER TABLE `hw_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `hw_comments`
--
ALTER TABLE `hw_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `hw_movies`
--
ALTER TABLE `hw_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `hw_rating`
--
ALTER TABLE `hw_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `hw_users`
--
ALTER TABLE `hw_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
