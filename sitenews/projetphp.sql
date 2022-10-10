-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 04 jan. 2021 à 14:36
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetphp`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `login` varchar(15) NOT NULL,
  `mdp` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrator`
--

INSERT INTO `administrator` (`login`, `mdp`) VALUES
('Theo', '$2y$10$fhUPxiX260f8C1hRYd20lexKeVx.eYjfJO1uYAvlrMOltP9RkPobS');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `Titre` varchar(71) DEFAULT NULL,
  `DatePub` date NOT NULL,
  `Texte` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL,
  `AuteurAttach` varchar(15) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `AuAttach` (`AuteurAttach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`Titre`, `DatePub`, `Texte`, `id`, `AuteurAttach`) VALUES
('Sa compagne s’enfuit en sautant par la fenêtre, il tue le chat', '2020-11-04', '\r\n\r\n\r\nQuand il a ouvert aux policiers, il avait encore le couteau à la main et un taux d’alcoolémie important. Pendant son délire, il avait menacé de tuer le chat de sa compagne. Les policiers ont retrouvé le cadavre de l’animal, au pied de l’immeuble, la tête écrasée.\r\n\r\n« L’épisode du chat n’est pas anodin, a insisté l’avocate de la compagne. Que lui serait-il arrivé si elle n’était pas sortie par la fenêtre ? C’est une petite dame toute fluette, sous curatelle depuis quinze ans, qui ne sait ni lire ni écrire. Aujourd’hui, elle veut la paix, ne plus le voir, ne plus être frappée et insultée. »\r\n\r\nLe procureur pense et dit la même chose : « Il s’est vengé sur le chat de ce qu’il n’a pas pu faire à madame. Elle a bien fait de sauter par la fenêtre. Il est profondément dangereux. Il n’a pas d’avocat mais je n’ai aucune excuse à lui trouver. Il n’est pas sur la même planète que nous. »\r\n\r\nEffectivement, le prévenu a souvent fait répéter les magistrats, ne comprenant pas toujours ce qu’ils lui voulaient. Lui s’annonce « innocent », accuse sa compagne de lui voler de l’argent, dénonce la mauvaise réputation du quartier pour expliquer la perte de la garde de son enfant... « Ce n’est jamais de votre faute », résume en soupirant le président.', 1, 'Theo'),
('Fort Boyard : Un candidat oublié dans la cellule d’une épreuve ', '2020-12-07', 'Le visage émacié, amaigri, Aymeric Ledeb revient de loin. L’homme, actuellement hospitalisé au CHU de la Rochelle, n’a pas encore raconté l’intégralité de son histoire aux enquêteurs mais on commence peu à peu à comprendre ce qui s’est passé. « C’était lors d’une épreuve de l’émission enregistrée sur le Fort. Il devait trouver un clé dans une série de jarres remplies de souris, insectes et autres matières visqueuses. Il n’a hélas pas pu terminer à temps et il est resté prisonnier comme le veut la règle », a expliqué un gendarme. Pour une raison jusqu’ici inexpliquée, le reste de ses coéquipiers va alors l’oublier dans sa cellule après la fin de l’émission. « Chacun a pensé qu’il était rentré par ses propres moyens, ou que vexé d’avoir échoué, il ne voulait pas reparler aux autres membres de l’équipe » raconte Ingrid, sa coéquipière de l’époque.\r\n\r\nL’enregistrement terminé, toutes les équipes regagnent ensuite le continent, laissant Aymeric à son triste sort. « L’épreuve a été supprimée lors de l’émission suivante et nous avons cessé d’utiliser cette partie du Fort pour les tournages. Personne n’est allé voir dans cette cellule, qui a été oubliée ensuite. ', 3, 'Theo'),
('Selon une étude scientifique, Les études scientifique sont pas fiables', '2020-11-08', 'Des protocoles identiques, des échantillons similaires, mais des résultats différents. Une équipe de 270 chercheurs a tenté de reproduire des études de psychologie. Dans à peine 40% des cas ils sont arrivés aux mêmes résultats que les recherches originales, selon les conclusions de ce projet, baptisé «Reproducibility Project», publiées jeudi dans la revue Science.\r\n\r\nLes études en question avaient été publiées initialement en 2008 dans trois revues scientifiques de référence (Psychological Science, the Journal of Personality and Social Psychology, et the Journal of Experimental Psychology), et traitaient aussi bien de comportements sociaux, de la perception ou de la mémoire.\r\nAttention, le «Reproducibility Project» ne conclut pas pour autant que les études concernées sont erronnées, simplement que certains résultats sont exagérés. Très peu d’études ont d’ailleurs été contredites. Leurs résultats étaient simplement plus faibles, moins fiables, par exemple parce que les échantillons étaient trop petits.\r\nComment expliquer un tel décalage entre les études originales et leurs reproductions ? Le nombre de publications en plein boom, et la pression qui pèse sur les scientifiques qui cherchent de plus en plus à obtenir des résultats choc, plus susceptibles d’être repris dans les médias grand public, note le New York Times. Les chercheurs remettent en cause depuis quelques années cette course effrénée à la publication et à l’impact factor, indice qui mesure la popularité d’un article par le nombre de ses citations par d’autres chercheurs, expliquait Slate il y a quelques mois.', 5, 'Theo'),
('Calais : Un rockeur découvre un migrant dans son étui de guitare', '2020-12-28', 'Les « Wille and the Bandits », un groupe de rock anglais a fait une surprenante découverte alors qu’il s’était arrêté dans une station-service près de Calais.\r\n\r\nWille Edwards, le leader du groupe, entend des bruits et voit du mouvement dans le coffre du véhicule.\r\n\r\nC’est alors qu’il découvre un migrant cherchant à se cacher dans un étui à guitare. Sauf que sa tête dépassait…\r\n\r\nLe musicien raconte qu’il s’est excusé car il ne pouvait rien faire pour lui.', 6, 'Theo');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `Texte` varchar(300) CHARACTER SET utf8 NOT NULL,
  `Pseudo` varchar(15) CHARACTER SET utf8 NOT NULL,
  `ArticleAttache` int(11) NOT NULL,
  KEY `ArtAttach` (`ArticleAttache`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`Texte`, `Pseudo`, `ArticleAttache`) VALUES
('C&#39;est vraiment inintéressant cet article', 'Thomas', 4),
('Whaou je m&#39;y attendais pas ', 'Lucas', 4),
('Trop drôle cet article ', 'Lucas', 6),
('Mdr trop des barres ', 'Sébastien', 6),
('C&#39;est vraiment trop bien ce site', 'Félix', 3),
('Il ont bien raison sur ce coup là', 'Théo', 2),
('J&#39;en était sur c&#39;est vraiment des escrocs', 'Alexandre ', 5),

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `AuAttach` FOREIGN KEY (`AuteurAttach`) REFERENCES `administrator` (`login`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `ArtAttach` FOREIGN KEY (`ArticleAttache`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
