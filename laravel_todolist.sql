-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26-Set-2017 às 21:44
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_todolist`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `lista_tarefas`
--

CREATE TABLE `lista_tarefas` (
  `id` int(10) UNSIGNED NOT NULL,
  `texto` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `lista_tarefas`
--

INSERT INTO `lista_tarefas` (`id`, `texto`, `autor`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Comprar passagens aéreas.', 'João', 'Pendente', '2017-09-25 18:25:01', '2017-09-26 18:59:09'),
(2, 'Reservar hotel.', 'João', 'Pendente', '2017-09-25 18:25:01', '2017-09-26 18:59:13'),
(3, 'Preparar slides para a apresentação.', 'João', 'Concluído', '2017-09-25 18:25:01', '2017-09-26 18:59:10'),
(4, 'Laudantium velit ex quisquam sed recusandae Temporibus in vitae commodo', 'Exercitation dolorem sint dolorem aliquip cumque ab est optio et aut magna atque sunt iste dignissimos saepe enim quia et', 'Concluído', '2017-09-25 23:01:40', '2017-09-25 23:29:13'),
(5, 'Qui aut ducimus amet nesciunt eiusmod aliquid officia rerum vel in voluptatem Consequatur', 'Rem aspernatur illo voluptatibus quam incididunt voluptates sed odio', 'Pendente', '2017-09-25 23:01:50', '2017-09-26 18:59:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_09_25_140529_create_table_listaDeTarefas', 1),
(4, '2017_09_26_152208_add_token_to_users', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `api_token`) VALUES
(1, 'Adriano A costa', 'sdcomputadores@gmail.com', '123456', NULL, '2017-09-26 18:51:19', NULL, '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lista_tarefas`
--
ALTER TABLE `lista_tarefas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lista_tarefas`
--
ALTER TABLE `lista_tarefas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
