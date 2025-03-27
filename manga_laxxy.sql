-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 12:38
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `manga_laxxy`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date_naissance` int(11) NOT NULL,
  `id_manga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `date_naissance`, `id_manga`) VALUES
(1, 'Kentarou Miura', 1966, 1),
(2, 'Hirohiko Araki', 1960, 2),
(3, 'Eiji Yoshikawa', 1892, 3),
(4, 'Eiichiro Oda', 1975, 4),
(5, 'Noki Urasawa', 1960, 5);

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `annee_publi` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`id`, `titre`, `annee_publi`, `note`, `description`) VALUES
(1, 'Berserk', 1989, 9, 'Guts, a former mercenary now known as the Black Swordsman, is out for revenge. After a tumultuous childhood, he finally finds someone he respects and believes he can trust, only to have everything fall apart when this person takes away everything important to Guts for the purpose of fulfilling his own desires. Now marked for death, Guts becomes condemned to a fate in which he is relentlessly pursued by demonic beings.'),
(2, 'JoJo no Kimyou na Bouken Part 7: Steel Ball Run', 2004, 9, 'In the American Old West, the world\'s greatest race is about to begin. Thousands line up in San Diego to travel over six thousand kilometers for a chance to win the grand prize of fifty million dollars. With the era of the horse reaching its end, contestants are allowed to use any kind of vehicle they wish. Competitors will have to endure grueling conditions, traveling up to a hundred kilometers a day through uncharted wastelands. The Steel Ball Run is truly a one-of-a-kind event.'),
(3, 'Vagabond', 1998, 9, 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man in both his appearance and his actions. His aggressive nature has won him the collective reproach and fear of his village, leading him and his best friend, Matahachi Honiden, to run away in search of something grander than provincial life. The pair enlist in the Toyotomi army, yearning for glory—but when the Toyotomi suffer a crushing defeat at the hands of the Tokugawa Clan at the Battle of Sekigahara, the friends barely make it out alive.'),
(4, 'One Piece', 1997, 9, 'Gol D. Roger, a man referred to as the King of the Pirates, is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the King of the Pirates is executed and the Great Age of Pirates begins.'),
(5, 'Monster', 1994, 9, 'Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice: to operate on Johan Liebert, an orphan boy on the verge of death, or on the mayor of Düsseldorf. In the end, Tenma decides to gamble his reputation by saving Johan, effectively leaving the mayor for dead.');

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `id_manga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`id`, `nom`, `description`, `id_manga`) VALUES
(1, 'Guts', 'Guts is the protagonist of the story. He is a tall, muscular man with a huge sword called the Dragon Slayer, a prosthetic left forearm that has a magnetic grip which also conceals a cannon. Guts is a tragic hero; he is born as one who may be able to struggle against Causality, but seemingly unable to affect it on a large scale.', 1),
(2, 'Griffith', 'Griffith, is the charismatic leader and founder of the Band of The Hawk.\r\n\r\nExtraordinarily charismatic, intelligent, and handsome, his skill with his sabre and tactics gives him and his band the reputation of invincibility, allowing him an opportunity to gain the favor of the Midland King during Midland\'s century long war with the Empire of Chuder.', 1),
(3, 'Gyro Zeppeli', 'Gyro has a cocky and flamboyant personality, appearing to have a high opinion of himself. However, he can be driven by emotions for other people and become realistic and serious when a problem presents itself. Like most Manga archetypes, Gyro is incredibly intelligent when he needs to be. His most distinguishable body features are his long hair, western hat and his metal teeth which have \"GO! GO! ZEPPELI\" displayed on them, revealed whenever he smiles at someone. His signature laugh/chuckle is \"Nyo ho ho ho~.\"', 2),
(4, 'Johnny Joestar', 'Johnny Joestar, also known as \"Joe Kid\" or \"JoJo\", was a racing prodigy. However, when waiting in line for a play, the girl he was with convinced him to cut to the front of the line and bribe the bouncers to throw out the youth in the front of the line, who had been waiting through the night. The youth shot Johnny, resulting in his being paralyzed from the waist down and sent to a hospital, where he was physically abused. Having lost all the friends and respect he had earned as a jockey, no one visited him during his stay in the hospital.', 2),
(5, 'Musashi Miyamoto', 'Miyamoto Musashi (1584 – 1645) or Shinmen Takezo (his birth name) at a very young age embarked on a journey to become the strongest samurai only after being exiled from his own village. Musashi is the son of a samurai family, whose father was one of the most renowned samurai across the nation. One of the foremost reasons that drives Musashi to excel in sword-fighting is his desire to overcome his father due to the harsh treatment Musashi received during his childhood because of his incapability of rebelling.', 3),
(6, 'Kojirou Sasaki', 'The legendary archrival of Miyamoto Musashi. Raised by Kanemaki Jisai, after he is found as a baby in casket, floating on the ocean.\r\n\r\nHe develops an intense attachment to swords and fencing at an early age, possessing an almost preternatural ability to react to his opponents\' moves.\r\n\r\nKojirou is deaf and mute, though still literate. His personality is very playful, almost child-like. Ittousai has also commented on the possibility that Kojirou\'s eyes have become better developed to compensate for his lack of hearing.\r\n\r\nKojirou is renowned for his \"Tsubame Gaeshi\" (Turning Swallow Cut) technique, inspired by the movement of a swallow in flight.', 3),
(7, 'Luffy Monkey D.', 'Luffy is the captain of the Straw Hat Pirates and is best friends with all of them and values them over all else. At first glance, Luffy does not appear to be very intelligent, often seeing things in a childish manner and can easily be amazed by the simplest things. However, because he views the world in a straightforward and simple manner, he is occasionally the only person who can see past the events and see what should be done.\r\n\r\nLuffy seems to have an unstoppable appetite, a characteristic that is common to the Japanese archetype of the (at times simple-minded) young male hero/adventurer with a heart of gold; perhaps the hunger more so in Luffy\'s case due to having an elastic stomach. Luffy is also another one of the several characters given the middle initial \"D.\"', 4),
(8, 'Zoro Roronoa', 'Zoro was the first crew member to be recruited by Luffy. Zoro is a skilled swordsman who fights with his own unique sword style known as santoryu (three katana fighting style). This is achieved by using one katana in each hand and another in his mouth. He is also seen fighting with only one or two swords. When in a serious fight he ties his bandana, normally tied on the arm, on his head.\r\n\r\nThough not a samurai, he appears to maintain a certain degree of bushido, and is frequently mistaken for one. Unlike Luffy and most of the other Straw Hat pirates, Zoro has been known to kill his opponents if he has to, though never in cold blood.', 4),
(9, 'Johan Liebert', 'Johan Liebert is the namesake \"monster\" of the story and the mystery of his past is the focus of the plot. He has been called a monster, the next Adolf Hitler and even the devil himself. Johan Liebert was shot in the head at a young age but saved from death by Dr. Tenma. Because of this, he is very grateful to Dr. Tenma. He has spent portions of his life in different places under different aliases and possesses an extraordinary level of charisma and intelligence. He uses his gifts to cruelly manipulate and corrupt others, often with no apparent end other than to cause suffering and destruction. His original goal, as he stated when he was young, is to be the last one standing at the end of the world, although towards the end he decides upon a different fate. One of the themes of Monster is how individuals are capable of transforming into monsters; Johan often acts as both a direct and indirect catalyst for this transformation. Johan also shows strong attachment to his twin sister, Nina Fortner/Anna Liebert and refuses to leave her behind.', 5),
(10, 'Kenzou Tenma', 'Doctor Kenzou Tenma is a Japanese neurosurgeon working at the Eisler Memorial Hospital in Düsseldorf. At the beginning of Monster he is favored by the department director for his prodigious surgical skill. After a crisis of conscience, he chooses to save the life of a young boy instead of the city\'s mayor, and is unjustly demoted as a result; he then becomes suspect for murder when the department director and several prominent doctors are killed weeks later. It is only after nine years that Dr. Tenma learns the perpetrator of the hospital murders is none other than the boy he saved years before, Johan Liebert. Plagued by guilt, he resolves to find Johan and end the life of this \"monster\" he feels responsible for creating. Despite his mission, Dr. Tenma is a humanitarian who genuinely cares about the lives of others. These acts of kindness make him very influential with the people he meets.', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auteur`
--
ALTER TABLE `auteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `manga`
--
ALTER TABLE `manga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
