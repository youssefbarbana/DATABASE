-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 04 août 2023 à 04:21
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `formation`
--

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE `emprunts` (
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date_emprunt` date NOT NULL,
  `date_retour_prevue` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `emprunts`
--

INSERT INTO `emprunts` (`user_id`, `id`, `date_emprunt`, `date_retour_prevue`) VALUES
(0, 136, '2023-08-04', '2023-08-18'),
(0, 137, '2023-08-04', '2023-08-18'),
(23, 0, '2023-08-04', '2023-08-18'),
(23, 0, '2023-08-04', '2023-08-18');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `auteur`, `genre`, `user_id`) VALUES
(136, 'ss', 'barbana', 'br', 46),
(137, 'q', 'a', 'w', 46),
(145, 'q', 'q', 'q', 50),
(146, 'aa', 'aa', 'aa', 52),
(153, 'sz', 'sz', 'sz', 23),
(154, 'aa', 'aa', 'aa', 23);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `email`, `password`) VALUES
(1, 'www', 'www', 'ww@gmail.com', ''),
(2, 'www', 'www', 'ww@gmail.com', ''),
(3, 'www', 'www', 'ww@gmail.com', ''),
(4, '', '', '', ''),
(5, '', '', '', ''),
(6, 'zszas', '', '', ''),
(7, 'www', '', '', ''),
(8, 'dezdezd', 'zadazd', '', ''),
(9, 'gbfbfgb', '', '', ''),
(10, 'zszads', '', '', ''),
(11, '/', '', '', ''),
(12, 'aaaaa', '', '', ''),
(13, 'zaeaze', '', '', ''),
(14, 'zaeaze/\\', '', '', ''),
(15, 'zadhazud///', '', '', ''),
(16, 'sqdxazd', '', '', ''),
(17, 'sqdxazd//', '', '', ''),
(18, 'sqdxazd//\\', '', '', ''),
(19, 'sqdxazd//\\', '', '', ''),
(20, 'sqdxazd/edezdzed', '', '', ''),
(21, '<script></script>', '', '', ''),
(22, 'youssef', 'br', 'br@gmail.com', '$2y$10$yb8QpBBh7d3ljMatC1dStesrAOXh1aUnNPIeowgJvWM4Zpdazufli'),
(23, 'aaaaaaaaa', 'aaa', 'barbanay@gmail.com', '$2y$10$aQRJEgeMyjcv0b3dknbmUuRo2daxmjgzpfQ59/VMH9cErCleJAggC'),
(27, 'dodgeaaa', 'dodge', 'dodge@gmail.com', '$2y$10$A3l5YXVyI9Xi1q3.7zH9P.kDWhziUX7RytZnCJUopqLtulArLRw0m'),
(28, 'dodgeaaa', 'dodge', 'dodge@gmail.com', '$2y$10$U4.YWIz3ynwcGI.xx1OnU.a9a6fwx8mjYZJfUgpH9MsIhvHWGrdxy'),
(29, 'dodgeaaa', 'dodge', 'dodge@gmail.com', '$2y$10$Fq.FjTaXglkyU4urzURSVehvWIkhaIxHCFzXIxMmNkSiCA2Fg.Mzu'),
(30, 'dodgeaaa', 'dodge', 'dodge@gmail.com', '$2y$10$K.J9pLNRgJqJOizmz9MKSObPqKupTAjm8I/2CYZA5LRAFL73v3vf2'),
(31, 'dodgeaaa', 'dodge', 'dodge@gmail.com', '$2y$10$LyUknD84buaCZ9ydzTtGkO18.sNA.Wpg.9iLcvEyADEQMQ5Yp5W6O'),
(32, 'dodgeaaa', 'dodge', 'dodge@gmail.com', '$2y$10$peXi0CQvVaDQV9po5aafAOiBTtQY2cqsD8sGV96W/eerCMT5GpIMa'),
(33, 'dodgeaaa', 'dodge', 'dodge@gmail.com', '$2y$10$2XxdwcJ5mbZA6LQyeY06deBvLTBhh8GtDUeDfrFZSnDRjh8CY59E2'),
(34, 'dodgeaaa', 'dodge', 'dodge@gmail.com', '$2y$10$59/I3ufMvC05fx5fsnKzfe7Ly0dnS6.ecIKwYopP6chAml04n2juq'),
(35, 'dodgeaaa', 'dodge', 'dodge@gmail.com', '$2y$10$E.uzIt8vxSdJKlmB9/pOaOdYVvN2/gvDN/WBO1E9qJLPQQ/0/duee'),
(36, 'dodgeaaa', 'dodge', 'dodge@gmail.com', '$2y$10$gt//4BvNbgDM3SLliEpFXOG2AZZMepqJapeOfnNAefu3ktHXw9Oye'),
(37, 'dodgeaaa', 'dodge', 'dodge@gmail.com', '$2y$10$RSCb5XWuhEpKqE7C0g26d.fDJ.mQ55jSxnc1wtahOMC0lPKmZbaHu'),
(38, 'dodgeaaa', 'dodge', 'dodge1@gmail.com', '$2y$10$5vOfa6msNr99L2.gp7NzoeJS6zPN/3e80fkjzqS3SafiKPySIjMCG'),
(39, 'dodgeaaa', 'dodge', 'dodge1@gmail.com', '$2y$10$0wrslXNoP0vozTt2dwxtbupmBKQQ0CaQnC4BScf320yiEwXggaqFu'),
(40, 'qqqqqqqqqq', 'sssssssssssss', 'ss@gmail.com', '$2y$10$ub.VU8K9QV0S2kVEGiSMQeBFRo6uNLZa24B1wCfx6DYPRiPILyIBS'),
(41, 'aaass', 'a', 'a@gmail.com', '$2y$10$7BydzSsiSH7si.0bK7/t4O4VHeA3ynS.bMq5R3vi2jpU6AV2wDSeu'),
(42, 'aaassss', 'a', 'aas@gmail.com', '$2y$10$Vt1/FYec.pa8Z1PeXXjGsOBK/G8nBU1oAKR.pO.tNnYBpuVI6.vKe'),
(43, 'aaassss', 'a', 'aas@gmail.com', '$2y$10$dhjM11YjKmpryOWUGfajiu3gkDjCNWBqGc7A8CgqgWmujuQNiuEsa'),
(44, 'aaassss', 'a', 'aass@gmail.com', '$2y$10$1KZ8/Nr.fIiD1NEhjPgBBO2VGKkjXnFzskzYBXz3HOTnRSO5bJmNa'),
(45, 'aaassss', 'a', 'aass@gmail.com', '$2y$10$HDlk/c7FOx9UODoK4qJIoemevGjYJmP7KGysC.29CcawDGWVPytu2'),
(46, 'nader', 'nader', 'nader@gmail.com', '$2y$10$xZb3G0S6n/fPdpKbGxT4I.t9gqH4j6T2EEONQDNhNWuF6mUKH4Se.'),
(47, 'hazem', 'hazem', 'ha@gmail.com', '$2y$10$VeYX5BrVBbKAL45lkthtx.8qv5kuD2g9XVtTTRY5jw73WOGzYNX6K'),
(48, 'ahmed', 'ahmed', 'ahmed@gmail.com', '$2y$10$eVYQe0sPsWGjppuWmIWNj.MOIPbSuivnjzwCZVTmcP/dJepfVhr1W'),
(49, 'youssss', 'br', 'you@gmail.com', '$2y$10$J5f0ug/M6u.LWNzGGGujL.TswOmXiOYSir4WnuNw.EGlx.9KNW4/6'),
(50, 'aaaaaaaaaaaaaaaaaaa', 'qq', 'ba@gmail.com', '$2y$10$lKdnbtVkNC2fxKrKi8/7CeINq6ds6IEZjLiLalxJB6lpGwbnYI0Bu'),
(51, 'youssef', 'aaa', 'b@gmail.com', '$2y$10$PvWxZz/CFRUFE9VIgEeYzuTScYBX5e2SjVypZC.QbhjejJzgIQNHC'),
(52, 'youssef', 'aaa', 'b@gmail.com', '$2y$10$dLRNf/Y7mqW/PcSZLfftieqeFbDwJdj.YGYayxdEgepDsKhJ5ybRa'),
(53, 'dodge', 'zskoska', 'dd@gmail.com', '$2y$10$Or/0.5PTqQQevJOi5pkVS.I33QIXjjvGo1Ovlj1XWzG.z2jrwZYlq');

-- --------------------------------------------------------

--
-- Structure de la table `print`
--

CREATE TABLE `print` (
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `date_emprunt` date NOT NULL,
  `date_retour_prevue` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `print`
--

INSERT INTO `print` (`user_id`, `id`, `date_emprunt`, `date_retour_prevue`) VALUES
(23, 0, '2023-08-04', '2023-08-18'),
(23, 0, '2023-08-04', '2023-08-18'),
(0, 0, '2023-08-04', '2023-08-18'),
(23, 0, '2023-08-04', '2023-08-18'),
(23, 0, '2023-08-04', '2023-08-18'),
(23, 0, '2023-08-04', '2023-08-18'),
(0, 23, '2023-08-04', '2023-08-18'),
(23, 0, '2023-08-04', '2023-08-18'),
(23, 0, '2023-08-04', '2023-08-18'),
(0, 23, '2023-08-04', '2023-08-18');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
