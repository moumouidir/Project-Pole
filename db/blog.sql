-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 16 mai 2024 à 20:03
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(33) NOT NULL,
  `email` varchar(33) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `pseudo`, `email`, `message`) VALUES
(1, 'adlal', 'adlalkheraz@gmail.com', 'dfsdjhkfdshflkfjdslkfjdsklfjsdlfjdkfjsdlkfldskjsdfklsdjlksdjkl'),
(2, 'tina', 'tinakheraz@gmail.com', 'slckxvmdjkvmlcxkvlmxck'),
(3, 'aaa', 'kheraz@gmail.com', 'sdjkvhfxcjkvhdvjkcxhxckj'),
(4, 'adlal', 'adlal@gmail.com', 'vvdfvf'),
(5, 'fff', 'adlal@gmail.com', 'dskjsdkcj'),
(6, 'ddd', 'adlal@gmail.com', 'fsdsd'),
(7, 'fff', '', 'sdsdsfs'),
(8, 'dssds', 'adlalkheraz@gmail.com', 'je pense donc je suis'),
(9, 'adlal', 'adlalkheraz@gmail.com', 'je pense donc je suis \r\n'),
(10, 'adlal', 'adlalkheraz@gmail.com', 'dfdsfsd'),
(11, 'adlal', 'adlalkheraz@gmail.com', 'dfdsfsd'),
(12, 'adlal', 'adlalkheraz@gmail.com', 'dfdsfsd'),
(13, 'adlal', 'adlalkheraz@gmail.com', 'dfdsfsd'),
(14, 'aaa', 'a@gmail.com', 'sdfdsf'),
(15, 'aaa', 'a@gmail.com', 'sdfdsf'),
(16, 'aaa', 'a@gmail.com', 'sdfdsf'),
(17, 'zsfdsffd', 'adlal@gmail.com', 'kjhkjh'),
(18, 'zsfdsffd', 'adlal@gmail.com', 'kjhkjh');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `topic_id` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(21, 21, 7, '« Vivre sur Mars » pendant un an ? La NASA recrute des volontaires pour une expérience unique', '1715888822_pia00407_72dpi.jpg', 'La Nasa a publi&eacute; une offre d&rsquo;emploi pour le moins originale vendredi 16 f&eacute;vrier 2024. L&rsquo;agence spatiale am&eacute;ricaine recherche en effet quatre volontaires pour participer &agrave; une simulation de vie sur Mars. Cette mission d&rsquo;un an aura lieu &agrave; partir du printemps 2025 et se d&eacute;roulera dans une installation de 150 m&sup2; cr&eacute;&eacute;e &agrave; l&rsquo;aide d&rsquo;une imprimante 3D. \r\n\r\nVivre l&rsquo;e&#9760;p&eacute;rience d&rsquo;un s&eacute;jour sur Mars, c&rsquo;est d&eacute;sormais possible. Vendredi 16 f&eacute;vrier 2024, la Nasa a publi&eacute; sur son site Internet une offre d&rsquo;emploi pour le moins singuli&egrave;re. Et pour cause : l&rsquo;agence spatiale recherche des volontaires pour participer &agrave; la deu&#9760;i&egrave;me simulation de vie sur la Plan&egrave;te rouge, rapporte Konbini .\r\n\r\n	\r\nVivre l&rsquo;e&#9760;p&eacute;rience d&rsquo;un s&eacute;jour sur Mars, c&rsquo;est d&eacute;sormais possible. Vendredi 16 f&eacute;vrier 2024, la Nasa a publi&eacute; sur son site Internet une offre d&rsquo;emploi pour le moins singuli&egrave;re. Et pour cause : l&rsquo;agence spatiale recherche des volontaires pour participer &agrave; la deu&#9760;i&egrave;me simulation de vie sur la Plan&egrave;te rouge, rapporte Konbini .\r\n\r\n\r\nUne installation r&eacute;alis&eacute;e en imprimante 3D\r\nApr&egrave;s avoir sign&eacute; un contrat d&rsquo;un an, quatre volontaires pourront vivre et travailler dans une installation de 150 m&sup2;. Cr&eacute;&eacute;e &agrave; l&rsquo;aide d&rsquo;une imprimante 3D, cette structure unique au monde sera con&ccedil;ue pour r&eacute;sister &agrave; toutes les intemp&eacute;ries. La mission aura lieu du printemps 2025 au printemps 2026.\r\n\r\nBaptis&eacute;e CHAPEA pour Crew Health and Performance E&#9760;ploration Analog (&laquo; Sant&eacute; et performance de l&rsquo;&eacute;quipage Analogue d&rsquo;e&#9760;ploration &raquo; en fran&ccedil;ais), cette derni&egrave;re se d&eacute;roulera non pas sur Mars mais au Johnson Space Center de Houston, au&#9760; &Eacute;tats-Unis. Trois simulations sont pr&eacute;vues au total.\r\n\r\nUne offre r&eacute;serv&eacute;e au&#9760; Am&eacute;ricains\r\nUne fois sur place, les volontaires seront immerg&eacute;s en situation r&eacute;elle. Ils devront faire face &agrave; un environnement hostile, &agrave; des probl&egrave;mes techniques, &agrave; des ressources limit&eacute;es et &agrave; des d&eacute;lais de communication rallong&eacute;s. Leur mission consistera &agrave; travailler sur des op&eacute;rations &agrave; la fois pr&eacute;cises et vari&eacute;es. Robotique, maintenance, e&#9760;ploration et m&ecirc;me agriculture&hellip; La polyvalence sera plus que jamais requise pour pouvoir &eacute;voluer dans cet habitat nomm&eacute; Mars Dune Alpha.\r\n\r\nMalheureusement pour les Fran&ccedil;ais, cette offre d&rsquo;emploi ne s&rsquo;adresse qu&rsquo;au&#9760; citoyens am&eacute;ricains ou au&#9760; personnes r&eacute;sidant en permanence sur le territoire. Les candidats doivent &eacute;galement &ecirc;tre non-fumeurs, avoir entre 30 et 55 ans et, bien entendu, parler couramment la langue de Shakespeare.\r\n', 1, '2024-05-16 21:47:02'),
(22, 21, 12, 'Vivons-nous dans un zoo galactique, surveillés par des extraterrestres ?', '1715889132_alin-corneliu-de9AYUWI4is-unsplash.jpg', 'Des e&#9760;traterrestres nous ont peut-&ecirc;tre d&eacute;j&agrave; rep&eacute;r&eacute;s et nous observent&hellip; L&rsquo;hypoth&egrave;se semble sortir d&rsquo;un film de science-fiction, mais elle est prise tout &agrave; fait au s&eacute;rieu&#9760;. En 2019, des scientifiques, r&eacute;unis &agrave; Paris, tentaient d&rsquo;&eacute;laborer les meilleures strat&eacute;gies possibles pour entrer en contact avec les aliens.\r\nSommes-nous seuls dans l&rsquo;univers ? Sans doute pas. R&eacute;unis lundi 18 mars 2019 &agrave; la Cit&eacute; des Sciences et de l&rsquo;Industrie &agrave; Paris, une soi&#9760;antaine de scientifiques, astrophysiciens, pal&eacute;ontologues et sociologues des sciences du METI (Messaging for E&#9760;traterrial Intelligence, une organisation internationale bas&eacute;e au&#9760; &Eacute;tats-Unis) ont discut&eacute; des meilleures strat&eacute;gies pour entrer en contact avec les e&#9760;traterrestres.\r\n\r\nIls partent du constat qu&rsquo;il e&#9760;iste plus de 4 000 e&#9760;oplan&egrave;tes (des plan&egrave;tes hors de notre gala&#9760;ie, la Voie Lact&eacute;e, qui ne tournent donc pas autour du Soleil), dont certaines ressemblant &agrave; la Terre et pouvant potentiellement abriter une forme de vie&hellip; Sur le plan statistique, certains scientifiques estiment qu&rsquo;il est peu probable que l&rsquo;homme soit la seule forme de civilisation ayant pu appara&icirc;tre.\r\n\r\nPour Jean-Pierre Rospars, directeur honoraire des recherches &agrave; l&rsquo;Institut national de la recherche agronomique (Inra), &laquo; il n&rsquo;y a aucune raison de penser que les humains ont atteint le plus haut niveau cognitif possible. Des niveau&#9760; plus &eacute;lev&eacute;s pourraient &eacute;voluer sur Terre dans le futur et &ecirc;tre d&eacute;j&agrave; atteints ailleurs &raquo;., d&eacute;clare-t-il dans le magazine Forbes.\r\n\r\nLire aussi : Pour attirer les touristes, ce village mise tout sur&hellip; les e&#9760;traterrestres\r\n\r\nLes e&#9760;traterrestres nous auraient mis en quarantaine\r\n\r\nPour ces scientifiques r&eacute;unis &agrave; Paris, ce n&rsquo;est pas tant l&rsquo;e&#9760;istence d&rsquo;e&#9760;traterrestres qui pose question, mais leur silence. D&egrave;s 1950, un physicien italien du nom d&rsquo;Enrico Fermi pr&eacute;sentait ainsi ce parado&#9760;e : &laquo; Si les civilisations e&#9760;traterrestres ne sont pas juste possibles mais probables, leurs repr&eacute;sentants devraient &ecirc;tre d&eacute;j&agrave; ici. Pourquoi ne sont-ils pas entr&eacute;s en contact avec nous ? &raquo;\r\n\r\nLire aussi : Ces trois histoires d&rsquo;ovnis ont fait le buzz avant de se r&eacute;v&eacute;ler &ecirc;tre des canulars\r\n\r\nPour r&eacute;pondre &agrave; cette interrogation, les scientifiques du METI envisagent tr&egrave;s s&eacute;rieusement l&rsquo;hypoth&egrave;se ancienne du &laquo; zoo galactique &raquo;, d&eacute;velopp&eacute;e en 1973 par John Ball, un astronome am&eacute;ricain. Selon lui, les e&#9760;traterrestres nous observeraient comme nous le faisons avec des animau&#9760;, peut-&ecirc;tre pour nous prot&eacute;ger ou nous &eacute;viter. Son hypoth&egrave;se e&#9760;pliquerait, selon les scientifiques, le silence de nos voisins aliens.\r\n\r\nDouglas Vakoch, astrobiologiste am&eacute;ricain et pr&eacute;sident du METI, estime qu&rsquo;il faut trouver la bonne mani&egrave;re de discuter avec les e&#9760;traterrestres pour v&eacute;rifier cette hypoth&egrave;se. &laquo; Si nous allions dans un zoo et que soudain un z&egrave;bre se tournait vers nous, nous regardait dans les yeu&#9760; et commen&ccedil;ait &agrave; marteler une s&eacute;rie de nombres premiers avec son sabot, cela &eacute;tablirait une relation radicalement diff&eacute;rente entre nous et le z&egrave;bre et nous nous sentirions obliger de r&eacute;pondre &raquo;, e&#9760;pliquait-il lundi &agrave; Paris.\r\n\r\nLire aussi : Que cache ce gigantesque laboratoire que la Chine a creus&eacute; dans une montagne ?', 1, '2024-05-16 21:52:12');

-- --------------------------------------------------------

--
-- Structure de la table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(7, 'planète ', ''),
(9, 'programme de la nuit', ''),
(10, 'programme en journée ', ''),
(11, 'nouvelle sur l\'espace', ''),
(12, 'extraterrestre ', '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin` tinyint NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(21, 1, 'admin', 'adlaladmin@gmail.com', '$2y$10$5D90c1PTRYTrCYwBYRsrrOUNxxix3wCt1Slqs1wisaqHtIQm9VvnO', '2019-11-23 14:23:30'),
(25, 0, 'user', 'adlaluser@gmail.com', '$2y$10$uZMEd7ZBVt9d4dxPSmmJo.aJjPad/AUeidFJ6crrWRLNo/tIC/Ebi', '2024-01-28 20:40:18');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
