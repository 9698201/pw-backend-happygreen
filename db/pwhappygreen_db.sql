-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 24, 2025 alle 11:48
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwhappygreen_db`
--
CREATE DATABASE IF NOT EXISTS `pwhappygreen_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pwhappygreen_db`;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_utente'),
(22, 'Can change user', 6, 'change_utente'),
(23, 'Can delete user', 6, 'delete_utente'),
(24, 'Can view user', 6, 'view_utente'),
(25, 'Can add gruppo', 7, 'add_gruppo'),
(26, 'Can change gruppo', 7, 'change_gruppo'),
(27, 'Can delete gruppo', 7, 'delete_gruppo'),
(28, 'Can view gruppo', 7, 'view_gruppo'),
(29, 'Can add utente gruppo', 8, 'add_utentegruppo'),
(30, 'Can change utente gruppo', 8, 'change_utentegruppo'),
(31, 'Can delete utente gruppo', 8, 'delete_utentegruppo'),
(32, 'Can view utente gruppo', 8, 'view_utentegruppo'),
(33, 'Can add commento', 9, 'add_commento'),
(34, 'Can change commento', 9, 'change_commento'),
(35, 'Can delete commento', 9, 'delete_commento'),
(36, 'Can view commento', 9, 'view_commento'),
(37, 'Can add post', 10, 'add_post'),
(38, 'Can change post', 10, 'change_post'),
(39, 'Can delete post', 10, 'delete_post'),
(40, 'Can view post', 10, 'view_post'),
(41, 'Can add badge', 11, 'add_badge'),
(42, 'Can change badge', 11, 'change_badge'),
(43, 'Can delete badge', 11, 'delete_badge'),
(44, 'Can view badge', 11, 'view_badge'),
(45, 'Can add utente badge', 12, 'add_utentebadge'),
(46, 'Can change utente badge', 12, 'change_utentebadge'),
(47, 'Can delete utente badge', 12, 'delete_utentebadge'),
(48, 'Can view utente badge', 12, 'view_utentebadge'),
(49, 'Can add prodotto', 13, 'add_prodotto'),
(50, 'Can change prodotto', 13, 'change_prodotto'),
(51, 'Can delete prodotto', 13, 'delete_prodotto'),
(52, 'Can view prodotto', 13, 'view_prodotto'),
(53, 'Can add prodotto scansionato', 14, 'add_prodottoscansionato'),
(54, 'Can change prodotto scansionato', 14, 'change_prodottoscansionato'),
(55, 'Can delete prodotto scansionato', 14, 'delete_prodottoscansionato'),
(56, 'Can view prodotto scansionato', 14, 'view_prodottoscansionato'),
(57, 'Can add quiz', 15, 'add_quiz'),
(58, 'Can change quiz', 15, 'change_quiz'),
(59, 'Can delete quiz', 15, 'delete_quiz'),
(60, 'Can view quiz', 15, 'view_quiz'),
(61, 'Can add blacklisted token', 16, 'add_blacklistedtoken'),
(62, 'Can change blacklisted token', 16, 'change_blacklistedtoken'),
(63, 'Can delete blacklisted token', 16, 'delete_blacklistedtoken'),
(64, 'Can view blacklisted token', 16, 'view_blacklistedtoken'),
(65, 'Can add outstanding token', 17, 'add_outstandingtoken'),
(66, 'Can change outstanding token', 17, 'change_outstandingtoken'),
(67, 'Can delete outstanding token', 17, 'delete_outstandingtoken'),
(68, 'Can view outstanding token', 17, 'view_outstandingtoken'),
(69, 'Can add domanda', 18, 'add_domanda'),
(70, 'Can change domanda', 18, 'change_domanda'),
(71, 'Can delete domanda', 18, 'delete_domanda'),
(72, 'Can view domanda', 18, 'view_domanda'),
(73, 'Can add risultato quiz', 19, 'add_risultatoquiz'),
(74, 'Can change risultato quiz', 19, 'change_risultatoquiz'),
(75, 'Can delete risultato quiz', 19, 'delete_risultatoquiz'),
(76, 'Can view risultato quiz', 19, 'view_risultatoquiz'),
(77, 'Can add risposta', 20, 'add_risposta'),
(78, 'Can change risposta', 20, 'change_risposta'),
(79, 'Can delete risposta', 20, 'delete_risposta'),
(80, 'Can view risposta', 20, 'view_risposta');

-- --------------------------------------------------------

--
-- Struttura della tabella `badges_badge`
--

CREATE TABLE `badges_badge` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descrizione` longtext NOT NULL,
  `punti_assegnati` int(10) UNSIGNED NOT NULL CHECK (`punti_assegnati` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `badges_utentebadge`
--

CREATE TABLE `badges_utentebadge` (
  `id` bigint(20) NOT NULL,
  `data_conseguimento` datetime(6) NOT NULL,
  `badge_id` bigint(20) NOT NULL,
  `utente_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(11, 'badges', 'badge'),
(12, 'badges', 'utentebadge'),
(4, 'contenttypes', 'contenttype'),
(7, 'gruppi', 'gruppo'),
(8, 'gruppi', 'utentegruppo'),
(9, 'posts', 'commento'),
(10, 'posts', 'post'),
(13, 'prodotti', 'prodotto'),
(14, 'prodotti', 'prodottoscansionato'),
(18, 'quiz', 'domanda'),
(15, 'quiz', 'quiz'),
(20, 'quiz', 'risposta'),
(19, 'quiz', 'risultatoquiz'),
(5, 'sessions', 'session'),
(16, 'token_blacklist', 'blacklistedtoken'),
(17, 'token_blacklist', 'outstandingtoken'),
(6, 'utenti', 'utente');

-- --------------------------------------------------------

--
-- Struttura della tabella `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-05-12 10:32:15.786005'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-05-12 10:32:15.801639'),
(3, 'auth', '0001_initial', '2025-05-12 10:32:15.871984'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-05-12 10:32:15.895211'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-05-12 10:32:15.903439'),
(6, 'auth', '0004_alter_user_username_opts', '2025-05-12 10:32:15.913957'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-05-12 10:32:15.920597'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-05-12 10:32:15.923033'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-05-12 10:32:15.926382'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-05-12 10:32:15.929283'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-05-12 10:32:15.931843'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-05-12 10:32:15.937879'),
(13, 'auth', '0011_update_proxy_permissions', '2025-05-12 10:32:15.939887'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-05-12 10:32:15.941520'),
(15, 'utenti', '0001_initial', '2025-05-12 10:32:16.004040'),
(16, 'admin', '0001_initial', '2025-05-12 10:32:16.029919'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-05-12 10:32:16.033412'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-12 10:32:16.035977'),
(19, 'badges', '0001_initial', '2025-05-12 10:32:16.051690'),
(20, 'badges', '0002_initial', '2025-05-12 10:32:16.063882'),
(21, 'gruppi', '0001_initial', '2025-05-12 10:32:16.081537'),
(22, 'gruppi', '0002_initial', '2025-05-12 10:32:16.106495'),
(23, 'posts', '0001_initial', '2025-05-12 10:32:16.115122'),
(24, 'posts', '0002_initial', '2025-05-12 10:32:16.159752'),
(25, 'prodotti', '0001_initial', '2025-05-12 10:32:16.179390'),
(26, 'prodotti', '0002_initial', '2025-05-12 10:32:16.192780'),
(27, 'quiz', '0001_initial', '2025-05-12 10:32:16.210377'),
(28, 'sessions', '0001_initial', '2025-05-12 10:32:16.218708'),
(29, 'token_blacklist', '0001_initial', '2025-05-12 10:32:16.253767'),
(30, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2025-05-12 10:32:16.262627'),
(31, 'token_blacklist', '0003_auto_20171017_2007', '2025-05-12 10:32:16.269388'),
(32, 'token_blacklist', '0004_auto_20171017_2013', '2025-05-12 10:32:16.284403'),
(33, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2025-05-12 10:32:16.293006'),
(34, 'token_blacklist', '0006_auto_20171017_2113', '2025-05-12 10:32:16.301705'),
(35, 'token_blacklist', '0007_auto_20171017_2214', '2025-05-12 10:32:16.510214'),
(36, 'token_blacklist', '0008_migrate_to_bigautofield', '2025-05-12 10:32:16.587564'),
(37, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2025-05-12 10:32:16.603034'),
(38, 'token_blacklist', '0011_linearizes_history', '2025-05-12 10:32:16.603700'),
(39, 'token_blacklist', '0012_alter_outstandingtoken_user', '2025-05-12 10:32:16.614310'),
(40, 'posts', '0003_alter_post_immagine', '2025-05-24 06:37:38.129891'),
(41, 'quiz', '0002_domanda_remove_quiz_badge_remove_quiz_difficolta_and_more', '2025-05-24 06:37:38.455012');

-- --------------------------------------------------------

--
-- Struttura della tabella `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `gruppi_gruppo`
--

CREATE TABLE `gruppi_gruppo` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descrizione` longtext NOT NULL,
  `data_creazione` datetime(6) NOT NULL,
  `creatore_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `gruppi_gruppo`
--

INSERT INTO `gruppi_gruppo` (`id`, `nome`, `descrizione`, `data_creazione`, `creatore_id`) VALUES
(1, 'Gruppo Test', 'Descrizione test', '2025-05-17 09:44:32.139458', 1),
(2, 'Gruppo Test Mario', 'Descrizione test di mario', '2025-05-17 09:45:16.357094', 2),
(3, 'Gruppo Prova', 'Guarda che bella Prova di gruppo', '2025-05-22 19:36:00.977827', 6),
(4, 'Secondo gruppo di prova', 'Un\'altra Prova per sicurezza perch neanche io ci credo', '2025-05-22 19:36:53.476794', 6),
(5, 'GRUPPO DI LUCA', 'Questa e la chat di Luca', '2025-05-22 19:51:24.174384', 5),
(6, 'Gruppo di Luca numero 2', 'Bla bla bla ble ble ble', '2025-05-22 20:23:34.895580', 5),
(7, 'Gruppo di Gio', 'Un bel gruppo creato da Gio', '2025-05-23 12:16:30.446935', 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `gruppi_utentegruppo`
--

CREATE TABLE `gruppi_utentegruppo` (
  `id` bigint(20) NOT NULL,
  `data_iscrizione` datetime(6) NOT NULL,
  `gruppo_id` bigint(20) NOT NULL,
  `utente_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `gruppi_utentegruppo`
--

INSERT INTO `gruppi_utentegruppo` (`id`, `data_iscrizione`, `gruppo_id`, `utente_id`) VALUES
(1, '2025-05-22 19:51:24.202360', 5, 5),
(2, '2025-05-22 20:23:34.902994', 6, 5),
(3, '2025-05-23 12:16:30.453590', 7, 6),
(4, '2025-05-24 09:09:36.577877', 7, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `posts_commento`
--

CREATE TABLE `posts_commento` (
  `id` bigint(20) NOT NULL,
  `testo` longtext NOT NULL,
  `data_commento` datetime(6) NOT NULL,
  `autore_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `posts_commento`
--

INSERT INTO `posts_commento` (`id`, `testo`, `data_commento`, `autore_id`, `post_id`) VALUES
(1, 'ma che bel post che ho fatto oggi!!', '2025-05-23 14:04:10.598833', 5, 5),
(2, 'ciao Luca!', '2025-05-23 14:32:26.018767', 5, 5),
(3, 'daii!', '2025-05-23 14:36:18.422351', 5, 7),
(4, 'ciao', '2025-05-24 08:45:01.666782', 6, 6),
(5, 'come va?', '2025-05-24 09:00:13.342017', 6, 6),
(6, 'che bello!!', '2025-05-24 09:09:48.960813', 5, 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `posts_post`
--

CREATE TABLE `posts_post` (
  `id` bigint(20) NOT NULL,
  `immagine` varchar(100) DEFAULT NULL,
  `riconoscimento` varchar(100) NOT NULL,
  `descrizione` longtext NOT NULL,
  `latitudine` double NOT NULL,
  `longitudine` double NOT NULL,
  `data_pubblicazione` datetime(6) NOT NULL,
  `autore_id` bigint(20) NOT NULL,
  `gruppo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `posts_post`
--

INSERT INTO `posts_post` (`id`, `immagine`, `riconoscimento`, `descrizione`, `latitudine`, `longitudine`, `data_pubblicazione`, `autore_id`, `gruppo_id`) VALUES
(1, '', 'Oggetto finto', 'Incredibile primo post', 0, 0, '2025-05-23 13:10:52.977424', 5, 5),
(2, '', 'Oggetto finto', 'Incredibile primo post', 0, 0, '2025-05-23 13:11:04.395657', 5, 5),
(3, '', 'Oggetto finto', 'Primopost', 0, 0, '2025-05-23 13:12:07.404233', 5, 5),
(4, '', 'Oggetto finto', 'Post di Luca CIAOOO', 0, 0, '2025-05-23 13:17:06.191615', 5, 5),
(5, '', 'Oggetto finto', 'per vedere errore', 0, 0, '2025-05-23 13:17:55.589891', 5, 5),
(6, '', 'Oggetto finto', 'Post di Gio nel chill', 0, 0, '2025-05-23 13:31:34.993899', 6, 7),
(7, '', 'Oggetto finto', 'Forza Napoli!!', 0, 0, '2025-05-23 14:35:18.087187', 5, 6),
(8, '', 'Oggetto finto', 'Sono a Milano', 0, 0, '2025-05-24 09:09:01.251083', 6, 7);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti_prodotto`
--

CREATE TABLE `prodotti_prodotto` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `barcode` varchar(50) NOT NULL,
  `eco_rating` int(11) NOT NULL,
  `materiali` longtext NOT NULL,
  `descrizione` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti_prodottoscansionato`
--

CREATE TABLE `prodotti_prodottoscansionato` (
  `id` bigint(20) NOT NULL,
  `data_scansione` datetime(6) NOT NULL,
  `prodotto_id` bigint(20) NOT NULL,
  `utente_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `quiz_domanda`
--

CREATE TABLE `quiz_domanda` (
  `id` bigint(20) NOT NULL,
  `testo` longtext NOT NULL,
  `quiz_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `quiz_domanda`
--

INSERT INTO `quiz_domanda` (`id`, `testo`, `quiz_id`) VALUES
(1, 'Quale di questi materiali impiega più tempo a decomporsi nell\'ambiente?', 1),
(2, 'Cos\'è l\'effetto serra?', 1),
(3, 'Quale percentuale di acqua dolce è disponibile per l\'uso umano?', 1),
(4, 'Quale di questi materiali NON è riciclabile?', 2),
(5, 'In quale contenitore va gettata la carta?', 2),
(6, 'Quale fonte di energia rinnovabile è più utilizzata al mondo?', 3),
(7, 'I pannelli solari funzionano solo con la luce diretta del sole?', 3),
(8, 'Quale di queste pratiche aiuta a ridurre l\'impronta ecologica?', 1),
(9, 'Cosa significa \'sviluppo sostenibile\'?', 1),
(10, 'Qual è uno dei principali gas serra responsabili del cambiamento climatico?', 3),
(11, 'Quale settore consuma più energia a livello globale?', 3),
(12, 'Quale azione può aiutare a ridurre la produzione di rifiuti?', 2),
(13, 'Cosa si intende con economia circolare?', 2),
(14, 'Quale tra questi comportamenti è il più sostenibile?', 2),
(15, 'Cosa rappresenta il concetto delle 3 R?', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `quiz_quiz`
--

CREATE TABLE `quiz_quiz` (
  `id` bigint(20) NOT NULL,
  `descrizione` longtext NOT NULL,
  `titolo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `quiz_quiz`
--

INSERT INTO `quiz_quiz` (`id`, `descrizione`, `titolo`) VALUES
(1, 'Testa le tue conoscenze sull\'ambiente e la sostenibilità', 'Quiz Ambiente e Sostenibilità'),
(2, 'Quanto ne sai sul riciclaggio e la gestione dei rifiuti?', 'Quiz Riciclaggio'),
(3, 'Scopri quanto conosci le energie rinnovabili', 'Quiz Energia Rinnovabile');

-- --------------------------------------------------------

--
-- Struttura della tabella `quiz_risposta`
--

CREATE TABLE `quiz_risposta` (
  `id` bigint(20) NOT NULL,
  `testo` varchar(255) NOT NULL,
  `corretta` tinyint(1) NOT NULL,
  `domanda_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `quiz_risposta`
--

INSERT INTO `quiz_risposta` (`id`, `testo`, `corretta`, `domanda_id`) VALUES
(1, 'Plastica', 1, 1),
(2, 'Carta', 0, 1),
(3, 'Vetro', 0, 1),
(4, 'Alluminio', 0, 1),
(5, 'Un fenomeno naturale che intrappola il calore nell\'atmosfera', 1, 2),
(6, 'Una serra per coltivare piante', 0, 2),
(7, 'Un tipo di inquinamento dell\'aria', 0, 2),
(8, 'Un metodo per produrre energia', 0, 2),
(9, 'Meno dell\'1%', 1, 3),
(10, 'Circa il 10%', 0, 3),
(11, 'Circa il 25%', 0, 3),
(12, 'Circa il 50%', 0, 3),
(13, 'Ceramica', 1, 4),
(14, 'Vetro', 0, 4),
(15, 'Plastica', 0, 4),
(16, 'Alluminio', 0, 4),
(17, 'Contenitore blu/bianco', 1, 5),
(18, 'Contenitore giallo', 0, 5),
(19, 'Contenitore verde', 0, 5),
(20, 'Contenitore grigio', 0, 5),
(21, 'Energia idroelettrica', 1, 6),
(22, 'Energia solare', 0, 6),
(23, 'Energia eolica', 0, 6),
(24, 'Energia geotermica', 0, 6),
(25, 'No, funzionano anche con luce diffusa', 1, 7),
(26, 'Sì, hanno bisogno di sole diretto', 0, 7),
(27, 'Funzionano solo di notte', 0, 7),
(28, 'Funzionano solo in estate', 0, 7),
(29, 'Usare i mezzi pubblici', 1, 8),
(30, 'Comprare acqua in bottiglie di plastica', 0, 8),
(31, 'Tenere le luci accese tutto il giorno', 0, 8),
(32, 'Stampare ogni documento', 0, 8),
(33, 'Sviluppare tenendo conto delle risorse future', 1, 9),
(34, 'Sviluppare solo nelle grandi città', 0, 9),
(35, 'Costruire nuove strade', 0, 9),
(36, 'Aumentare la produzione industriale', 0, 9),
(37, 'Anidride carbonica (CO2)', 1, 10),
(38, 'Ossigeno', 0, 10),
(39, 'Azoto', 0, 10),
(40, 'Elio', 0, 10),
(41, 'Industria', 1, 11),
(42, 'Agricoltura', 0, 11),
(43, 'Turismo', 0, 11),
(44, 'Sport', 0, 11),
(45, 'Comprare prodotti con meno imballaggi', 1, 12),
(46, 'Utilizzare sacchetti di plastica monouso', 0, 12),
(47, 'Stampare più fogli possibili', 0, 12),
(48, 'Buttare tutto nell\'indifferenziato', 0, 12),
(49, 'Un sistema in cui i rifiuti diventano risorse', 1, 13),
(50, 'Un\'economia basata sul consumo rapido', 0, 13),
(51, 'Un\'economia senza limiti di produzione', 0, 13),
(52, 'Un sistema che produce solo rifiuti', 0, 13),
(53, 'Spegnere le luci quando non servono', 1, 14),
(54, 'Lasciare i dispositivi in standby', 0, 14),
(55, 'Usare l\'automobile anche per brevi tragitti', 0, 14),
(56, 'Comprare solo vestiti nuovi', 0, 14),
(57, 'Riduci, Riutilizza, Ricicla', 1, 15),
(58, 'Raccogli, Ripara, Rinnova', 0, 15),
(59, 'Riempi, Riduci, Rilascia', 0, 15),
(60, 'Risparmia, Restaura, Rilancia', 0, 15);

-- --------------------------------------------------------

--
-- Struttura della tabella `quiz_risultatoquiz`
--

CREATE TABLE `quiz_risultatoquiz` (
  `id` bigint(20) NOT NULL,
  `punteggio` double NOT NULL,
  `data` datetime(6) NOT NULL,
  `quiz_id` bigint(20) NOT NULL,
  `utente_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `quiz_risultatoquiz`
--

INSERT INTO `quiz_risultatoquiz` (`id`, `punteggio`, `data`, `quiz_id`, `utente_id`) VALUES
(1, 50, '2025-05-24 08:13:21.054225', 2, 6),
(2, 50, '2025-05-24 08:13:49.513520', 3, 6),
(3, 33.33333333333333, '2025-05-24 09:01:20.879372', 1, 6),
(4, 81.81818181818183, '2025-05-24 09:19:10.295255', 1, 6),
(5, 0, '2025-05-24 09:21:01.854930', 2, 6),
(6, 63.63636363636363, '2025-05-24 09:21:55.219332', 1, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `token_blacklist_blacklistedtoken`
--

CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint(20) NOT NULL,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `token_blacklist_outstandingtoken`
--

CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint(20) NOT NULL,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `jti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `token_blacklist_outstandingtoken`
--

INSERT INTO `token_blacklist_outstandingtoken` (`id`, `token`, `created_at`, `expires_at`, `user_id`, `jti`) VALUES
(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzEzNTQ5MCwiaWF0IjoxNzQ3MDQ5MDkwLCJqdGkiOiI2NTI5Njk0MzY1MzI0Y2M4ODYzMzI1ZTdjNmZhOWUxYSIsInVzZXJfaWQiOjF9.cxUD69KYVdO0umhNiidZaWxim0ChMR2s1rFynK-axJU', '2025-05-12 11:24:50.964803', '2025-05-13 11:24:50.000000', 1, '6529694365324cc8863325e7c6fa9e1a'),
(2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzEzNTY0NSwiaWF0IjoxNzQ3MDQ5MjQ1LCJqdGkiOiJmMmY2YmM1MDVmMTE0ZDg2YmE1OGVjMTA4YWFhZWM1OCIsInVzZXJfaWQiOjF9.2UrMqgKmmLZyyUTAsF4v_HNimWj0u4c-EW2Ytpfey70', '2025-05-12 11:27:25.111325', '2025-05-13 11:27:25.000000', 1, 'f2f6bc505f114d86ba58ec108aaaec58'),
(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzIxNDg0NCwiaWF0IjoxNzQ3MTI4NDQ0LCJqdGkiOiJlODU5YTUwOWUyOTY0M2EwYTA0ZGIzZjMwNmJiMGM0NSIsInVzZXJfaWQiOjF9.o7D2gvyRS1LBNnYbzPjE3SVRMICx5-eshNWoL21-YP4', '2025-05-13 09:27:24.003852', '2025-05-14 09:27:24.000000', 1, 'e859a509e29643a0a04db3f306bb0c45'),
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzIxNTA2NCwiaWF0IjoxNzQ3MTI4NjY0LCJqdGkiOiJlYmU5ZDNhOGI4NTA0MGEzOWE3NDczZWEyYmRhZDVmNCIsInVzZXJfaWQiOjF9.4-pxy-iJy9RfPgvKo1BvBXsX9fzmlQYio2Xes2gdTQg', '2025-05-13 09:31:04.974239', '2025-05-14 09:31:04.000000', 1, 'ebe9d3a8b85040a39a7473ea2bdad5f4'),
(5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzIxOTc0MywiaWF0IjoxNzQ3MTMzMzQzLCJqdGkiOiIzZTVhZDUwNWRhMjg0NjhiOTY2NDEwZThjYjY2ZjNjNSIsInVzZXJfaWQiOjF9.8PXvQn2zS6zav_XzQz6Ati6ljUMdpahCkazVQJLaS_Q', '2025-05-13 10:49:03.530083', '2025-05-14 10:49:03.000000', 1, '3e5ad505da28468b966410e8cb66f3c5'),
(6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU1NzY0MCwiaWF0IjoxNzQ3NDcxMjQwLCJqdGkiOiIwNzBhODIyMDg0NDM0MmE4OGQ2ZDdiZjVkMTdkMWUyOCIsInVzZXJfaWQiOjF9.7p_BJNF_CYtVwvkHUbbMIg6JMWpgpAxH8swLHDe-_2c', '2025-05-17 08:40:40.916866', '2025-05-18 08:40:40.000000', 1, '070a8220844342a88d6d7bf5d17d1e28'),
(7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzU2MTQ5NCwiaWF0IjoxNzQ3NDc1MDk0LCJqdGkiOiIyNWExZmZmOWZiZDU0YzExODE4YTZjOGM2ZDMzYjlhNiIsInVzZXJfaWQiOjJ9.4THrCaiHMKt8hT_iKkTlcYcGG7fzWKekFvACd4LZZB4', '2025-05-17 09:44:54.741977', '2025-05-18 09:44:54.000000', 2, '25a1fff9fbd54c11818a6c8c6d33b9a6'),
(8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzkxMDY1MywiaWF0IjoxNzQ3ODI0MjUzLCJqdGkiOiJkOGM3MDQ3ODRmNzY0NTk0YmMzZDRiOTExNzU2NzRkYSIsInVzZXJfaWQiOjJ9.DlehELKhptKxS-IIirl3eQCgrrRutYv_aMx9FvQLgmI', '2025-05-21 10:44:13.398905', '2025-05-22 10:44:13.000000', 2, 'd8c704784f764594bc3d4b91175674da'),
(9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzkxMTkyMCwiaWF0IjoxNzQ3ODI1NTIwLCJqdGkiOiJkNzE4ZTAwYjRjYTA0NzkzODhmMDAzM2VkMmMwOTI1MSIsInVzZXJfaWQiOjN9.4NY9_CjDK3E7JPh3MhGG2PVYRWzWEwSbWvK8Aem9HF8', '2025-05-21 11:05:20.633260', '2025-05-22 11:05:20.000000', 3, 'd718e00b4ca0479388f0033ed2c09251'),
(10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzkxMTk2OCwiaWF0IjoxNzQ3ODI1NTY4LCJqdGkiOiI0MjkxNDYzOGQwOTM0ZDZjYTRkMmMwNDY0MjZlYTliMiIsInVzZXJfaWQiOjN9.eFwumMHDLXSdGrVwpcQqLO6CHjKzyr2UZDCLPp0YW3s', '2025-05-21 11:06:08.870496', '2025-05-22 11:06:08.000000', 3, '42914638d0934d6ca4d2c046426ea9b2'),
(11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzkxMjQyNiwiaWF0IjoxNzQ3ODI2MDI2LCJqdGkiOiIyYTJhYzcyZDRlMzM0MzQwOGRjNDhkZGNlYmVhZGM1MCIsInVzZXJfaWQiOjN9.aJ_soVlQigJ8nu69js1Ry-CMx2Dr7Owb81FbBUvHRQM', '2025-05-21 11:13:46.030460', '2025-05-22 11:13:46.000000', 3, '2a2ac72d4e3343408dc48ddcebeadc50'),
(12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzkxMjgxMCwiaWF0IjoxNzQ3ODI2NDEwLCJqdGkiOiJhYjY0ZGI0YTVlYmY0MjgzYmNjMzFmMGY1MTU3ZDJkZCIsInVzZXJfaWQiOjZ9.ove7lboBQk9zl81WJ5ZOcqq-pfpSafbC_Q1C6oBab0s', '2025-05-21 11:20:10.183362', '2025-05-22 11:20:10.000000', 6, 'ab64db4a5ebf4283bcc31f0f5157d2dd'),
(13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0NzkxMzEyNywiaWF0IjoxNzQ3ODI2NzI3LCJqdGkiOiIyMDNlZjczZGVmNGE0NTg2OGI0MWQzODhiMDY4NjdiMSIsInVzZXJfaWQiOjN9.GthQ5Lm12nMQvyDEyGDhV9AkGyJzZRtOrYoi87kDB94', '2025-05-21 11:25:27.543724', '2025-05-22 11:25:27.000000', 3, '203ef73def4a45868b41d388b06867b1'),
(14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0Nzk4Nzc0OCwiaWF0IjoxNzQ3OTAxMzQ4LCJqdGkiOiJiMGI5MWJlMDE3YTI0YjI4YjU1NGI4MmU3NjVkYmE2ZiIsInVzZXJfaWQiOjZ9.to_Ul6sNOTGLhP3SQNB4X27QXJFSt56E3mKJmkA_cBo', '2025-05-22 08:09:08.373083', '2025-05-23 08:09:08.000000', 6, 'b0b91be017a24b28b554b82e765dba6f'),
(15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAxMTE5NywiaWF0IjoxNzQ3OTI0Nzk3LCJqdGkiOiJiYWI5N2FjYzEyNmI0YjdhOTMxNDQ1NTQ2YjU1N2MwZCIsInVzZXJfaWQiOjZ9.7Gq4bg4ckKRJedShYcdpH0XqJBHv4Ms3Krs-_qXU79M', '2025-05-22 14:39:57.525016', '2025-05-23 14:39:57.000000', 6, 'bab97acc126b4b7a931445546b557c0d'),
(16, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAxMjk4MSwiaWF0IjoxNzQ3OTI2NTgxLCJqdGkiOiJlMjc5OGVjNmU5MDM0NmJlODI4ODYxYWIzOGZlZWE2NSIsInVzZXJfaWQiOjZ9.FrY7fghESuHOBKl8BeFn_jTaWESVcPaeqY2OiO3IYbw', '2025-05-22 15:09:41.254348', '2025-05-23 15:09:41.000000', 6, 'e2798ec6e90346be828861ab38feea65'),
(17, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAxMzMxNSwiaWF0IjoxNzQ3OTI2OTE1LCJqdGkiOiI0ODNhMjAzYWZiOGM0NzVmYmM0NWY3ZjA1YzJlOTVlMiIsInVzZXJfaWQiOjZ9.K4yln7QcYaRb7eUEHBd0la-SdV2L9dM_98TZrOgcX2U', '2025-05-22 15:15:15.710869', '2025-05-23 15:15:15.000000', 6, '483a203afb8c475fbc45f7f05c2e95e2'),
(18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAxNjY3OSwiaWF0IjoxNzQ3OTMwMjc5LCJqdGkiOiJmMDZlMWUxM2I2ODg0OTZjOTlkYzRjZWY2MTJhZTgwYSIsInVzZXJfaWQiOjZ9.9eiWzc-_XhsqbyfeJEY7jowke5G8x3KbWEot8hoakDI', '2025-05-22 16:11:19.430915', '2025-05-23 16:11:19.000000', 6, 'f06e1e13b688496c99dc4cef612ae80a'),
(19, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAxNzEzOSwiaWF0IjoxNzQ3OTMwNzM5LCJqdGkiOiIzMGIyNTgzNjA4MTM0MTU4YjViZTM5NjIzNGE5YjM5YyIsInVzZXJfaWQiOjZ9.BqKUFYEcJUX6d8k7Lme9tCupUINicmZdBH-sRBsLEG8', '2025-05-22 16:18:59.147878', '2025-05-23 16:18:59.000000', 6, '30b2583608134158b5be396234a9b39c'),
(20, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAxNzMxNSwiaWF0IjoxNzQ3OTMwOTE1LCJqdGkiOiJkNTc3OWVjMzBmNWM0ZDQ2YWM2NTBkYzc3ZmMyZWEzZiIsInVzZXJfaWQiOjZ9.Ykn-gSVtsTVum_vpxO2Wr2-dxePnh92w2FzC1PatDSE', '2025-05-22 16:21:55.247551', '2025-05-23 16:21:55.000000', 6, 'd5779ec30f5c4d46ac650dc77fc2ea3f'),
(21, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAxNzM2MCwiaWF0IjoxNzQ3OTMwOTYwLCJqdGkiOiJkM2U2NDk4YjMxNzg0ZTg0YjhmMjZhMDRhYjIxOTA4NCIsInVzZXJfaWQiOjZ9.Z-MrAMTVmU-J5HBlD_AVICMRI_ZOAIRlQSBz8TLvj6g', '2025-05-22 16:22:40.864336', '2025-05-23 16:22:40.000000', 6, 'd3e6498b31784e84b8f26a04ab219084'),
(22, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAyODg2OSwiaWF0IjoxNzQ3OTQyNDY5LCJqdGkiOiIwOWFmNzcwN2JjYmM0Yzc0OWQ5YTBhZmU2YmY1MjdlZiIsInVzZXJfaWQiOjZ9._sHTb1STLc--9MdneSQcjHAXf_OSZczPvzbnMWym0UY', '2025-05-22 19:34:29.825942', '2025-05-23 19:34:29.000000', 6, '09af7707bcbc4c749d9a0afe6bf527ef'),
(23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAyOTg0NywiaWF0IjoxNzQ3OTQzNDQ3LCJqdGkiOiIwYzM3MzYwOGY0MWY0ODBkYmNlZDlhZGM3YWQzMDZhMiIsInVzZXJfaWQiOjV9.TV0_AMm84qRYO5Z5wN5pMZ8weyo9PuU5VSPmLY6BY8Y', '2025-05-22 19:50:47.802412', '2025-05-23 19:50:47.000000', 5, '0c373608f41f480dbced9adc7ad306a2'),
(24, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAzMTc3MCwiaWF0IjoxNzQ3OTQ1MzcwLCJqdGkiOiI3NDFhMGE0NTYzMTA0M2RlYTgyNGI4YzQ3MzFkNzJiZiIsInVzZXJfaWQiOjV9.glxi9aIL3CBHrYLCAPvoN2WJI6fjKirIjv39PCCTP3Q', '2025-05-22 20:22:50.235468', '2025-05-23 20:22:50.000000', 5, '741a0a45631043dea824b8c4731d72bf'),
(25, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAzMjI3OSwiaWF0IjoxNzQ3OTQ1ODc5LCJqdGkiOiI2MmI2MDVjZDY0Zjk0NjI4YTViMGM5OWMwNDUyOGJhOSIsInVzZXJfaWQiOjV9.cO729MfaozkKXldJXf9wNM9VlO4WAlrkUXS4uRjGGLc', '2025-05-22 20:31:19.663724', '2025-05-23 20:31:19.000000', 5, '62b605cd64f94628a5b0c99c04528ba9'),
(26, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAzMzU2MCwiaWF0IjoxNzQ3OTQ3MTYwLCJqdGkiOiIyNjQ0OGVjMTM4MTU0ZmEzYTkwNzljZGM2ZDZlN2JlMCIsInVzZXJfaWQiOjV9.d6J1vBcBx0WtxoXXk01Jv-zyc8oKyxoZIkwOyzJBPmE', '2025-05-22 20:52:40.357623', '2025-05-23 20:52:40.000000', 5, '26448ec138154fa3a9079cdc6d6e7be0'),
(27, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAzNTI1OSwiaWF0IjoxNzQ3OTQ4ODU5LCJqdGkiOiI5ODgzOTEyZWY2ZjU0NDA5OTdiNWFkZGNiYjdlMjcwZCIsInVzZXJfaWQiOjV9.VkG4_qTu1MlRAVLU0KpsSBK9b37mqVak0ZWTl0q0pBw', '2025-05-22 21:20:59.547942', '2025-05-23 21:20:59.000000', 5, '9883912ef6f5440997b5addcbb7e270d'),
(28, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAzNTQwOCwiaWF0IjoxNzQ3OTQ5MDA4LCJqdGkiOiI3MGNmZWY5NTk5YjM0ZjM5YTI0NWI1ODk5ZTIzZjNiYyIsInVzZXJfaWQiOjV9.W-Ciexq_X6Ovnj1BDCw3y0XfUIghuQ5gBipUCd0Pg88', '2025-05-22 21:23:28.169872', '2025-05-23 21:23:28.000000', 5, '70cfef9599b34f39a245b5899e23f3bc'),
(29, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAzNTUwMiwiaWF0IjoxNzQ3OTQ5MTAyLCJqdGkiOiIxZTdmYzk1NjVjYzM0ZjhjYjlkMDUwZmUxOTY5OGJiNyIsInVzZXJfaWQiOjV9.RykI47_vJ88EXvzdHw--vOVL20oD7gWF2zFy135iXRo', '2025-05-22 21:25:02.855767', '2025-05-23 21:25:02.000000', 5, '1e7fc9565cc34f8cb9d050fe19698bb7'),
(30, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODAzNzIyNSwiaWF0IjoxNzQ3OTUwODI1LCJqdGkiOiJiNWFkZWE1MDY4MDE0ZDAxYTVhZDMxODQxMzVjN2FhMCIsInVzZXJfaWQiOjV9.UWgjtiWFmUeVFY--uK7Fju5dNpaDEIYFs-VOIklcIWU', '2025-05-22 21:53:45.828132', '2025-05-23 21:53:45.000000', 5, 'b5adea5068014d01a5ad3184135c7aa0'),
(31, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODA4ODkzOCwiaWF0IjoxNzQ4MDAyNTM4LCJqdGkiOiJhMjczNDEzNzVhNjU0N2RiYjk4MTZjYmIzNWY0YTY5NSIsInVzZXJfaWQiOjZ9.2UlMwW8cU5TRIJRO1v0xvw0Axlj7_DkxIJXGnZFSwsA', '2025-05-23 12:15:38.689855', '2025-05-24 12:15:38.000000', 6, 'a27341375a6547dbb9816cbb35f4a695'),
(32, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODA5MDI4NCwiaWF0IjoxNzQ4MDAzODg0LCJqdGkiOiI5ZDNhOTQ2M2VhYjE0ODNmODNjMTYxM2YwNzEwYTRiZiIsInVzZXJfaWQiOjZ9.4n7PaZMffi0HaZyIDUQZk98LGE8ITBtr3Ln-oswgNWc', '2025-05-23 12:38:04.461523', '2025-05-24 12:38:04.000000', 6, '9d3a9463eab1483f83c1613f0710a4bf'),
(33, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODA5MjIzMywiaWF0IjoxNzQ4MDA1ODMzLCJqdGkiOiJiNGZkNTRmMjhiMDA0MWY1OGMwMWZmOTllNTA1YTk5YiIsInVzZXJfaWQiOjV9.8RC52VQrpQ6Y4jLRdjSx9E5xhZImVxYXwnD2Wo0druo', '2025-05-23 13:10:33.869566', '2025-05-24 13:10:33.000000', 5, 'b4fd54f28b0041f58c01ff99e505a99b'),
(34, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODA5MjU0MCwiaWF0IjoxNzQ4MDA2MTQwLCJqdGkiOiJhMDdmZjlmOGRiMmM0NzY4YTEwNmJiNmMwMDZmNTFiMSIsInVzZXJfaWQiOjV9.2wlIBthivs5CUV89j3Swmd_GgyDhzqnerSWp6o99oT4', '2025-05-23 13:15:40.037082', '2025-05-24 13:15:40.000000', 5, 'a07ff9f8db2c4768a106bb6c006f51b1'),
(35, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODA5MzM3NiwiaWF0IjoxNzQ4MDA2OTc2LCJqdGkiOiIyNjI1YTQ5MWM4ZmE0Y2ZhYWQ1YmNjNzE5NDc3M2E3NCIsInVzZXJfaWQiOjV9.AWxBwoGUa8wmB4KJkKodGr3UZ7aoliTJ4-LB9Es54XU', '2025-05-23 13:29:36.970429', '2025-05-24 13:29:36.000000', 5, '2625a491c8fa4cfaad5bcc7194773a74'),
(36, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODA5MzQ4MywiaWF0IjoxNzQ4MDA3MDgzLCJqdGkiOiI5YTM4Zjg5OWZlZDg0Zjg1OTFmMTNkMjM2NzA0YzMwMiIsInVzZXJfaWQiOjZ9.GL7xHbBHPUnw0t_tJbhjXorH0t5ikuEE36wz5IXmUKw', '2025-05-23 13:31:23.645315', '2025-05-24 13:31:23.000000', 6, '9a38f899fed84f8591f13d236704c302'),
(37, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODA5NDU2NywiaWF0IjoxNzQ4MDA4MTY3LCJqdGkiOiJjZjg3MmM5NTYyZjc0MjQxODNiNjgwYTUzYjFhNTNiNSIsInVzZXJfaWQiOjV9.zda28NWjlTV5mGLiXiNgYX8BuY2c8lAuC9cQHmcKHtM', '2025-05-23 13:49:27.453250', '2025-05-24 13:49:27.000000', 5, 'cf872c9562f7424183b680a53b1a53b5'),
(38, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODA5NDgzNCwiaWF0IjoxNzQ4MDA4NDM0LCJqdGkiOiI2NDA4Mjk3NmNmMjM0N2YzOGQxMTg5OWQyYTg1OTBkMCIsInVzZXJfaWQiOjV9.8bOf_dTkfwKMuuf-MxeqSfxyXs233l01BC9Hc54yFVw', '2025-05-23 13:53:54.187321', '2025-05-24 13:53:54.000000', 5, '64082976cf2347f38d11899d2a8590d0'),
(39, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODA5NTM5NiwiaWF0IjoxNzQ4MDA4OTk2LCJqdGkiOiI4YjZjODhiNDQ4OTM0N2RhODkyODgzYWZlZDBlNGI4YSIsInVzZXJfaWQiOjV9.HldyobRkBLQNstrCw7-Vp2k9qyUR2wDmXR3GhdGKQqM', '2025-05-23 14:03:16.791619', '2025-05-24 14:03:16.000000', 5, '8b6c88b4489347da892883afed0e4b8a'),
(40, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODA5NzA5NiwiaWF0IjoxNzQ4MDEwNjk2LCJqdGkiOiIzNTZlODdlNTY5MzU0MTc1OWRkZGZlNDQ1ODFhZjBiMyIsInVzZXJfaWQiOjV9.1fzTdyHiiakKbE-eidTwPRDsjkIOHD09f0nA_inuzQE', '2025-05-23 14:31:36.261016', '2025-05-24 14:31:36.000000', 5, '356e87e5693541759dddfe44581af0b3'),
(41, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODA5ODAzNiwiaWF0IjoxNzQ4MDExNjM2LCJqdGkiOiI4NGE5Nzk3MWFlNmQ0ZDY2OWQ5Y2M5NTg2NDYzM2UyYiIsInVzZXJfaWQiOjV9.XPIWAlm0NXiX-kQl_PBXntqfnqNbUK1rKmNZTw5eF2o', '2025-05-23 14:47:16.118826', '2025-05-24 14:47:16.000000', 5, '84a97971ae6d4d669d9cc95864633e2b'),
(42, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE1NjQzOSwiaWF0IjoxNzQ4MDcwMDM5LCJqdGkiOiI0M2E2NjQwMGUyZWE0MDJmODE1NDgyMGRjMDE5MTcyYSIsInVzZXJfaWQiOjZ9.newu5uFGMzIo8_nhnSMMeoT3WpKBUAbH_5RIoWa7FuA', '2025-05-24 07:00:39.106069', '2025-05-25 07:00:39.000000', 6, '43a66400e2ea402f8154820dc019172a'),
(43, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE1NzExMSwiaWF0IjoxNzQ4MDcwNzExLCJqdGkiOiI4YzY4ZGNhZmU3ZTk0ZDE0YWYzOGIwZmI1MzQ4NmFiMiIsInVzZXJfaWQiOjZ9.1y7omQs1dYurCoKobpr9TXWlQ_SAcbBNqV5T1417TOA', '2025-05-24 07:11:51.232875', '2025-05-25 07:11:51.000000', 6, '8c68dcafe7e94d14af38b0fb53486ab2'),
(44, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE1NzYwNiwiaWF0IjoxNzQ4MDcxMjA2LCJqdGkiOiIwYjk3NjMwNDYwNzA0ZGQ5OTJkOWFmYzZjYjc5ZTJiNyIsInVzZXJfaWQiOjZ9.YMdMpIAco3HROlY3i4j5xTlAnky5OW7Dmi0DoYUGMC8', '2025-05-24 07:20:06.294698', '2025-05-25 07:20:06.000000', 6, '0b97630460704dd992d9afc6cb79e2b7'),
(45, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE1NzgxNSwiaWF0IjoxNzQ4MDcxNDE1LCJqdGkiOiJhMjE2MWU0YzczNmI0YmMyYmFlMTk3MjYxZmNmNTdjYSIsInVzZXJfaWQiOjZ9.zJKOQ1pVtCdj1Au-6ywDO69tyR2uARFyETMWuETonG8', '2025-05-24 07:23:35.872002', '2025-05-25 07:23:35.000000', 6, 'a2161e4c736b4bc2bae197261fcf57ca'),
(46, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE1ODE3MSwiaWF0IjoxNzQ4MDcxNzcxLCJqdGkiOiJhMTY2NWJmYjlmMzY0NzZlOGJkY2Y2ODY4ZmNlNzEyZiIsInVzZXJfaWQiOjZ9.0ibg6nlLIgPm68GVTQFq4YF2OLMQJ3M0wJTqJsm-pJ0', '2025-05-24 07:29:31.206137', '2025-05-25 07:29:31.000000', 6, 'a1665bfb9f36476e8bdcf6868fce712f'),
(47, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE1ODc0MSwiaWF0IjoxNzQ4MDcyMzQxLCJqdGkiOiI1ZjdjNjZkMmYxYmE0MWFhYjg1Yjc4YmQ1MDQ1MTA2NyIsInVzZXJfaWQiOjZ9.11iNMyh1mICl0pqYA91xZYUOGqC3KwuA1DWG8DkOOvE', '2025-05-24 07:39:01.396982', '2025-05-25 07:39:01.000000', 6, '5f7c66d2f1ba41aab85b78bd50451067'),
(48, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE1ODg4MiwiaWF0IjoxNzQ4MDcyNDgyLCJqdGkiOiI1MTAxNjBlN2NlOWE0MjAxYWNiMGE1Zjc5M2U4MWQxMiIsInVzZXJfaWQiOjZ9.CH5QBJOU1uqUG0M4x9yfxFmJsOx4CMNyUm__Ff67eY4', '2025-05-24 07:41:22.962571', '2025-05-25 07:41:22.000000', 6, '510160e7ce9a4201acb0a5f793e81d12'),
(49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2MDY5OCwiaWF0IjoxNzQ4MDc0Mjk4LCJqdGkiOiIwMWZkZTkxNjU4Nzc0NWIwODA2NzFjYmQ0Y2I1ZjgxYiIsInVzZXJfaWQiOjZ9.2tSxix20BPh-79NtTt6sRVeMALaqalMqqjM9kknAROk', '2025-05-24 08:11:38.440048', '2025-05-25 08:11:38.000000', 6, '01fde916587745b080671cbd4cb5f81b'),
(50, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2MjM3NCwiaWF0IjoxNzQ4MDc1OTc0LCJqdGkiOiIyYzk4OTMwODQ3YTM0ODc3ODgzZGM3ZWYzZTMyMGZlYSIsInVzZXJfaWQiOjZ9.DrgAwC6KSuUlotgg9GjgYEaSvb044VpTrFDKxS84RhU', '2025-05-24 08:39:34.421487', '2025-05-25 08:39:34.000000', 6, '2c98930847a34877883dc7ef3e320fea'),
(51, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2MjY4NiwiaWF0IjoxNzQ4MDc2Mjg2LCJqdGkiOiIzZWFhNDcwNDA5MTY0ZWU1OGEwOTMyNmY5NmQ2MjMyMSIsInVzZXJfaWQiOjZ9.Mb8hfET7TdxuZCgcYpPC6plVPKmZwhTqJvHOH66fT7s', '2025-05-24 08:44:46.674557', '2025-05-25 08:44:46.000000', 6, '3eaa470409164ee58a09326f96d62321'),
(52, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2MzQwNywiaWF0IjoxNzQ4MDc3MDA3LCJqdGkiOiJlYzM5ODJkOTE0NzU0NmM0YWYzODEwMjZiNGVkY2YyNSIsInVzZXJfaWQiOjZ9.CP9rn7RVcpl4e0dfXWgrwejBR7e37eDPwBehy1Dshq0', '2025-05-24 08:56:47.751025', '2025-05-25 08:56:47.000000', 6, 'ec3982d9147546c4af381026b4edcf25'),
(53, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2MzU5NCwiaWF0IjoxNzQ4MDc3MTk0LCJqdGkiOiI3YjBiOTZiZThlMzk0MmU1YWM5YTkzNjA5NDJiOGZhMCIsInVzZXJfaWQiOjZ9.Y7_tvzFGH-bsUuLCabIcbdEQA2rj26B83IPKFWNcaIg', '2025-05-24 08:59:54.771056', '2025-05-25 08:59:54.000000', 6, '7b0b96be8e3942e5ac9a9360942b8fa0'),
(54, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2MzY1NCwiaWF0IjoxNzQ4MDc3MjU0LCJqdGkiOiJkMjIzNWE3MWNiNjc0ZjA2Yjk3OWJhMGEwMGExMzdkMSIsInVzZXJfaWQiOjZ9.vpidOrAWVgBWBSLe9wEuMog1m652WN475OSHvVRmNj8', '2025-05-24 09:00:54.250306', '2025-05-25 09:00:54.000000', 6, 'd2235a71cb674f06b979ba0a00a137d1'),
(55, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2NDA3NCwiaWF0IjoxNzQ4MDc3Njc0LCJqdGkiOiI3YjRjYzAzYTFhOWY0YmJjOTEyODk2NTAyYmU4MjFlNCIsInVzZXJfaWQiOjZ9.keGMc7edDB-AlMyV5E5-PHUzh21p3J-mJlwclQDGwj0', '2025-05-24 09:07:54.845903', '2025-05-25 09:07:54.000000', 6, '7b4cc03a1a9f4bbc912896502be821e4'),
(56, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2NDE2MywiaWF0IjoxNzQ4MDc3NzYzLCJqdGkiOiI1NzY3MjdlM2Y0MzU0NWU0YjM1NDZiODNlZTcwYTYzYiIsInVzZXJfaWQiOjV9.Vawn8_EVqGTzkvSar-jkKCYdPXmA-kDha0pqL53KsXg', '2025-05-24 09:09:23.192306', '2025-05-25 09:09:23.000000', 5, '576727e3f43545e4b3546b83ee70a63b'),
(57, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2NDYyMCwiaWF0IjoxNzQ4MDc4MjIwLCJqdGkiOiI2ZDE0YmE4NTQ3ZDE0OTlhODZlNzA4NGM1YWY0OWM1ZCIsInVzZXJfaWQiOjZ9.kXJU3yaBNRY1qarERmNC5PoAVo0XlTzj4rY-vLmI8Pg', '2025-05-24 09:17:00.775879', '2025-05-25 09:17:00.000000', 6, '6d14ba8547d1499a86e7084c5af49c5d'),
(58, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2NDg1MiwiaWF0IjoxNzQ4MDc4NDUyLCJqdGkiOiJmZTIxMjNmOTdhNjY0ZWMyOTlmNDM5ZDIwZTFmYTg5YiIsInVzZXJfaWQiOjZ9.SlqOYRzkTm_2oNufgSJeZm6BldTn2m8a_REEORgBe8Y', '2025-05-24 09:20:52.816016', '2025-05-25 09:20:52.000000', 6, 'fe2123f97a664ec299f439d20e1fa89b'),
(59, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2NTE1OSwiaWF0IjoxNzQ4MDc4NzU5LCJqdGkiOiIyNWZkYmYxYWJmMTA0ZDdjOTdlYmFiMDRiZmJiZmExYiIsInVzZXJfaWQiOjZ9.hSPFyTTzx0UjEHu66sVLeF9qcT676u2ynP1efRbynC4', '2025-05-24 09:25:59.363138', '2025-05-25 09:25:59.000000', 6, '25fdbf1abf104d7c97ebab04bfbbfa1b'),
(60, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc0ODE2NTM2NiwiaWF0IjoxNzQ4MDc4OTY2LCJqdGkiOiIwNjQzYzMwNTA4OGQ0ZjUyOGY1MWQyYTEwZGMwZmE2MiIsInVzZXJfaWQiOjZ9.NBUvlRqUhMgBUQ9jLWMFXRyOFkLcpnES9t1bAqNYE_Q', '2025-05-24 09:29:26.634441', '2025-05-25 09:29:26.000000', 6, '0643c305088d4f528f51d2a10dc0fa62');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti_utente`
--

CREATE TABLE `utenti_utente` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `data_registrazione` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `utenti_utente`
--

INSERT INTO `utenti_utente` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `data_registrazione`) VALUES
(1, 'pbkdf2_sha256$600000$nNX05GWrE4IbBpHM5gZqU2$AWo7vYGGEUTrRY+r+TC9VE+brlXeX8I3QngTgVCf7sE=', NULL, 0, 'provauser', '', '', 0, 1, '2025-05-12 11:21:14.461021', 'prova@example.com', '2025-05-12 11:21:14.611255'),
(2, 'pbkdf2_sha256$600000$J5rKnINAtgSGFfmIpKx3jB$4uU6bpQCY4Apt3lb78pH7QpwvEDzPAnaapNKsnR6jIg=', NULL, 0, 'mario', '', '', 0, 1, '2025-05-17 09:42:32.171235', 'mario@example.com', '2025-05-17 09:42:32.296014'),
(3, 'pbkdf2_sha256$600000$01Pb8eyL7yJt2bMPbAexBK$BQSPinTjAaB/eRyJ+B72hDVt6LJvC8YapAs4LjgfZXU=', NULL, 0, 'nicob', '', '', 0, 1, '2025-05-21 11:05:00.819078', 'nico@gmail.com', '2025-05-21 11:05:00.966427'),
(4, 'pbkdf2_sha256$600000$3prXEM1ljMAUC501tpB6EY$wTUCscFhw4OwyFmhs/tcqB9llg1cjh6GYd8tQnsfRDs=', NULL, 0, 'Giorgino', '', '', 0, 1, '2025-05-21 11:08:06.357088', 'giorgio@gmail.com', '2025-05-21 11:08:06.486530'),
(5, 'pbkdf2_sha256$600000$QpalJz97qOOU93ID4LHwNd$R9EILb9r1PIwaffB/EcvP7/x52J9DrHhMWfn8d0WsN8=', NULL, 0, 'luca', '', '', 0, 1, '2025-05-21 11:19:13.758806', 'luca@gmail.com', '2025-05-21 11:19:13.920700'),
(6, 'pbkdf2_sha256$600000$jzJ5JzV58nWR4Ys0MH9PQm$0F4H8YoAwKpjhiLBmi2f8UR6KrnRChEZlm3KVcgpc2c=', NULL, 0, 'gio', '', '', 0, 1, '2025-05-21 11:19:46.299096', 'gio@gmail.com', '2025-05-21 11:19:46.445740');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti_utente_groups`
--

CREATE TABLE `utenti_utente_groups` (
  `id` bigint(20) NOT NULL,
  `utente_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti_utente_user_permissions`
--

CREATE TABLE `utenti_utente_user_permissions` (
  `id` bigint(20) NOT NULL,
  `utente_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indici per le tabelle `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indici per le tabelle `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indici per le tabelle `badges_badge`
--
ALTER TABLE `badges_badge`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `badges_utentebadge`
--
ALTER TABLE `badges_utentebadge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `badges_utentebadge_badge_id_20140e59_fk_badges_badge_id` (`badge_id`),
  ADD KEY `badges_utentebadge_utente_id_e31a834e_fk_utenti_utente_id` (`utente_id`);

--
-- Indici per le tabelle `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_utenti_utente_id` (`user_id`);

--
-- Indici per le tabelle `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indici per le tabelle `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indici per le tabelle `gruppi_gruppo`
--
ALTER TABLE `gruppi_gruppo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gruppi_gruppo_creatore_id_9ea93219_fk_utenti_utente_id` (`creatore_id`);

--
-- Indici per le tabelle `gruppi_utentegruppo`
--
ALTER TABLE `gruppi_utentegruppo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gruppi_utentegruppo_gruppo_id_8a0026bf_fk_gruppi_gruppo_id` (`gruppo_id`),
  ADD KEY `gruppi_utentegruppo_utente_id_dae41ef5_fk_utenti_utente_id` (`utente_id`);

--
-- Indici per le tabelle `posts_commento`
--
ALTER TABLE `posts_commento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_commento_autore_id_f8348ccc_fk_utenti_utente_id` (`autore_id`),
  ADD KEY `posts_commento_post_id_9f7d13e6_fk_posts_post_id` (`post_id`);

--
-- Indici per le tabelle `posts_post`
--
ALTER TABLE `posts_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_autore_id_6b15a882_fk_utenti_utente_id` (`autore_id`),
  ADD KEY `posts_post_gruppo_id_79656f1b_fk_gruppi_gruppo_id` (`gruppo_id`);

--
-- Indici per le tabelle `prodotti_prodotto`
--
ALTER TABLE `prodotti_prodotto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barcode` (`barcode`);

--
-- Indici per le tabelle `prodotti_prodottoscansionato`
--
ALTER TABLE `prodotti_prodottoscansionato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prodotti_prodottosca_prodotto_id_0ba50f7a_fk_prodotti_` (`prodotto_id`),
  ADD KEY `prodotti_prodottosca_utente_id_ebcd96ae_fk_utenti_ut` (`utente_id`);

--
-- Indici per le tabelle `quiz_domanda`
--
ALTER TABLE `quiz_domanda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_domanda_quiz_id_f9b10d5d_fk_quiz_quiz_id` (`quiz_id`);

--
-- Indici per le tabelle `quiz_quiz`
--
ALTER TABLE `quiz_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `quiz_risposta`
--
ALTER TABLE `quiz_risposta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_risposta_domanda_id_782f3cb4_fk_quiz_domanda_id` (`domanda_id`);

--
-- Indici per le tabelle `quiz_risultatoquiz`
--
ALTER TABLE `quiz_risultatoquiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_risultatoquiz_quiz_id_6505db95_fk_quiz_quiz_id` (`quiz_id`),
  ADD KEY `quiz_risultatoquiz_utente_id_7de280ee_fk_utenti_utente_id` (`utente_id`);

--
-- Indici per le tabelle `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id` (`token_id`);

--
-- Indici per le tabelle `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  ADD KEY `token_blacklist_outs_user_id_83bc629a_fk_utenti_ut` (`user_id`);

--
-- Indici per le tabelle `utenti_utente`
--
ALTER TABLE `utenti_utente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indici per le tabelle `utenti_utente_groups`
--
ALTER TABLE `utenti_utente_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `utenti_utente_groups_utente_id_group_id_c53562d7_uniq` (`utente_id`,`group_id`),
  ADD KEY `utenti_utente_groups_group_id_bea74d9a_fk_auth_group_id` (`group_id`);

--
-- Indici per le tabelle `utenti_utente_user_permissions`
--
ALTER TABLE `utenti_utente_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `utenti_utente_user_permi_utente_id_permission_id_680a5496_uniq` (`utente_id`,`permission_id`),
  ADD KEY `utenti_utente_user_p_permission_id_3edfdea6_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT per la tabella `badges_badge`
--
ALTER TABLE `badges_badge`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `badges_utentebadge`
--
ALTER TABLE `badges_utentebadge`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT per la tabella `gruppi_gruppo`
--
ALTER TABLE `gruppi_gruppo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `gruppi_utentegruppo`
--
ALTER TABLE `gruppi_utentegruppo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `posts_commento`
--
ALTER TABLE `posts_commento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `posts_post`
--
ALTER TABLE `posts_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `prodotti_prodotto`
--
ALTER TABLE `prodotti_prodotto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `prodotti_prodottoscansionato`
--
ALTER TABLE `prodotti_prodottoscansionato`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `quiz_domanda`
--
ALTER TABLE `quiz_domanda`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `quiz_quiz`
--
ALTER TABLE `quiz_quiz`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `quiz_risposta`
--
ALTER TABLE `quiz_risposta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT per la tabella `quiz_risultatoquiz`
--
ALTER TABLE `quiz_risultatoquiz`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT per la tabella `utenti_utente`
--
ALTER TABLE `utenti_utente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `utenti_utente_groups`
--
ALTER TABLE `utenti_utente_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `utenti_utente_user_permissions`
--
ALTER TABLE `utenti_utente_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limiti per la tabella `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limiti per la tabella `badges_utentebadge`
--
ALTER TABLE `badges_utentebadge`
  ADD CONSTRAINT `badges_utentebadge_badge_id_20140e59_fk_badges_badge_id` FOREIGN KEY (`badge_id`) REFERENCES `badges_badge` (`id`),
  ADD CONSTRAINT `badges_utentebadge_utente_id_e31a834e_fk_utenti_utente_id` FOREIGN KEY (`utente_id`) REFERENCES `utenti_utente` (`id`);

--
-- Limiti per la tabella `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_utenti_utente_id` FOREIGN KEY (`user_id`) REFERENCES `utenti_utente` (`id`);

--
-- Limiti per la tabella `gruppi_gruppo`
--
ALTER TABLE `gruppi_gruppo`
  ADD CONSTRAINT `gruppi_gruppo_creatore_id_9ea93219_fk_utenti_utente_id` FOREIGN KEY (`creatore_id`) REFERENCES `utenti_utente` (`id`);

--
-- Limiti per la tabella `gruppi_utentegruppo`
--
ALTER TABLE `gruppi_utentegruppo`
  ADD CONSTRAINT `gruppi_utentegruppo_gruppo_id_8a0026bf_fk_gruppi_gruppo_id` FOREIGN KEY (`gruppo_id`) REFERENCES `gruppi_gruppo` (`id`),
  ADD CONSTRAINT `gruppi_utentegruppo_utente_id_dae41ef5_fk_utenti_utente_id` FOREIGN KEY (`utente_id`) REFERENCES `utenti_utente` (`id`);

--
-- Limiti per la tabella `posts_commento`
--
ALTER TABLE `posts_commento`
  ADD CONSTRAINT `posts_commento_autore_id_f8348ccc_fk_utenti_utente_id` FOREIGN KEY (`autore_id`) REFERENCES `utenti_utente` (`id`),
  ADD CONSTRAINT `posts_commento_post_id_9f7d13e6_fk_posts_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts_post` (`id`);

--
-- Limiti per la tabella `posts_post`
--
ALTER TABLE `posts_post`
  ADD CONSTRAINT `posts_post_autore_id_6b15a882_fk_utenti_utente_id` FOREIGN KEY (`autore_id`) REFERENCES `utenti_utente` (`id`),
  ADD CONSTRAINT `posts_post_gruppo_id_79656f1b_fk_gruppi_gruppo_id` FOREIGN KEY (`gruppo_id`) REFERENCES `gruppi_gruppo` (`id`);

--
-- Limiti per la tabella `prodotti_prodottoscansionato`
--
ALTER TABLE `prodotti_prodottoscansionato`
  ADD CONSTRAINT `prodotti_prodottosca_prodotto_id_0ba50f7a_fk_prodotti_` FOREIGN KEY (`prodotto_id`) REFERENCES `prodotti_prodotto` (`id`),
  ADD CONSTRAINT `prodotti_prodottosca_utente_id_ebcd96ae_fk_utenti_ut` FOREIGN KEY (`utente_id`) REFERENCES `utenti_utente` (`id`);

--
-- Limiti per la tabella `quiz_domanda`
--
ALTER TABLE `quiz_domanda`
  ADD CONSTRAINT `quiz_domanda_quiz_id_f9b10d5d_fk_quiz_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_quiz` (`id`);

--
-- Limiti per la tabella `quiz_risposta`
--
ALTER TABLE `quiz_risposta`
  ADD CONSTRAINT `quiz_risposta_domanda_id_782f3cb4_fk_quiz_domanda_id` FOREIGN KEY (`domanda_id`) REFERENCES `quiz_domanda` (`id`);

--
-- Limiti per la tabella `quiz_risultatoquiz`
--
ALTER TABLE `quiz_risultatoquiz`
  ADD CONSTRAINT `quiz_risultatoquiz_quiz_id_6505db95_fk_quiz_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_quiz` (`id`),
  ADD CONSTRAINT `quiz_risultatoquiz_utente_id_7de280ee_fk_utenti_utente_id` FOREIGN KEY (`utente_id`) REFERENCES `utenti_utente` (`id`);

--
-- Limiti per la tabella `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`);

--
-- Limiti per la tabella `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_utenti_ut` FOREIGN KEY (`user_id`) REFERENCES `utenti_utente` (`id`);

--
-- Limiti per la tabella `utenti_utente_groups`
--
ALTER TABLE `utenti_utente_groups`
  ADD CONSTRAINT `utenti_utente_groups_group_id_bea74d9a_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `utenti_utente_groups_utente_id_bcfc9306_fk_utenti_utente_id` FOREIGN KEY (`utente_id`) REFERENCES `utenti_utente` (`id`);

--
-- Limiti per la tabella `utenti_utente_user_permissions`
--
ALTER TABLE `utenti_utente_user_permissions`
  ADD CONSTRAINT `utenti_utente_user_p_permission_id_3edfdea6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `utenti_utente_user_p_utente_id_98194f41_fk_utenti_ut` FOREIGN KEY (`utente_id`) REFERENCES `utenti_utente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
