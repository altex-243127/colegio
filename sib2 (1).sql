-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-05-2023 a las 11:41:48
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sib2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_activities_extra`
--

CREATE TABLE `2023_activities_extra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `ref` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_activities_extra_activities`
--

CREATE TABLE `2023_activities_extra_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activities_extra_id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable_id` int(11) NOT NULL,
  `executor_id` int(11) NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_activities_extra_resources`
--

CREATE TABLE `2023_activities_extra_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `center_cost_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_balanced_scorecards`
--

CREATE TABLE `2023_balanced_scorecards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formula` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desired_goal` int(11) NOT NULL,
  `acceptable_goal` int(11) NOT NULL,
  `minimum_goal` int(11) NOT NULL,
  `measurement_frequency_id` int(11) NOT NULL,
  `evaluation_frequency_id` int(11) NOT NULL,
  `measurement_source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsible_measurement_id` int(11) NOT NULL,
  `head_analysis_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_budgets`
--

CREATE TABLE `2023_budgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `objective_id` int(11) NOT NULL,
  `strategy_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_budget_activities`
--

CREATE TABLE `2023_budget_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `budget_id` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsible_id` int(11) NOT NULL,
  `executor_id` int(11) NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_budget_resources`
--

CREATE TABLE `2023_budget_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `center_cost_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_competitiveness_matrix_factors`
--

CREATE TABLE `2023_competitiveness_matrix_factors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weighing` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_dofa_opportunities`
--

CREATE TABLE `2023_dofa_opportunities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aspect_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_dofa_strengths`
--

CREATE TABLE `2023_dofa_strengths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `factor_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_dofa_threats`
--

CREATE TABLE `2023_dofa_threats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aspect_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_dofa_weaknesses`
--

CREATE TABLE `2023_dofa_weaknesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `factor_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_factor_school_scores`
--

CREATE TABLE `2023_factor_school_scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `factor_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `score` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_gestion_interest_groups_needs`
--

CREATE TABLE `2023_gestion_interest_groups_needs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_groups_need_id` int(11) NOT NULL,
  `gestion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_interest_groups`
--

CREATE TABLE `2023_interest_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `power` tinyint(1) NOT NULL,
  `interest` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `need_id` int(11) NOT NULL,
  `expectation_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `risk` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_interest_groups_expectations`
--

CREATE TABLE `2023_interest_groups_expectations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_interest_groups_needs`
--

CREATE TABLE `2023_interest_groups_needs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_objectives_balanced_scorecards`
--

CREATE TABLE `2023_objectives_balanced_scorecards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `objective_id` int(11) NOT NULL,
  `strategy_id` int(11) NOT NULL,
  `balanced_scorecard_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_pestel_aspects`
--

CREATE TABLE `2023_pestel_aspects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `factor_id` int(11) NOT NULL,
  `impact` tinyint(1) NOT NULL,
  `intensity` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_quotes`
--

CREATE TABLE `2023_quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `request_supply_id` int(11) NOT NULL,
  `provider1_id` int(11) DEFAULT NULL,
  `provider1_ratings` json DEFAULT NULL,
  `provider2_id` int(11) DEFAULT NULL,
  `provider2_ratings` json DEFAULT NULL,
  `provider3_id` int(11) DEFAULT NULL,
  `provider3_ratings` json DEFAULT NULL,
  `winner` smallint(6) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_quote_provider`
--

CREATE TABLE `2023_quote_provider` (
  `quote_id` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_request_money`
--

CREATE TABLE `2023_request_money` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_request_supplies`
--

CREATE TABLE `2023_request_supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resources_id` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_schools`
--

CREATE TABLE `2023_schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `2023_schools`
--

INSERT INTO `2023_schools` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'San Bartolome', '2023-05-10 16:32:14', '2023-05-10 16:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_strategic_indicators`
--

CREATE TABLE `2023_strategic_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `perspective_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formula` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desired_goal` int(11) NOT NULL,
  `acceptable_goal` int(11) NOT NULL,
  `minimum_goal` int(11) NOT NULL,
  `measurement_frequency_id` int(11) NOT NULL,
  `evaluation_frequency_id` int(11) NOT NULL,
  `measurement_source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsible_measurement_id` int(11) NOT NULL,
  `head_analysis_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_strategic_issues_categories`
--

CREATE TABLE `2023_strategic_issues_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weighing` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_strategic_issues_categories_objectives`
--

CREATE TABLE `2023_strategic_issues_categories_objectives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `objective` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perspective_id` int(11) NOT NULL,
  `premise` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_strategic_issues_matrix_scores`
--

CREATE TABLE `2023_strategic_issues_matrix_scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `strategic_issues_category_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_strategic_issues_matrix_users`
--

CREATE TABLE `2023_strategic_issues_matrix_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_strategic_issues_strategies`
--

CREATE TABLE `2023_strategic_issues_strategies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_strategy_issues`
--

CREATE TABLE `2023_strategy_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `strategy_id` int(11) NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_strengths_opportunities_score_users`
--

CREATE TABLE `2023_strengths_opportunities_score_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_qualify_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `strength_opportunity_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_strengths_threats_score_users`
--

CREATE TABLE `2023_strengths_threats_score_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_qualify_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `strength_threat_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_strength_opportunities`
--

CREATE TABLE `2023_strength_opportunities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `strength_id` int(11) NOT NULL,
  `opportunity_id` int(11) NOT NULL,
  `score` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_strength_threats`
--

CREATE TABLE `2023_strength_threats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `strength_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL,
  `score` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_transfers`
--

CREATE TABLE `2023_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `accion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejecutor_id` int(11) NOT NULL,
  `valor` bigint(20) NOT NULL,
  `area_saldo_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_users_qualities`
--

CREATE TABLE `2023_users_qualities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `StrengthOpportunity` tinyint(1) NOT NULL DEFAULT '0',
  `StrengthThreat` tinyint(1) NOT NULL DEFAULT '0',
  `WeaknessOpportunity` tinyint(1) NOT NULL DEFAULT '0',
  `WeaknessThreat` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_weaknesses_opportunities_score_users`
--

CREATE TABLE `2023_weaknesses_opportunities_score_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_qualify_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `weakness_opportunity_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_weaknesses_threats_score_users`
--

CREATE TABLE `2023_weaknesses_threats_score_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_qualify_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `weakness_threat_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_weakness_opportunities`
--

CREATE TABLE `2023_weakness_opportunities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `weakness_id` int(11) NOT NULL,
  `opportunity_id` int(11) NOT NULL,
  `score` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_weakness_threats`
--

CREATE TABLE `2023_weakness_threats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `weakness_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL,
  `score` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_workflows`
--

CREATE TABLE `2023_workflows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `2023_workflows`
--

INSERT INTO `2023_workflows` (`id`, `task`, `state`, `created_at`, `updated_at`) VALUES
(1, 'Matriz perfil de competitividad', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(2, 'Pestel', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(3, 'Dofa', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(4, 'Resumen de estrategias', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(5, 'Grupos de interes', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(6, 'Matriz de cobertura de los temas estrategicos', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(7, 'Temas estrategicos', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(8, 'Cuadro de mando integral', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(9, 'Solicitud de presupuesto', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(10, 'Aprobacion Presupuesto', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(11, 'Presupuesto aprobado', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(12, 'Asignacion de cuentas', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(13, 'Solicitud de flujo de caja', 0, '2023-05-10 16:32:14', '2023-05-10 16:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `2023_workflow_depends`
--

CREATE TABLE `2023_workflow_depends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` int(11) NOT NULL,
  `depends_task_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `2023_workflow_depends`
--

INSERT INTO `2023_workflow_depends` (`id`, `task_id`, `depends_task_id`, `created_at`, `updated_at`) VALUES
(1, 4, 3, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(2, 6, 3, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(3, 7, 4, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(4, 7, 6, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(5, 8, 4, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(6, 8, 6, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(7, 8, 7, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(8, 9, 8, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(9, 10, 8, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(10, 10, 9, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(11, 11, 10, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(12, 12, 9, '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(13, 13, 10, '2023-05-10 16:32:14', '2023-05-10 16:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories_shopping`
--

CREATE TABLE `categories_shopping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `center_costs`
--

CREATE TABLE `center_costs` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frequencies`
--

CREATE TABLE `frequencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `frequencies`
--

INSERT INTO `frequencies` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mensual', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(2, 'Bimensual', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(3, 'Trimensual', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(4, 'Semestral', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(5, 'Anual', '2023-05-10 16:32:14', '2023-05-10 16:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interest_groups_categories`
--

CREATE TABLE `interest_groups_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `interest_groups_categories`
--

INSERT INTO `interest_groups_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Alta dirección', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(2, 'Beneficiarios', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(3, 'Competidores', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(4, 'Empleados Y Trabajadores', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(5, 'Entidades Financieras', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(6, 'Entidades Gubernamentales', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(7, 'Entorno Social', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(8, 'Medio Ambiente', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(9, 'Medios De Comunicación', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(10, 'Propiedad', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(11, 'Proveedores Y Subcontratistas', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(12, 'Redes Y Convenio', '2023-05-10 16:32:14', '2023-05-10 16:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2020_04_30_112146_create_workflows_table', 1),
(9, '2020_04_30_112510_create_workflow_depends_table', 1),
(10, '2020_05_05_171733_create_factors_table', 1),
(11, '2020_05_05_172305_create_weaknesses_table', 1),
(12, '2020_05_05_175230_create_strengths_table', 1),
(13, '2020_05_13_091630_create_schools_table', 1),
(14, '2020_05_15_165402_create_factor_school_scores_table', 1),
(15, '2020_05_21_140654_create_aspects_table', 1),
(16, '2020_05_21_140857_create_pestel_factors_table', 1),
(17, '2020_05_21_142814_create_threats_table', 1),
(18, '2020_05_21_143042_create_opportunities_table', 1),
(19, '2020_05_23_101204_create_strength_opportunities_table', 1),
(20, '2020_05_23_102846_create_strengths_threats_table', 1),
(21, '2020_05_23_102909_create_weaknesses_threats_table', 1),
(22, '2020_05_23_102926_create_weaknesses_opportunities_table', 1),
(23, '2020_05_23_103116_create_strengths_opportunities_score_users_table', 1),
(24, '2020_05_23_103142_create_strengths_threats_score_users_table', 1),
(25, '2020_05_23_103210_create_weaknesses_threats_score_users_table', 1),
(26, '2020_05_23_103241_create_weaknesses_opportunities_score_users_table', 1),
(27, '2020_05_23_103316_create_users_qualities_table', 1),
(28, '2020_06_03_141738_create_notifications_table', 1),
(29, '2020_06_05_201707_create_strategic_issues_categories_table', 1),
(30, '2020_06_12_115039_create_strategies_table', 1),
(31, '2020_06_12_135924_create_strategy_issues_table', 1),
(32, '2020_06_23_111859_create_categories_table', 1),
(33, '2020_06_23_114647_create_needs_table', 1),
(34, '2020_06_23_114710_create_expectations_table', 1),
(35, '2020_06_23_114731_create_groups_table', 1),
(36, '2020_06_26_143827_create_strategic_issues_matrix_scores_table', 1),
(37, '2020_07_01_095530_create_perspectives_table', 1),
(38, '2020_07_01_122948_create_objectives_table', 1),
(39, '2020_07_03_083329_create_strategic_indicators_table', 1),
(40, '2020_07_03_083950_create_frequencies_table', 1),
(41, '2020_07_07_144101_create_balanced_scorecards_table', 1),
(42, '2020_07_07_182947_create_perspective_balanced_scorecards_table', 1),
(43, '2020_07_14_064023_create_areas_table', 1),
(44, '2020_07_28_113215_create_budgets_table', 1),
(45, '2020_07_31_071044_create_activities_table', 1),
(46, '2020_07_31_084455_update_user_table_col_area', 1),
(47, '2020_07_31_084708_create_offices_table', 1),
(48, '2020_08_04_101500_create_resources_table', 1),
(49, '2020_08_04_102032_create_center_costs_table', 1),
(50, '2020_08_11_074445_create_request_money_table', 1),
(51, '2020_08_21_070227_create_years_table', 1),
(52, '2020_10_06_083311_create_modules_table', 1),
(53, '2020_10_06_084117_create_module_actions_table', 1),
(54, '2020_10_06_085408_create_module_action_users_table', 1),
(55, '2021_03_17_085408_create_categories_shopping_table', 1),
(56, '2021_03_17_085408_create_providers_table', 1),
(57, '2021_03_17_085408_create_quote_provider_table', 1),
(58, '2021_03_17_085408_create_quotes_table', 1),
(59, '2021_03_17_085408_create_request_supplies_table', 1),
(60, '2022_06_13_085408_create_activities_extra_activities_table', 1),
(61, '2022_06_13_085408_create_activities_extra_resources_table', 1),
(62, '2022_06_13_085408_create_activities_extra_table', 1),
(63, '2022_06_13_085408_create_transfers_table', 1),
(64, '2022_07_06_085408_create_strategic_issues_matrix_users_table', 1),
(65, '2022_09_06_085408_create_gestion_interest_groups_needs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Matriz perfil de competitividad', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(2, 'Matriz de cobertura de los temas estrategicos', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(3, 'Pestel', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(4, 'Dofa', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(5, 'Resumen de estrategias', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(6, 'Grupos de interes', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(7, 'Temas estrategicos', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(8, 'Cuadro de mando integral', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(9, 'Solicitud de presupuesto', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(10, 'Años', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(11, 'Usuarios', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(12, 'Aprobacion Presupuesto', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(13, 'Presupuesto aprobado', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(14, 'Areas', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(15, 'Oficinas', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(16, 'Solicitud de flujo de caja', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(17, 'Solicitud de insumos', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(18, 'Solicitudes de insumos', '2023-05-10 16:32:14', '2023-05-10 16:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `module_actions`
--

CREATE TABLE `module_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `module_actions`
--

INSERT INTO `module_actions` (`id`, `module_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(2, 2, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(3, 3, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(4, 4, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(5, 5, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(6, 6, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(7, 7, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(8, 8, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(9, 9, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(10, 10, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(11, 11, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(12, 12, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(13, 13, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(14, 14, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(15, 15, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(16, 16, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(17, 17, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(18, 18, 'Ver', '2023-05-10 16:32:14', '2023-05-10 16:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `module_action_users`
--

CREATE TABLE `module_action_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `module_action_users`
--

INSERT INTO `module_action_users` (`id`, `action_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(2, 2, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(3, 3, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(4, 4, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(5, 5, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(6, 6, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(7, 7, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(8, 8, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(9, 9, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(10, 10, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(11, 11, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(12, 12, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(13, 13, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(14, 14, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(15, 15, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(16, 16, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(17, 17, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15'),
(18, 18, 1, '2023-05-10 16:32:15', '2023-05-10 16:32:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'towUlMxL68XPc8XIj9Jbie28CyklryECeWea0Dor', 'http://localhost', 1, 0, 0, '2023-05-10 16:34:10', '2023-05-10 16:34:10'),
(2, NULL, 'Laravel Password Grant Client', 'a463rFwnoGgycCtReFUu6BAhVpiKKt38ufpwJ5CS', 'http://localhost', 0, 1, 0, '2023-05-10 16:34:10', '2023-05-10 16:34:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-05-10 16:34:10', '2023-05-10 16:34:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offices`
--

CREATE TABLE `offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pestel_factors`
--

CREATE TABLE `pestel_factors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pestel_factors`
--

INSERT INTO `pestel_factors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PÓLITICO', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(2, 'ECONOMICOS', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(3, 'SOCIOCULTURALES', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(4, 'TECNOLOGICO', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(5, 'ECOLOGICO', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(6, 'LEGISLATIVO', '2023-05-10 16:32:14', '2023-05-10 16:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adviser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `camara` text COLLATE utf8mb4_unicode_ci,
  `rut` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strategic_issues_perspectives`
--

CREATE TABLE `strategic_issues_perspectives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `strategic_issues_perspectives`
--

INSERT INTO `strategic_issues_perspectives` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aprendizaje y crecimiento', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(2, 'Beneficiarios', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(3, 'Financiera', '2023-05-10 16:32:14', '2023-05-10 16:32:14'),
(4, 'Procesos Internos', '2023-05-10 16:32:14', '2023-05-10 16:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `office_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`, `office_id`) VALUES
(1, 'prueba', 'prueba@prueba.com', NULL, '$2y$10$fyzw2ueYhr3x8gP2d7LJAOloGad8hPQkr8e57a7b1dD.eTZdoMJ..', 'avatar.png', NULL, '2023-05-10 16:32:15', '2023-05-10 16:32:15', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `years`
--

CREATE TABLE `years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `years`
--

INSERT INTO `years` (`id`, `year`, `created_at`, `updated_at`) VALUES
(1, 2023, '2023-05-10 16:32:14', '2023-05-10 16:32:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `2023_activities_extra`
--
ALTER TABLE `2023_activities_extra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_activities_extra_activities`
--
ALTER TABLE `2023_activities_extra_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_activities_extra_resources`
--
ALTER TABLE `2023_activities_extra_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_balanced_scorecards`
--
ALTER TABLE `2023_balanced_scorecards`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_budgets`
--
ALTER TABLE `2023_budgets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_budget_activities`
--
ALTER TABLE `2023_budget_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_budget_resources`
--
ALTER TABLE `2023_budget_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_competitiveness_matrix_factors`
--
ALTER TABLE `2023_competitiveness_matrix_factors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_dofa_opportunities`
--
ALTER TABLE `2023_dofa_opportunities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_dofa_strengths`
--
ALTER TABLE `2023_dofa_strengths`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_dofa_threats`
--
ALTER TABLE `2023_dofa_threats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_dofa_weaknesses`
--
ALTER TABLE `2023_dofa_weaknesses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_factor_school_scores`
--
ALTER TABLE `2023_factor_school_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_gestion_interest_groups_needs`
--
ALTER TABLE `2023_gestion_interest_groups_needs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_interest_groups`
--
ALTER TABLE `2023_interest_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_interest_groups_expectations`
--
ALTER TABLE `2023_interest_groups_expectations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_interest_groups_needs`
--
ALTER TABLE `2023_interest_groups_needs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_objectives_balanced_scorecards`
--
ALTER TABLE `2023_objectives_balanced_scorecards`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_pestel_aspects`
--
ALTER TABLE `2023_pestel_aspects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_quotes`
--
ALTER TABLE `2023_quotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `2023_quotes_request_supply_id_unique` (`request_supply_id`);

--
-- Indices de la tabla `2023_quote_provider`
--
ALTER TABLE `2023_quote_provider`
  ADD UNIQUE KEY `2023_quote_provider_quote_id_unique` (`quote_id`);

--
-- Indices de la tabla `2023_request_money`
--
ALTER TABLE `2023_request_money`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_request_supplies`
--
ALTER TABLE `2023_request_supplies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `2023_request_supplies_resources_id_unique` (`resources_id`);

--
-- Indices de la tabla `2023_schools`
--
ALTER TABLE `2023_schools`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_strategic_indicators`
--
ALTER TABLE `2023_strategic_indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_strategic_issues_categories`
--
ALTER TABLE `2023_strategic_issues_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_strategic_issues_categories_objectives`
--
ALTER TABLE `2023_strategic_issues_categories_objectives`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_strategic_issues_matrix_scores`
--
ALTER TABLE `2023_strategic_issues_matrix_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_strategic_issues_matrix_users`
--
ALTER TABLE `2023_strategic_issues_matrix_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_strategic_issues_strategies`
--
ALTER TABLE `2023_strategic_issues_strategies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_strategy_issues`
--
ALTER TABLE `2023_strategy_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_strengths_opportunities_score_users`
--
ALTER TABLE `2023_strengths_opportunities_score_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_strengths_threats_score_users`
--
ALTER TABLE `2023_strengths_threats_score_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_strength_opportunities`
--
ALTER TABLE `2023_strength_opportunities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_strength_threats`
--
ALTER TABLE `2023_strength_threats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_transfers`
--
ALTER TABLE `2023_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_users_qualities`
--
ALTER TABLE `2023_users_qualities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_weaknesses_opportunities_score_users`
--
ALTER TABLE `2023_weaknesses_opportunities_score_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_weaknesses_threats_score_users`
--
ALTER TABLE `2023_weaknesses_threats_score_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_weakness_opportunities`
--
ALTER TABLE `2023_weakness_opportunities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_weakness_threats`
--
ALTER TABLE `2023_weakness_threats`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_workflows`
--
ALTER TABLE `2023_workflows`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `2023_workflow_depends`
--
ALTER TABLE `2023_workflow_depends`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories_shopping`
--
ALTER TABLE `categories_shopping`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_shopping_name_unique` (`name`);

--
-- Indices de la tabla `center_costs`
--
ALTER TABLE `center_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `frequencies`
--
ALTER TABLE `frequencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `interest_groups_categories`
--
ALTER TABLE `interest_groups_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `module_actions`
--
ALTER TABLE `module_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `module_action_users`
--
ALTER TABLE `module_action_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pestel_factors`
--
ALTER TABLE `pestel_factors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strategic_issues_perspectives`
--
ALTER TABLE `strategic_issues_perspectives`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `2023_activities_extra`
--
ALTER TABLE `2023_activities_extra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_activities_extra_activities`
--
ALTER TABLE `2023_activities_extra_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_activities_extra_resources`
--
ALTER TABLE `2023_activities_extra_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_balanced_scorecards`
--
ALTER TABLE `2023_balanced_scorecards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_budgets`
--
ALTER TABLE `2023_budgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_budget_activities`
--
ALTER TABLE `2023_budget_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_budget_resources`
--
ALTER TABLE `2023_budget_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_competitiveness_matrix_factors`
--
ALTER TABLE `2023_competitiveness_matrix_factors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_dofa_opportunities`
--
ALTER TABLE `2023_dofa_opportunities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_dofa_strengths`
--
ALTER TABLE `2023_dofa_strengths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_dofa_threats`
--
ALTER TABLE `2023_dofa_threats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_dofa_weaknesses`
--
ALTER TABLE `2023_dofa_weaknesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_factor_school_scores`
--
ALTER TABLE `2023_factor_school_scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_gestion_interest_groups_needs`
--
ALTER TABLE `2023_gestion_interest_groups_needs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_interest_groups`
--
ALTER TABLE `2023_interest_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_interest_groups_expectations`
--
ALTER TABLE `2023_interest_groups_expectations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_interest_groups_needs`
--
ALTER TABLE `2023_interest_groups_needs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_objectives_balanced_scorecards`
--
ALTER TABLE `2023_objectives_balanced_scorecards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_pestel_aspects`
--
ALTER TABLE `2023_pestel_aspects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_quotes`
--
ALTER TABLE `2023_quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_request_money`
--
ALTER TABLE `2023_request_money`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_request_supplies`
--
ALTER TABLE `2023_request_supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_schools`
--
ALTER TABLE `2023_schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `2023_strategic_indicators`
--
ALTER TABLE `2023_strategic_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_strategic_issues_categories`
--
ALTER TABLE `2023_strategic_issues_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_strategic_issues_categories_objectives`
--
ALTER TABLE `2023_strategic_issues_categories_objectives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_strategic_issues_matrix_scores`
--
ALTER TABLE `2023_strategic_issues_matrix_scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_strategic_issues_matrix_users`
--
ALTER TABLE `2023_strategic_issues_matrix_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_strategic_issues_strategies`
--
ALTER TABLE `2023_strategic_issues_strategies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_strategy_issues`
--
ALTER TABLE `2023_strategy_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_strengths_opportunities_score_users`
--
ALTER TABLE `2023_strengths_opportunities_score_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_strengths_threats_score_users`
--
ALTER TABLE `2023_strengths_threats_score_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_strength_opportunities`
--
ALTER TABLE `2023_strength_opportunities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_strength_threats`
--
ALTER TABLE `2023_strength_threats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_transfers`
--
ALTER TABLE `2023_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_users_qualities`
--
ALTER TABLE `2023_users_qualities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_weaknesses_opportunities_score_users`
--
ALTER TABLE `2023_weaknesses_opportunities_score_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_weaknesses_threats_score_users`
--
ALTER TABLE `2023_weaknesses_threats_score_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_weakness_opportunities`
--
ALTER TABLE `2023_weakness_opportunities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_weakness_threats`
--
ALTER TABLE `2023_weakness_threats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `2023_workflows`
--
ALTER TABLE `2023_workflows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `2023_workflow_depends`
--
ALTER TABLE `2023_workflow_depends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories_shopping`
--
ALTER TABLE `categories_shopping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `frequencies`
--
ALTER TABLE `frequencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `interest_groups_categories`
--
ALTER TABLE `interest_groups_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `module_actions`
--
ALTER TABLE `module_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `module_action_users`
--
ALTER TABLE `module_action_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pestel_factors`
--
ALTER TABLE `pestel_factors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strategic_issues_perspectives`
--
ALTER TABLE `strategic_issues_perspectives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
