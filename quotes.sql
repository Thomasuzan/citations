-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 10 déc. 2025 à 16:27
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `quotes`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date NOT NULL,
  `deathday` date DEFAULT NULL,
  `biography` text COLLATE utf8mb4_general_ci,
  `src` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `authors`
--

INSERT INTO `authors` (`id`, `author`, `birthday`, `deathday`, `biography`, `src`) VALUES
(1, 'Victor Hugo', '1802-02-26', '1885-06-22', '<p><strong>Victor Hugo</strong>, né le 26 février 1802 à Besançon et mort le 22 mai 1885 à Paris, est l\'un des plus grands écrivains français du XIXe siècle. Auteur prolifique, il est connu pour ses œuvres littéraires majeures, notamment <em>Les Misérables</em> (1862) et <em>Notre-Dame de Paris</em> (1831). Hugo est une figure emblématique du mouvement romantique, engagé aussi bien en poésie, en théâtre qu\'en roman. Homme politique et fervent défenseur des droits de l\'homme, il a combattu pour l\'abolition de la peine de mort et lutté contre l\'injustice sociale. Exilé pendant plusieurs années pour ses idées républicaines, il est aujourd\'hui une figure centrale de la culture française.</p>\r\n', 'https://www.francepodcasts.com/wp-content/uploads/2023/05/Victor-Hugo.jpg'),
(2, 'Marie Curie', '1867-11-07', '1934-07-04', 'Marie Curie (ou Marie Skłodowska-Curie), née le 7 novembre 1867 à Varsovie (royaume de Pologne, sous domination russe) et morte le 4 juillet 1934 à Passy (Haute-Savoie), dans le sanatorium de Sancellemoz, est une physicienne et chimiste polonaise, naturalisée française par son mariage avec le physicien Pierre Curie en 1895. Scientifique d\'exception, elle est la première femme à avoir reçu le prix Nobel et la seule femme à en avoir reçu deux. Elle reste la seule personne à avoir été récompensée dans deux domaines scientifiques distincts. Elle est également la première femme lauréate, avec son mari, de la médaille Davy de 1903 pour ses travaux sur le radium. En France, Marie Curie est la première femme à enseigner à la Sorbonne, et la première femme honorée pour ses propres mérites à reposer au Panthéon.\r\n\r\nEn 1903, les époux Curie partagent avec Henri Becquerel le prix Nobel de physique pour leurs recherches sur les radiations (radioactivité, rayonnement corpusculaire naturel). En 1911, elle obtient le prix Nobel de chimie pour ses travaux sur le polonium et le radium.\r\n\r\nUne partie de ses cahiers d\'expérience est conservée à la Bibliothèque nationale de France et accessible sous forme numérisée.', 'public/images/authors/marie_curie.jpg'),
(3, 'Nelson Mandela', '1918-07-18', '2013-12-05', '<p><strong>Nelson Mandela</strong>, né le 18 juillet 1918 à Mvezo, en Afrique du Sud, et mort le 5 décembre 2013 à Johannesburg, est une figure emblématique de la lutte contre l\'apartheid et un symbole mondial de justice et de réconciliation. Militant politique et avocat, il a rejoint l\'<abbr title=\"African National Congress\">ANC</abbr> (African National Congress) pour combattre le régime raciste de l\'apartheid. En 1962, il est arrêté et emprisonné pendant 27 ans. Libéré en 1990, Mandela a joué un rôle clé dans les négociations qui ont conduit à la fin de l\'apartheid. En 1994, il devient le premier président noir de l\'Afrique du Sud, marquant une nouvelle ère de démocratie et d\'égalité dans le pays. Prix Nobel de la paix en 1993, il a consacré sa vie à la lutte pour la liberté, la dignité et la réconciliation.</p>\r\n', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3YKAh66vKb7uyWs93uO18K2vLRiwXmyynWg&shttps://courier.unesco.org/sites/default/files/styles/paragraph_medium_desktop/article/courier/photos/nelson_mandela.jpg.webp'),
(4, 'Rosa Parks', '1913-02-04', '2005-10-24', 'Rosa Louise McCauley Parks, dite Rosa Parks [ɹoʊzə pɑɹks], née le 4 février 1913 à Tuskegee en Alabama (États-Unis) et morte le 24 octobre 2005 à Détroit dans le Michigan, est une femme afro-américaine, figure emblématique de la lutte contre la ségrégation raciale aux États-Unis, surnommée « mère du mouvement des droits civiques » par le Congrès américain.\r\n\r\nRosa Parks, 42 ans, refuse, le 1er décembre 1955, de céder sa place à un passager blanc dans l\'autobus conduit par James F. Blake. D\'autres avant elle avaient déjà protesté de la sorte pour lutter contre les ségrégations raciales aux États-Unis : Claudette Colvin, 15 ans, le 2 mars 1955, Aurelia Browder, 36 ans, en avril 1955 et Mary Louise Smith, 18 ans, le 21 octobre 1955.\r\n\r\nArrêtée par la police, elle se voit infliger une amende de 15 $. Le 5 décembre 1955, elle fait appel de ce jugement. Le pasteur Martin Luther King, avec le concours de Ralph Abernathy, pasteur de la Première église baptiste d\'Amérique, lance alors une campagne de protestation et de boycott contre la compagnie de bus qui dure 380 jours. Le 13 novembre 1956, la Cour suprême des États-Unis casse les lois ségrégationnistes dans les bus, les déclarant anticonstitutionnelles. ', 'public/images/authors/Rosa_Parks_1997.jpg'),
(5, 'Tim Berners-Lee', '1955-06-08', '0000-00-00', 'Tim Berners-Lee, né le 8 juin 1955 à Londres, est un physicien informaticien britannique. Il est le principal inventeur du World Wide Web (WWW, le Web), qu\'il conçoit au tournant des années 1990 alors qu\'il travaille à l\'Organisation européenne pour la recherche nucléaire (CERN).\r\n\r\nLe 6 août 1991, il annonce officiellement le projet WWW dans un message posté sur un forum Usenet en incitant les lecteurs à utiliser les logiciels qu\'il est en train d\'écrire.\r\n\r\nEn créant le Web, Tim Berners-Lee invente ses trois technologies fondatrices : les adresses Web sous forme d\'URL, le protocole de communication HTTP, et le langage informatique HTML.\r\n\r\nIl fut aidé à ses débuts par l\'ingénieur et informaticien belge Robert Cailliau qui cosigna notamment avec lui, en novembre 1990, un document désormais entré dans l\'Histoire et intitulé « WorldWideWeb : Proposition pour un projet hypertexte».\r\n\r\nDepuis 1994, il préside le World Wide Web Consortium (W3C), organisme qu\'il a fondé. En juillet 2004, il est fait chevalier par la reine Élisabeth II. Il est lauréat du prix Turing 2016. ', 'public/images/authors/tim_berners_lee.jpg'),
(6, 'Michel Audiard', '1920-05-15', '1985-07-27', 'Michel Audiard est né à Paris, dans le 14e arrondissement, qu’il ne quittera jamais vraiment. Il arrête les études après le certificat d’études et passe son temps à dévorer les grands classiques comme Zola et Balzac, dont il a déjà tout lu 14 ans ! Le vélo est sa seconde passion, et lors de la Seconde Guerre mondiale, il participe à l’exode sur deux roues. Il est vite ramené à Paris, où les privations de l’occupation allemande sont pour lui une épreuve insupportable. A la Libération, il rentre au journal L’étoile du soir, dans lequel il tient une chronique, puis devient critique cinéma.\r\n\r\nEn 1949, André Hunebelle lui propose de scénariser un film policier : Mission à Tanger, puis d’autres propositions suivent rapidement : Le Passe-muraille (1951) ou L\' Ennemi public N°1 (1953), et les dialogues font mouche auprès des critiques comme du public. Le style Audiard est un mélange de langage imagé entendu dans la rue ou dans les bistrots du 14e arrondissement et de sa culture littéraire. Les personnages qui \"parlent l\'Audiard\" s\'embarquent dans des tirades qui mêlent argot, humour moqueur et périphrases pour la plus grande joie de ses interprètes et du public.\r\n\r\nDans les années 50 et 60, l\'auteur est omniprésent sur les écrans, signant de son nom ou aidant anonymement un ami scénariste en panne d\'inspiration. La comédie et le film policier sont ses genres de prédilection, et ses sujets de scénarios sont régulièrement issus de ses lectures. Une rencontre va être déterminante pour sa carrière, celle de Gilles Grangier. Alors qu’ils viennent de terminer Poisson d\'avril (1964), les deux hommes travaillent ensuite sur Gas-oil (1955), qui marque la rencontre entre Audiard et Gabin.\r\n\r\nFuté, le premier comprend vite que le second est l’homme qui lui manquait pour asséner des dialogues tirés au cordeau. S’ensuit une collaboration de 17 films entre les deux hommes, tous des succès populaires comme Le Cave se rebiffe (1961) ou Un Singe en hiver (1962). Le triomphe arrive avec Les Tontons flingueurs (1963) dont Audiard signe les dialogues. Dès lors, les classiques s’enchainent : Les Barbouzes, Cent mille dollars au soleil (1964), La Métamorphose des cloportes (1965).\r\n\r\nDès lors, la réputation d\'Audiard dépasse celle des metteurs en scène pour qui il travaille, et parfois même, il les efface. Alors même qu\'il n\'est que dialoguiste, on l\'assimile parfois au scénariste du film. Sur les affiches des films auxquels il collabore dans les années 60-70, la taille de son nom dépasse parfois celui du réalisateur. L\'idée de passer derrière la caméra commence alors à l\'effleurer, et en 1968, il signe sa première réalisation : Faut pas prendre les enfants du Bon Dieu pour des canards sauvages. C’est la naissance des titres à rallonge chers à Audiard, et d’une carrière riche de huit films, dont Le Cri du cormoran le soir au-dessus des jonques et Elle boit pas, elle fume pas, elle drague pas, mais... elle cause ! (1970). Parmi ses acteurs fétiches Bernard Blier, André Pousse, Michel Serrault, Jean Carmet, Mireille Darc ou Annie Girardot. Il cessera la direction d’acteurs en 1974, après la perte d’un de ses fils, François, qui se destinait lui aussi à la réalisation.\r\n\r\nAprès ce drame, Audiard se fait plus rare, mais reprend son métier de dialoguiste au service de la nouvelle génération, notamment Jean-Paul Belmondo. Ainsi, il signe des tirades mythiques dans L\' Incorrigible, Le Corps de mon ennemi (1975), L\' Animal (1977), Le Guignolo (1980) ou Le Professionnel (1981). L’œuvre d’Audiard se fait parfois plus sombre, comme pour Garde à vue (1981), pour lequel il reçoit le César du meilleur scénariste, ou encore Mortelle randonnée (1983) de Claude Miller.\r\n\r\nAudiard écrit également. Il avait rédigé des polars dans les années 50 et rédige en 1978 \"La nuit, le jour et toutes les autres nuits\", roman un peu autobiographique, pour lequel il reçoit le prix des Quatre jurys. Il collabore à certains scénarii avec son fils Jacques , devenu lui aussi réalisateur. Son dernier scénario sera celui de La Cage aux folles III, réalisé par Georges Lautner. Michel Audiard s’éteint en 1985, à l’âge de 65 ans.', 'public/images/authors/Michel_Audiard.png'),
(8, 'Renaud', '1952-05-11', NULL, '<p><strong>Renaud Séchan</strong>, né le 11 mai 1952 à Paris, est un chanteur, auteur-compositeur et acteur français, figure incontournable de la chanson contestataire. Connu simplement sous le nom de <strong>Renaud</strong>, il a marqué des générations avec ses chansons engagées, souvent empreintes de critique sociale, de poésie et d\'humour. Avec des titres comme <em>Laisse béton</em> (1977), <em>Mistral gagnant</em> (1985), et <em>Hexagone</em> (1975), il aborde des thèmes tels que les injustices sociales, la politique, l\'amour et la nostalgie. Renaud est également un symbole de rébellion et de liberté, souvent engagé pour des causes humanitaires et écologiques. Bien que ses problèmes de santé et sa lutte contre l\'alcoolisme aient influencé sa carrière, il reste l\'une des voix les plus emblématiques de la chanson française.</p>\r\n', 'https://www.programme-tv.net/imgre/fit/~1~tel~2023~04~06~dd9e7d9d-3ef5-47fb-9d4a-441e74c0f39b.jpeg/1200x600/crop-from/top/quality/80/renaud-ce-lourd-secret-de-famille-decouvert-pendant-son-adolescence.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
CREATE TABLE IF NOT EXISTS `quotes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quote` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `explanation` text COLLATE utf8mb4_general_ci,
  `authors_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auteurs_id` (`authors_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `explanation`, `authors_id`) VALUES
(1, 'C\'est de l\'enfer des pauvres qu\'est fait le paradis des riches', '<p>Dans cette citation, <strong>Victor Hugo</strong> dénonce les inégalités sociales criantes de son époque, qui trouvent écho encore aujourd\'hui. Il exprime ici une critique acerbe du capitalisme et de la société de classes, où la richesse des uns se construit souvent sur la souffrance des autres. L\'« <em>enfer des pauvres</em> » représente les conditions de vie déplorables des plus démunis, leur exploitation, leur exclusion, tandis que le « <em>paradis des riches</em> » symbolise l\'opulence et le confort acquis au prix de cette exploitation.</p>\r\n', 1),
(2, 'La mélancolie, c\'est le bonheur d\'être triste.', '<p>Dans cette citation extraite de <em>Les Misérables</em> (1862), <strong>Victor Hugo</strong> exprime un paradoxe subtil sur la nature humaine. La mélancolie est ici décrite comme un état émotionnel complexe où la tristesse peut apporter une forme de satisfaction ou de sérénité. C\'est une tristesse douce et apaisante, qui ne plonge pas dans le désespoir, mais permet au contraire une réflexion profonde sur la vie et sur soi-même. Cette phrase montre la capacité de l\'homme à trouver une sorte de beauté ou d\'équilibre même dans la douleur.</p>\r\n', 1),
(3, 'L\'éducation est l\'arme la plus puissante qu\'on puisse utiliser pour changer le monde.', '<p>Cette citation souligne la foi profonde de <strong>Nelson Mandela</strong> dans le pouvoir de l\'éducation pour transformer les sociétés. Pour lui, l\'éducation ne se contente pas de transmettre des connaissances, elle donne aussi les moyens d\'agir, d\'émanciper les individus et de construire un monde plus juste. Mandela considérait l\'accès à l\'éducation comme un droit fondamental, et un levier essentiel pour combattre l\'injustice, l\'oppression et la pauvreté. Par cette phrase, il nous rappelle que l\'instruction est un outil puissant pour créer des changements durables et positifs.</p>\r\n', 3),
(4, 'On ne fait jamais attention à ce qui a été fait ; on ne voit que ce qu’il reste à faire.', 'Marie Curie exprime ici l’humilité des chercheurs : malgré les avancées, il reste toujours plus à explorer et à accomplir.', 2),
(5, 'Je ne perds jamais. Soit je gagne, soit j\'apprends.', '<p>Cette citation incarne la philosophie de résilience et de persévérance de <strong>Nelson Mandela</strong>. Plutôt que de voir la défaite comme un échec, il la considère comme une opportunité d\'apprendre et de grandir. Mandela a souvent fait face à des situations difficiles, que ce soit en prison ou dans sa lutte contre l\'apartheid, mais il a toujours su transformer l\'adversité en une force. Cette citation inspire à ne jamais se décourager face aux obstacles, mais à les utiliser comme des leçons pour progresser, renforçant l\'idée que chaque expérience, qu\'elle soit victorieuse ou difficile, est un moyen de s\'améliorer.</p>\r\n', 3),
(6, 'J’aimerais qu’on se souvienne de moi comme d’une personne qui voulait être libre.', 'Rosa Parks résume son geste historique : refuser l’injustice pour défendre la liberté et l’égalité.', 4),
(7, 'Dans la vie, rien n\'est à craindre, tout est à comprendre.', 'Marie Curie rappelle que la peur disparaît grâce à la connaissance. Comprendre le monde est la meilleure manière de surmonter les difficultés.', 2),
(10, 'Vous devez ne jamais avoir peur de ce que vous faites quand ce que vous faites est juste.', 'Un message de courage moral : agir pour le bien n\'est jamais une erreur, même si cela demande de l’audace.', 4),
(11, 'The Web does not just connect machines, it connects people.', 'Le créateur du Web rappelle que sa vision était humaniste : Internet est avant tout un outil pour relier les individus.', 5),
(12, 'The Web is more a social creation than a technical one.', 'Il souligne que le Web est né d’un besoin de collaboration et de partage d’informations, pas seulement d’innovation technologique.', 5),
(13, 'Un intellectuel assis va moins loin qu’un con qui marche.', 'Derrière l’humour acerbe, Audiard critique l’inaction : les idées ne valent rien sans initiative et courage.', 6),
(14, 'Heureux soient les fêlés, car ils laisseront passer la lumière.', 'Audiard valorise les personnes atypiques : leurs défauts ou leurs failles révèlent souvent leur génie ou leur humanité.', 6),
(15, 'Être né sous l\'signe de l\'Hexagone, c\'est pas c\'qu\'on fait d\'mieux en ce moment.', '<p>Extrait de sa chanson <em>Hexagone</em> (1975), cette phrase est une critique acerbe de la société française des années 1970. <strong>Renaud</strong> y dénonce l\'hypocrisie, le conformisme et le chauvinisme de la France. \"L\'Hexagone\" désigne la forme géographique de la France, et Renaud utilise cette métaphore pour exprimer sa déception face aux maux de la société, comme la xénophobie, les injustices et l’indifférence face aux problèmes sociaux. Cette chanson reste emblématique de l\'esprit contestataire de l\'artiste.</p>\r\n', 8);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(320) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`lastname`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `mail`, `password`, `token`, `created_at`) VALUES
(1, 'DAvid', 'Legrand', 'wawawaformation@lesacteursduweb.fr', '$2y$10$S7ab8bDliH5.IxYeZIa2tOzhRwJ5W.GPqZ/NKNYj9N.48KxnDvX1G', NULL, '2024-09-29 07:43:03'),
(2, 'Thomas', 'UZAN', 'thomas_uzan@hotmail.fr', '$2y$10$ZEbpj6STyG2OD0RbZISw5.U7.doK3Dy1dSD3b6abXgobfiQZqGB2i', NULL, '2025-03-10 23:27:33');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `quotes`
--
ALTER TABLE `quotes`
  ADD CONSTRAINT `quotes_ibfk_1` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
