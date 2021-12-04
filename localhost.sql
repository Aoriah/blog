-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 04 déc. 2021 à 16:10
-- Version du serveur :  10.3.31-MariaDB-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `petit` text NOT NULL,
  `content` text NOT NULL,
  `date de publication` date NOT NULL DEFAULT current_timestamp(),
  `auteur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `image`, `title`, `petit`, `content`, `date de publication`, `auteur_id`) VALUES
(3, 'img/toradora.jpg', 'Toradora', 'Malgré sa douce personnalité, Ryuji Takasu fait peur.', 'Malgré sa douce personnalité, Ryuji Takasu fait peur à toutes les personnes qu\'il rencontre à cause de son regard d\'assassin, il a donc beaucoup de mal à s\'intégrer et à se faire des amis. C\'est alors, qu\'à la rentrée, il se retrouve dans la même classe que son meilleur ami, Yusaku Kitamura. Il est l\'un des seuls à ne pas le juger par son physique. Mais, il se retrouve aussi avec la fille qu\'il aime, Minori Kushieda, et la meilleure amie de celle-ci, Taïga Aisaka. Enfin, on apprend que Taïga est amoureuse de Yusaku. Donc cette dernière et Ryuji vont se serrer les coudes. C\'est ainsi que vont naître des relations auxquelles on ne s\'attendait pas.', '2021-11-03', 1),
(4, 'img/konosuba.jpg', 'Konosuba', 'La vie de Satou Kazuma, un hikikomori aimant les jeux, se termine bien trop tôt.', 'La vie de Satou Kazuma, un hikikomori aimant les jeux, se termine bien trop tôt, dû à un accident de la route... Alors que ce dernier est décédé, une déesse nommée Aqua apparaît devant lui et lui propose de se réincarner dans l\'au delà, prenant l\'aspect d\'un monde fantastique de jeu vidéo. Après s\'être bien adapté à ce monde et vivant avec une petite équipe dont fait partie la déesse Aqua, une magicienne du nom de Megumin et une paladin masochiste, Kazuma est chargé d\'une mission : vaincre le roi-démon. Cependant, en raison de l\'incapacité de son groupe à réussir des quêtes, ce dernier va très vite renoncer à cette idée et tenter de profiter de ce monde si parfait à ses yeux. Malheureusement pour lui, leurs chemins vont très vite croiser ceux des généraux du roi démon, et c\'est ainsi que les galères vont commencer.', '2021-11-03', 1),
(5, 'img/berserk.jpg', 'Berserk', 'Dans un monde médiéval et marqué par un passé difficile, erre un mercenaire solitaire.ieuryeriue', 'Dans un monde médiéval et marqué par un passé difficile, erre un mercenaire solitaire nommé Guts, décidé à être seul maître de son destin. Autrefois contraint par un pari perdu à rejoindre les Faucons, une troupe de mercenaires dirigés par Griffith, Guts fut acteur de nombreux combats sanglants et témoin de sombres intrigues politiques. Mais il réalisa soudain que la fatalité n\'existe pas et qu\'il pouvait reprendre sa liberté s\'il le désirait vraiment...\r\nMais un mal le traque sans relâche.', '2021-11-03', 2),
(7, 'img/Albator.jpg', 'Albator', 'En 2977, la planète Terre est peu à peu envahie par une race d\'extra-terrestres. ', 'En 2977, la planète Terre est peu à peu envahie par une race d\'extra-terrestres. Le capitaine corsaire Albator et son équipage luttent contre cette menace dont l\'humanité n\'a pas réellement conscience.', '2021-12-21', 2),
(8, 'img/apfttu.jpg', 'A place further than the universe', 'Shirase Kobuchizawa, lycéenne de deuxième année, est la fille de la célèbre Takako Kobuchizawa, une exploratrice ayant disparue lors de sa dernière expédition en Antarctique.', 'Shirase Kobuchizawa, lycéenne de deuxième année, est la fille de la célèbre Takako Kobuchizawa, une exploratrice ayant disparue lors de sa dernière expédition en Antarctique.\r\n\r\nPersuadée que sa mère est vivante et qu\'elle l\'attend sur place, Shirase met tout en oeuvre pour intégrer une expédition constituée de civils, embarquant trois autres jeunes filles dans l\'aventure.', '2021-12-09', 1),
(9, 'img/bofuri.jpg', 'Bofuri', 'A la demande de sa meilleure amie Risa Shiramine, Kaede Honjô accepte d\'essayer le nouveau VRMMORPG à la mode : NewWorld Online.', 'A la demande de sa meilleure amie Risa Shiramine, Kaede Honjô accepte d\'essayer le nouveau VRMMORPG à la mode : NewWorld Online.\r\n\r\nTotalement novice, elle crée son avatar, Maple, et répartie ses statistiques un peu au feeling ; elle met tous ses points de compétences en vitalité car elle déteste la douleur, même virtuelle.\r\nDotée ainsi d\'une résistance extraordinaire, d\'une logique bien à elle, et d\'une chance incroyable, Maple va peu à peu gagner en réputation dans le jeu pour son style unique et inimitable.', '2021-12-29', 1),
(10, 'img/Cobra.jpg', 'Cobra', 'Johnson, simple employé de bureau, ne rêve que d\'aventure.\r\nUn jour il se rend chez la société Dream Corp., qui vend des rêves, et demande un rêve d\'aventure artificielle.', 'Johnson, simple employé de bureau, ne rêve que d\'aventure.\r\nUn jour il se rend chez la société Dream Corp., qui vend des rêves, et demande un rêve d\'aventure artificielle. Il rêve alors qu\'il est Cobra, un aventurier légendaire disparu depuis plusieurs années, et qui porte le psychogun (plus connu sous le nom de rayon Delta, en France), une arme surpuissante, à la place de son bras gauche.\r\nMais est-ce vraiment un rêve?...\r\n\r\nSi Cobra avait passé une phase dépressive avant de se refaire le visage, il est maintenant dans une forme formidable. Il a retrouvé sa mémoire et repart combattre les pirates de l\'espace.\r\n\r\nPour le personnage de Cobra, Buichi Terasawa s\'est inspiré de Jean-Paul Belmondo. Le dessinateur, étant un fan de l\'acteur français, n\'a pas seulement rendu les traits physiques de Bébél à Cobra. Il a aussi donné à son personnage certains traits de son caractère dans ses films : charmeur, toujours prêt à emballer une jolie fille, garde toujours un sang-froid teinté d\'ironie dans toute situation, un peu grande gueule aussi.\r\n\r\nCette histoire d\'un homme ordinaire, qui retrouve la mémoire de son passé d\'aventurier suite à un rêve simulé, semble inspiré de la nouvelle We Can Remember It For You Wholesale de Philip K. Dick, qui a également été adaptée dans le film Total Recall.', '2021-11-16', 2),
(11, 'img/CodeGeass.jpg', 'code geass', 'Le 10 juin 2010 du calendrier impérial, le Nouvel Empire de Britannia a écrasé les forces japonaises et a conquis le pays en moins d\'un mois grâce à ses mechas nommés Knightmare.', 'Le 10 juin 2010 du calendrier impérial, le Nouvel Empire de Britannia a écrasé les forces japonaises et a conquis le pays en moins d\'un mois grâce à ses mechas nommés Knightmare. Le Japon a perdu sa liberté et a été renommé Zone 11 tandis que les japonais ont perdu leur identité et sont appelés \"Elevens\". Ces derniers sont forcés de vivre dans des ghettos tandis que les colons britanniens occupent la majeure partie du territoire. Pourtant, des mouvements rebelles naissent et les nationalistes japonais continuent la lutte pour l\'indépendance.\r\n\r\nUn jeune homme nommé Lelouch s\'est juré de détruire l\'empire de Britannia depuis que son père, l\'empereur lui-même, n\'a rien fait pour pourchasser les terroristes qui ont tué sa mère et estropié sa jeune sœur. Sept ans plus tard, lors d\'une altercation entre les deux camps, il rencontre un groupe de rebelles Elevens qui ont volé un secret militaire : une mystérieuse jeune fille. En entrant en contact avec elle, Lelouch obtient le Geass, un pouvoir qui lui permet de contrôler la pensée de toutes les personnes qui croisent son regard, mais qui ne fonctionne qu\'une seule fois sur chacune d\'elles. Grâce à ce pouvoir, Lelouch va pouvoir mener le combat qu\'il a toujours voulu contre Brittania et poursuivre ses deux rêves : venger sa mère et créer un monde où sa sœur pourra vivre en paix.', '2021-10-13', 1),
(12, 'img/demonslayer.jpg', 'Demon slayer', 'Depuis les temps anciens, il existe des rumeurs concernant des démons mangeurs d\'hommes qui se cachent dans les bois.', 'Depuis les temps anciens, il existe des rumeurs concernant des démons mangeurs d\'hommes qui se cachent dans les bois. Pour cette raison, les citadins locaux ne s\'y aventurent jamais la nuit. La légende raconte aussi qu\'un tueur de démons déambule la nuit, chassant ces démons assoiffés de sang. Pour le jeune Tanjirou, ces rumeurs vont bientôt devenir sa dure réalité ...\r\n\r\nDepuis la mort de son père, Tanjirou a pris sur lui pour subvenir aux besoins de sa famille. Malgré cette tragédie, ils réussissent à trouver un peu de bonheur au quotidien.\r\n\r\nCependant, ce peu de bonheur se retrouve détruit le jour où Tanjirou découvre que sa famille s\'est faite massacrer et que la seule survivante, sa sœur Nezuko, est devenue un démon. À sa grande surprise, Nezuko montre encore des signes d\'émotion et de pensées humaines. Ainsi, commence la dure tâche de Tanjirou, celle de combattre les démons et de faire redevenir sa sœur humaine.', '2021-09-22', 1),
(13, 'img/86.jpg', 'Eighty-six ', 'La République de San Magnolia est un vaste territoire constitué de 85 districts. Constamment attaqué par un Empire voisin et ses mystérieuses armes baptisées \"Legion\", la République a décidé de contre-attaquer et est finalement parvenue à repousser la menace grâce au développement d\'armes similaires.', 'Basé sur le roman 86 de Asato Asato.\r\n\r\nLa République de San Magnolia est un vaste territoire constitué de 85 districts. Constamment attaqué par un Empire voisin et ses mystérieuses armes baptisées \"Legion\", la République a décidé de contre-attaquer et est finalement parvenue à repousser la menace grâce au développement d\'armes similaires. C\'est du moins ainsi que sont officiellement présentées les choses.\r\n\r\nOfficiellement, le 86è district n\'existe pas. Pourtant, c\'est grâce aux combattants qui s\'y trouvent, parmi lesquels l\'escadron Spearhead, dirigé par Shin et commandé par Lena, que la République a retrouvé un semblant de paix.', '2021-09-14', 1),
(14, 'img/fateapocrypha.jpg', 'Fate - Apocrypha', 'L\'histoire de Fate/Apocrypha se passe dans un monde alternatif de Fate/stay night, où le Saint Graal a disparu depuis plusieurs années après la Troisième Guerre du Graal.', 'L\'histoire de Fate/Apocrypha se passe dans un monde alternatif de Fate/stay night, où le Saint Graal a disparu depuis plusieurs années après la Troisième Guerre du Graal.\r\n\r\nDans les années 2000, le groupe prétendant avoir le Graal, Yggdmillennia, déclare la fin de L\'Association des Mages.\r\n\r\nL\'Association riposte en envoyant une cinquantaine de mages, cependant, il se font tous abattre par un Servant Noir se faisant appeler Lancer. Mais, un survivant parvient à activer le système de secours du Saint Graal, invoquant ainsi quatorze Servants au total.\r\n\r\nCeci marque alors le début d\'une Grande Guerre du Saint Graal dans la ville de Trifas, où deux factions s\'affrontent : la faction Noire, principalement composée des membres du groupe Yggdramillennia, et la faction Rouge, composée des membres de L\'Association des Mages, excepté ceux de l\'église. Le Saint Graal lui-même agira en tant que médiateur de cette Grande Guerre.', '2021-08-23', 1),
(15, 'img/GuiltyCrown.jpg', 'Guilty-crown', 'Nous sommes en 2039, à Tokyo. Dix longues années se sont écoulées depuis la désastreuse épidémie d\'un virus non identifié nommé \"Apocalypse\". Cet évènement est connu sous le nom de \"Lost Christmas\". A présent, le Japon est sous le contrôle d\'une multinationale appelée GHQ.', 'Nous sommes en 2039, à Tokyo. Dix longues années se sont écoulées depuis la désastreuse épidémie d\'un virus non identifié nommé \"Apocalypse\". Cet évènement est connu sous le nom de \"Lost Christmas\". A présent, le Japon est sous le contrôle d\'une multinationale appelée GHQ.\r\n\r\nOuma Shu est un jeune lycéen de 17 ans d\'apparence normale, cependant sa vie va changer du tout au tout lorsqu\'il rencontre la délicieuse et dévouée Yuzuriha Inori, membre d\'un groupe d\'une guérilla connue sous le nom de \"Undertaker\" dont les membres, pilotant des armures Mécha, résistent à l\'autorité mis en place et se battent contre le gouvernement.\r\n\r\nCelle-ci demande à Ouma Shu de livrer quelque chose au chef des \"Undertaker\", mais le précieux objet va se briser, conférant le \"pouvoir du Roi\" à Ouma Shu\r\n\r\nIl est alors temps pour Shu de prendre ses responsabilités.', '2021-08-18', 1),
(16, 'img/horimiya.jpg', 'Horimiya', 'Populaire et admirée par tous les garçons, Kyôko Hori, surnommé Hori, semble être une jeune fille ordinaire. Mais la vrai Hori, en dehors du lycée, est loin de là. Comme ses parents, obsédés par le travail, ne viennent à la maison que rarement, c\'est elle qui s\'occupe de tout pendant leur absence.', 'Populaire et admirée par tous les garçons, Kyôko Hori, surnommé Hori, semble être une jeune fille ordinaire. Mais la vrai Hori, en dehors du lycée, est loin de là. Comme ses parents, obsédés par le travail, ne viennent à la maison que rarement, c\'est elle qui s\'occupe de tout pendant leur absence. Elle partage son temps entre devoirs scolaires, tâches ménagères et son petit frère. Elle n\'a donc pas de temps pour une vie sociale d\'adolescente.\r\n\r\nIzumi Miyamura est un camarade de classe de Hori. Au lycée, il donne l\'impression d\'être un otaku avec ses grandes lunettes, ses longs cheveux, son style vestimentaire et sa nature timide et calme. Mais lui aussi nous prouve que les apparences sont trompeuses. En effet, le vrai Izumi est un garçon gentil et serviable, qui adore les piercings et les tatouages.\r\nQue va-t-il arriver lorsque chacun de ces deux lycéens découvre la face cachée de l\'autre ?', '2021-06-16', 1),
(17, 'img/kiminonawa.jpg', 'Kimi no na wa', 'Mitsuha est une lycéenne qui réside dans une petite ville située dans les montagnes. Elle vit aux côtés de sa petite soeur, sa grand-mère ainsi que son père, bien que ce dernier ne soit jamais à la maison à cause de son travail de maire.', 'Mitsuha est une lycéenne qui réside dans une petite ville située dans les montagnes. Elle vit aux côtés de sa petite soeur, sa grand-mère ainsi que son père, bien que ce dernier ne soit jamais à la maison à cause de son travail de maire. En réalité, sa vie ne lui convient pas et elle souhaite pouvoir vivre à Tokyo.\r\n\r\nTaki est un lycéen qui habite à Tokyo et qui adore l\'architecture et l\'art. Il vit une vie normale d\'étudiant entouré d\'amis et travaille même dans un petit restaurant italien. Mais un jour, il fait un rêve dans lequel il est dans la peau d\'une jeune fille qui vit dans une ville en montagne. Mitsuha, quant à elle, fait également un rêve dans lequel elle est dans un corps d\'un garçon tokyoïte.\r\n\r\nQuel est le secret qui se cache derrière ces étranges rêves qui échangent la vie de ces deux jeunes gens ?', '2021-08-19', 1),
(19, 'img/mushokutensei.jpg', 'Mushoku tensei', 'L\'histoire nous entraine dans le quotidien d\'un NEET qui vient d\'être chassé de chez ses parents. Ayant le moral au plus bas, il pense au suicide. Jusqu\'au jour où il aperçoit une ancienne camarade de classe sur le point de se faire renverser, et d\'un geste héroïque, il l\'a pousse et se fait renverser à sa place.', 'L\'histoire nous entraine dans le quotidien d\'un NEET qui vient d\'être chassé de chez ses parents. Ayant le moral au plus bas, il pense au suicide. Jusqu\'au jour où il aperçoit une ancienne camarade de classe sur le point de se faire renverser, et d\'un geste héroïque, il l\'a pousse et se fait renverser à sa place. Suite à ça, il meurt sur le coup puis se retrouve réincarner dans un monde fantastique.\r\n\r\nIl se réincarne dans le corps d\'un enfant du nom de Rudeus Greyrat. Il est le fils d\'un épéiste nommé Paul Greyrat et d\'une ancienne aventurière nommée Zenith Greyrat.\r\n\r\nBien décidé à faire quelque chose de sa nouvelle vie en tant que Rudeus, il va essayer de devenir le plus grand magicien de l\'histoire.', '2021-07-29', 1),
(20, 'img/naruto.jpg', 'Naruto', 'L\'histoire commence pendant l\'adolescence de Naruto, vers ses douze ans. Orphelin, éternel cancre et grand farceur, il fait toutes les bêtises possibles pour se faire remarquer. Son rêve : devenir Hokage afin d\'être reconnu par les habitants de son village.', 'Il y a de cela douze ans, Kyūbi, un démon ayant la forme d\'un renard à neuf queues, entreprit la destruction du village de Konoha, mais le quatrième Hokage neutralisa ce démon en le scellant dans le corps d\'un nouveau-né : Naruto Uzumaki. Le quatrième Hokage se sacrifia ainsi pour sauver le village de Konoha.\r\n\r\nL\'histoire commence pendant l\'adolescence de Naruto, vers ses douze ans. Orphelin, éternel cancre et grand farceur, il fait toutes les bêtises possibles pour se faire remarquer. Son rêve : devenir Hokage afin d\'être reconnu par les habitants de son village. En effet, le démon scellé en lui a attisé la crainte et le mépris des autres villageois, qui, avec le temps, ne font plus de différence entre le Kyūbi et Naruto. Malgré cela, Naruto s\'entraîne dur afin de devenir genin, le premier niveau chez les ninjas.', '2021-06-23', 2),
(21, 'img/nogamenolife.jpg', 'No game no life', 'Sora et Shiro sont deux frère et sœur hikikomori. L\'hikikomori désigne une pathologie psycho-sociale caractérisant les personnes (souvent des adolescents) qui vivent coupées du monde en restant cloîtrées chez elles, refusant toute communication. Dans le cas des deux protagonistes, leur condition vient de leur vision du monde réel, qui se résume à un jeu guère intéressant.', 'Sora et Shiro sont deux frère et sœur hikikomori. L\'hikikomori désigne une pathologie psycho-sociale caractérisant les personnes (souvent des adolescents) qui vivent coupées du monde en restant cloîtrées chez elles, refusant toute communication. Dans le cas des deux protagonistes, leur condition vient de leur vision du monde réel, qui se résume à un jeu guère intéressant.\r\n\r\nEnsemble, ils forment un duo de joueurs invaincus, véritable légende urbaine. Un jour, un garçon se qualifiant de \"Dieu\" les transporte dans un monde fantastique, où il a interdit toute forme de violence entre les 16 races différentes y vivant. À la place, toute décision ou conflit est réglé par le jeu. Les deux adolescents y sont convoqués car ils pourraient bien être les sauveurs de l\'humanité, la race Imanity qui, classée dernière parmi les 16 races, se retrouve confinée dans leur seule et unique cité restante. Durant leur quête pour sauver l\'Imanity, ils rencontrent Stephanie Dola : reconnue comme la petite fille de l\'ancien roi considéré comme fou, Jibril : une Flügel qui est l\'une des races les plus puissantes et Kurami Zell : une ancienne ennemie devenue une alliée.', '2021-07-30', 1),
(22, 'img/Onepiece.jpg', 'One Piece', 'Il fut un temps où Gold Roger était le plus grand de tous les pirates, le \"Roi des Pirates\" était son surnom. A sa mort, son trésor d\'une valeur inestimable connu sous le nom de \"One Piece\" fut caché quelque part sur \"Grand Line\".', 'Il fut un temps où Gold Roger était le plus grand de tous les pirates, le \"Roi des Pirates\" était son surnom. A sa mort, son trésor d\'une valeur inestimable connu sous le nom de \"One Piece\" fut caché quelque part sur \"Grand Line\". De nombreux pirates sont partis à la recherche de ce trésor mais tous sont morts avant même de l\'atteindre. Monkey D. Luffy rêve de retrouver ce trésor légendaire et de devenir le nouveau \"Roi des Pirates\". Après avoir mangé un fruit du démon, il possède un pouvoir lui permettant de réaliser son rêve. Il lui faut maintenant trouver un équipage pour partir à l\'aventure !', '2021-08-23', 2),
(23, 'img/oregairu.jpg', 'Oregairu', 'Hikigaya Hachiman est un lycéen qui voit la vie différemment des autres. N\'ayant pas d\'amis ou de vie sociale, il ne comprend pas pourquoi ses camarades voient que leur jeunesse est si importante.', 'Hikigaya Hachiman est un lycéen qui voit la vie différemment des autres. N\'ayant pas d\'amis ou de vie sociale, il ne comprend pas pourquoi ses camarades voient que leur jeunesse est si importante. En fait, il pense que les adolescents ne font que mentir quand ils parlent de leurs vies excitantes. Il n\'a pas de rêves et d\'ambitions pour le futur et mène une vie bien vide.\r\nC\'est en lisant un de ses essais scolaires que sa professeur se rend compte de son problème. Elle le convainc alors à rejoindre le club de services volontaires, qui n\'a pour membre que la fille la plus populaire du lycée : Yukinoshita Yukino.\r\nSuite à cet événement, tout change dans la vie de Hikigaya.', '2021-12-20', 1),
(24, 'img/Saintseiya.jpg', 'Les chevaliers du zodiaque', 'On raconte que quand les forces du mal veulent dominer la planète, Athéna et ses vaillants guerriers se dresseront contre l\'envahisseur.', 'On raconte que quand les forces du mal veulent dominer la planète, Athéna et ses vaillants guerriers se dresseront contre l\'envahisseur.\r\nCes guerriers s\'appellent les Saints (Chevalier en VF), de leurs poings, ils pouvaient pourfendre le ciel et de leurs pieds, entrouvrir la terre.\r\nAujourd\'hui encore, la planète est en proie des forces maléfiques. Pour se préparer a lutter, la déesse Athéna se réincarne sous les traits de Saori Kido accompagné des chevaliers de Bronze recueillis par son défunt grand père : Seiya de Pégase de Grèce, Shiryu du Dragon des cinq Pics en Chine, Hyoga du Cygne de Sibérie, Shun d\'Andromède de l\'Ile d\'Andromède et Ikki du Phénix de l\'ile de la Reine Morte et frère aîné de Shun.', '2021-07-22', 2),
(25, 'img/sakourasunopet.jpg', 'Sakourasu no pet na kanojo', 'L\'histoire est basée sur un lycéen banal nommé Sorata Kanda qui vit dans la demeure excentrique de Sakurasou.\r\nUn jour, la belle, élégante et gracieuse Mashiro Shiina, artiste renommée, vient habiter l\'immeuble.', 'L\'histoire est basée sur un lycéen banal nommé Sorata Kanda qui vit dans la demeure excentrique de Sakurasou.\r\nUn jour, la belle, élégante et gracieuse Mashiro Shiina, artiste renommée, vient habiter l\'immeuble.\r\nMalheureusement derrière cette image presque parfaite de la jeune fille, se cache un véritable problème : Mashiro ne sait absolument pas s\'occuper d\'elle. Elle possède une chambre en désordre complet, et n\'a aucun sens de l\'orientation. Bref, elle n\'est pas autonome.\r\nC\'est ainsi que les camarades de classe de Sorata le désignent pour être le tuteur de Mashiro.\r\nVa alors débuter la relation «Maître» et «animal de compagnie» entre les deux protagonistes.', '2021-04-14', 1),
(26, 'img/sao.jpg', 'Sao', 'Cette série raconte les aventures de Kirito qui se retrouve piégé dans un jeu massivement multi-joueurs, Sword Art Online.', 'Cette série raconte les aventures de Kirito qui se retrouve piégé dans un jeu massivement multi-joueurs, Sword Art Online.\r\n\r\nEn 2022, l\'humanité a réussi à créer une réalité virtuelle. Grâce à un casque, les humains peuvent se plonger entièrement dans le monde virtuel en étant comme déconnectés de la réalité, et Sword Art Online est le premier MMORPG a utiliser ce système. Mais voila que le premier jour de jeu, 10 000 personnes se retrouvent piégées dans cette réalité virtuelle par son créateur : Akihiko Kayaba. Le seul moyen d\'en sortir est de finir le jeu. Mais ce ne sera pas facile de sortir de ce monde virtuel puisque si un joueur perd la partie, il meurt également dans la vraie vie.\r\n\r\nKirito décide alors de partir à la conquête du jeu en solo, avec pour avantage le fait de faire partie des 1 000 ex-bêta-testeurs, mais arrivera-t-il à terminer les 99 donjons et leurs boss ?', '2021-12-20', 1),
(27, 'img/slime.jpg', 'Slime', 'Satoru Minami, un simple homme de 37 ans, se réincarne en slime dans une grotte d\'un monde fantastique après sa mort provoquée par un voleur en fuite. ', 'Satoru Minami, un simple homme de 37 ans, se réincarne en slime dans une grotte d\'un monde fantastique après sa mort provoquée par un voleur en fuite. Alors qu\'il tente de percer le secret derrière cette nouvelle vie, Satoru fait la connaissance de Veldra, le dragon de la tempête, une créature qui a perdu la capacité de se mouvoir depuis qu\'une héroïne a scellé son corps à la roche de la caverne 300 ans auparavant. Malgré leur différence de force frappante, ils décident de devenir amis et à la requête du dragon, doivent se donner l\'un l\'autre un surnom : ainsi, Veldra se voit attribuer le nom de famille Tempest et devient donc Veldra Tempest, Satoru, lui se transforme en \"Limule Tempest\". Cependant, est-il bien sage de s\'allier à un dragon ?', '2021-02-16', 1),
(29, 'https://images-na.ssl-images-amazon.com/images/I/71cDDCZvWHL.jpg', 'Grimoire of Zero', 'Faut beaucoup écrire sinon ça prends pas toute la place du coup me voila à gagner du temps :D', 'Flemme', '2021-12-02', 1);

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE `auteurs` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auteurs`
--

INSERT INTO `auteurs` (`id`, `pseudo`, `email`, `password`) VALUES
(1, 'Aoriah', 'ifrozenltl@hotmail.com', 'Timothe9?'),
(2, 'Minux870', 'aepubs@orange.fr', 'Minux870'),
(3, 'Un inconnu', 'we@outlook.com', 'RandomMDP');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `category`) VALUES
(1, 'Comédie'),
(2, 'Romance'),
(3, 'School Life'),
(4, 'Slice of Life'),
(5, 'Action'),
(6, 'Aventure'),
(7, 'Drame'),
(8, 'Fantastique '),
(9, 'Fantasy'),
(10, 'Shônen'),
(12, 'Horreur'),
(13, 'Science-fiction'),
(14, 'Surnaturel'),
(15, 'Autre monde'),
(16, 'Seinen'),
(17, 'Humour');

-- --------------------------------------------------------

--
-- Structure de la table `categories_articles`
--

CREATE TABLE `categories_articles` (
  `id` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories_articles`
--

INSERT INTO `categories_articles` (`id`, `id_article`, `id_categorie`) VALUES
(6, 3, 1),
(7, 3, 7),
(8, 3, 4),
(9, 3, 2),
(10, 3, 3),
(14, 7, 5),
(15, 7, 6),
(16, 7, 13),
(25, 10, 6),
(26, 10, 13),
(27, 11, 5),
(28, 11, 7),
(29, 11, 2),
(30, 11, 13),
(31, 11, 14),
(48, 12, 6),
(49, 12, 8),
(50, 12, 14),
(51, 14, 5),
(52, 14, 7),
(53, 14, 9),
(54, 14, 14),
(55, 15, 5),
(56, 15, 7),
(57, 15, 2),
(58, 15, 13),
(59, 16, 1),
(60, 16, 2),
(61, 16, 3),
(62, 16, 4),
(63, 17, 7),
(64, 17, 2),
(65, 17, 3),
(66, 17, 4),
(67, 17, 14),
(68, 19, 5),
(69, 19, 9),
(70, 19, 2),
(71, 19, 4),
(72, 20, 5),
(73, 20, 6),
(74, 20, 1),
(75, 21, 6),
(76, 21, 1),
(77, 21, 8),
(78, 21, 9),
(79, 22, 5),
(80, 22, 6),
(81, 22, 1),
(82, 22, 7),
(83, 22, 8),
(84, 22, 9),
(85, 22, 10),
(91, 24, 5),
(92, 24, 6),
(93, 24, 9),
(94, 24, 13),
(95, 24, 10),
(96, 25, 1),
(97, 25, 7),
(98, 25, 2),
(99, 25, 3),
(100, 26, 5),
(101, 26, 7),
(102, 26, 9),
(103, 26, 13),
(104, 26, 2),
(105, 27, 5),
(106, 27, 6),
(107, 27, 1),
(108, 27, 7),
(109, 27, 9),
(110, 13, 5),
(111, 13, 7),
(112, 13, 13),
(134, 29, 5),
(135, 29, 6),
(136, 29, 8),
(137, 29, 9),
(138, 29, 14),
(139, 9, 1),
(140, 9, 5),
(141, 9, 9),
(142, 9, 13),
(143, 8, 1),
(144, 8, 4),
(145, 8, 5),
(146, 8, 7),
(147, 5, 6),
(148, 5, 8),
(149, 5, 12),
(150, 4, 1),
(151, 4, 6),
(152, 4, 9),
(153, 4, 14),
(154, 4, 15),
(155, 23, 1),
(156, 23, 2),
(157, 23, 3),
(158, 23, 4),
(159, 23, 7);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date de publication` datetime NOT NULL DEFAULT current_timestamp(),
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `pseudo`, `contenu`, `date de publication`, `article_id`) VALUES
(1, 'Aoriah', 'zaerazeazerzaoydezghduifhsdiugfsdgf dsfusidfghduf zeazeijazeazioeizaeazieohazeihoazehazoehoiazehoazehaoizheio azehiozaheioazheoiazheoiazheoizaehzo  ehaziheoaziheaiozheaoizheoai zheazioheoiazheioah zehiazeiohaze hoizaehioazeihazeioaziheazioehio azuisdfuisd    fuisdifus diufsduifdsuif duisfdsu ifdsuif iusdfiusd fdsfisdfis udfuisdfu idsfdsf', '2021-12-02 16:51:40', 3),
(2, 'Aoriah', 'ezaeezaeza', '2021-12-02 16:56:07', 11),
(3, 'Aoriah', 'Je dois dire que je ne sais pas quoi dire, ceci est un test.\r\nTrès bon anime sinon.', '2021-12-03 09:17:23', 3),
(4, 'Aoriah', 'TEst\r\n', '2021-12-03 09:19:28', 3),
(5, 'Un inconnu', 'Z\'adore Naruto zette anime est vraiment revoluzionnaire !', '2021-12-03 11:28:00', 20);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auteurs` (`auteur_id`);

--
-- Index pour la table `auteurs`
--
ALTER TABLE `auteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories_articles`
--
ALTER TABLE `categories_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article` (`id_article`),
  ADD KEY `categories` (`id_categorie`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentaires` (`article_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `auteurs`
--
ALTER TABLE `auteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `categories_articles`
--
ALTER TABLE `categories_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `auteurs` FOREIGN KEY (`auteur_id`) REFERENCES `auteurs` (`id`);

--
-- Contraintes pour la table `categories_articles`
--
ALTER TABLE `categories_articles`
  ADD CONSTRAINT `article` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `categories` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
--
-- Base de données : `dwwm`
--
CREATE DATABASE IF NOT EXISTS `dwwm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dwwm`;

-- --------------------------------------------------------

--
-- Structure de la table `computers`
--

CREATE TABLE `computers` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `computers`
--

INSERT INTO `computers` (`id`, `brand`) VALUES
(1, 'millenium'),
(2, 'gigabyte'),
(3, 'hp'),
(4, 'mac'),
(5, 'lenovo');

-- --------------------------------------------------------

--
-- Structure de la table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` int(11) NOT NULL,
  `hobby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hobbies`
--

INSERT INTO `hobbies` (`id`, `hobby`) VALUES
(1, 'lecture'),
(2, 'jeux-videos'),
(3, 'séries'),
(4, 'tir');

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `computer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `members`
--

INSERT INTO `members` (`id`, `lastname`, `firstname`, `email`, `birthdate`, `computer_id`) VALUES
(1, 'Timothé', 'Legrand', 'ifrozenltl@hotmail.com', '2000-08-06', 2),
(2, 'Jolie', 'Coccinelle', 'joliecoccinelle@hotmail.fr', '2021-11-17', 3),
(3, 'Petite', 'Fourmis', 'petitefourmis@hotmail.fr', '2021-11-22', 4),
(4, 'Grosse\r\n', 'Abeille', 'grosseabeille@hotmail.fr', '2021-11-12', 4),
(5, 'Gentil', 'Oiseau', 'gentiloiseau@hotmail.fr', '2021-11-12', 4),
(6, 'Mechante', 'Giraffe', 'mechantegiraffe@hotmail.fr', '2021-11-01', 5),
(7, 'Etrange', 'Crocodile', 'etrangecrocodile@hotmail.fr', '2021-11-05', 2),
(8, 'Timide', 'Souris', 'timidesouris@hotmail.fr', '2021-11-05', 2);

-- --------------------------------------------------------

--
-- Structure de la table `members_hobbies`
--

CREATE TABLE `members_hobbies` (
  `id` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_hobby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `members_hobbies`
--

INSERT INTO `members_hobbies` (`id`, `id_member`, `id_hobby`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 2, 3),
(6, 2, 4),
(7, 3, 1),
(8, 4, 3),
(9, 4, 2),
(10, 5, 1),
(11, 6, 2),
(12, 7, 1),
(13, 8, 1),
(14, 8, 3),
(15, 8, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `computer_id` (`computer_id`);

--
-- Index pour la table `members_hobbies`
--
ALTER TABLE `members_hobbies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_hobby` (`id_hobby`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `computers`
--
ALTER TABLE `computers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `members_hobbies`
--
ALTER TABLE `members_hobbies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `computer_id` FOREIGN KEY (`computer_id`) REFERENCES `computers` (`id`);

--
-- Contraintes pour la table `members_hobbies`
--
ALTER TABLE `members_hobbies`
  ADD CONSTRAINT `id_hobby` FOREIGN KEY (`id_hobby`) REFERENCES `hobbies` (`id`),
  ADD CONSTRAINT `id_member` FOREIGN KEY (`id_member`) REFERENCES `members` (`id`);
--
-- Base de données : `pokemon`
--
CREATE DATABASE IF NOT EXISTS `pokemon` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pokemon`;

-- --------------------------------------------------------

--
-- Structure de la table `pokemons`
--

CREATE TABLE `pokemons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_region` int(11) NOT NULL,
  `img_src` varchar(255) NOT NULL,
  `commentaire` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pokemons`
--

INSERT INTO `pokemons` (`id`, `name`, `description`, `email`, `id_region`, `img_src`, `commentaire`) VALUES
(1, 'Gobou', 'Il a une antenne au moins..', 'cantgobanything@beststarter.com', 1, 'pokemonsrc/gobou.png', 'By far le meilleur starter de hoenn, tu rush le level 14 et bim t\'as un perso eau/sol et t\'es invincible, manque plus qu\'à trouver ton fameux ningale pour en faire un CS slave et t\'as fini le jeu :D '),
(2, 'Flobio', 'Evolves too fast.', 'electricnemesis@sanslesmains.com', 1, 'pokemonsrc/flobio.png', 'Que dire... Je vois pas comment tu peux perdre un combat d\'arène avec ce perso ayant l\'avantage sur 2/3 des arènes de son niveau. Tu rajoute à ton ningale une nirondelle qui déglingue le massko du rival ET T\'ES BIIEEEEN'),
(3, 'Laggron	', 'Dont want him under my bed...', 'sololigue@killingmachine.com', 1, 'pokemonsrc/laggron.png', 'T\'es level 36, officiellement champion de la ligue pokémon de Hoenn, bravo, c\'était pas trop long ?'),
(4, 'Tiplouf	', 'Mon plus grand rival!', 'tropmignon@girlsfavorite.com', 3, 'pokemonsrc/tiplouf.png', 'Et bien j\'en connais un qui va bien s\'amuser contre la 2ème arène, on s\'amuse à spammer bulles d\'eau ? '),
(5, 'Pringuin', 'UNDER-USED TIER', 'notcuteanymore@spamBduringevolution.com', 3, 'pokemonsrc/pringuin.png', 'Peut-etre un peu plus simple pour la 2ème arène, tu passes pour cette fois, on se revoit à la 3ème arène..(4ème pour platine) '),
(6, 'Pingoléon', 'Is that even a pinguin anymore?', 'restartgame@chooseouisticram.com', 3, 'pokemonsrc/pingoleon.png', 'Je t\'avais prévenu.... Plus qu\'à haut B select et choisir un meilleur starter :D'),
(7, 'Salamèche', 'ET LES GARS GO FAIRE UN MINI T-REX AVEC UNE TORCHE AU BOUT DE SA QUEUE !!', 'evolveasapplease@torchesurpatte.com', 2, 'pokemonsrc/salameche.png', 'Pratique pour éclairer une chambre un peu trop sombre, pour allumer un feu de camp (à ne pas faire dans la chambre en question), ou bien griller des chenipans.  '),
(8, 'Reptincel', '20 more levels ...', 'onlyfire?@really?com', 2, 'pokemonsrc/reptincel.png', 'Bon, ça commence à ressembler à quelque chose, ne parlons pas du changement de couleur et continuons à level up..'),
(9, 'Dracaufeu', 'A FUCKING DRAGON, YAAAY !', 'howthefuckishenotdragontype@ givemymoneyback.com', 2, 'pokemonsrc/dracaufeu.png', 'De type vol... De type vol... De type vol... De type vol... De type vol... De type vol... De type vol... De... type... vol........ '),
(45, 'John Cena', 'Le roi des rois.', 'getsmashed@youhadnochance.com', 6, 'https://toppng.com/uploads/preview/john-cena-in-new-look-11549838007oscoqxrqi4.png', 'J\'en sais rien en vrai allez voir sur wikipédia.');

-- --------------------------------------------------------

--
-- Structure de la table `pokemons_types`
--

CREATE TABLE `pokemons_types` (
  `id` int(11) NOT NULL,
  `id_pokemon` int(11) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pokemons_types`
--

INSERT INTO `pokemons_types` (`id`, `id_pokemon`, `id_type`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 3, 1),
(5, 3, 2),
(6, 4, 1),
(7, 5, 2),
(8, 5, 3),
(9, 6, 1),
(10, 6, 3),
(11, 7, 4),
(12, 8, 4),
(13, 9, 4),
(14, 9, 5),
(65, 45, 19),
(66, 45, 20);

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `regions`
--

INSERT INTO `regions` (`id`, `region`) VALUES
(1, 'HOENN'),
(2, 'KANTO'),
(3, 'SINNOH'),
(6, 'Amérique');

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id`, `type`) VALUES
(1, 'Eau'),
(2, 'Sol'),
(3, 'Acier'),
(4, 'Feu'),
(5, 'Vol'),
(18, 'Electric'),
(19, 'Combat'),
(20, 'Dieu'),
(21, 'Glace'),
(22, 'Psy'),
(23, 'Roche'),
(24, 'Dragon'),
(25, 'Plante'),
(26, 'Insecte'),
(27, 'Poison'),
(28, 'Spectre'),
(29, 'Ténèbre');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pokemonsregions` (`id_region`);

--
-- Index pour la table `pokemons_types`
--
ALTER TABLE `pokemons_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pokemonsid` (`id_pokemon`),
  ADD KEY `typesid` (`id_type`);

--
-- Index pour la table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pokemons`
--
ALTER TABLE `pokemons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `pokemons_types`
--
ALTER TABLE `pokemons_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pokemons`
--
ALTER TABLE `pokemons`
  ADD CONSTRAINT `pokemonsregions` FOREIGN KEY (`id_region`) REFERENCES `regions` (`id`);

--
-- Contraintes pour la table `pokemons_types`
--
ALTER TABLE `pokemons_types`
  ADD CONSTRAINT `pokemonsid` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemons` (`id`),
  ADD CONSTRAINT `typesid` FOREIGN KEY (`id_type`) REFERENCES `types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
