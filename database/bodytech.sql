-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-02-2022 a las 17:09:10
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodytech`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `product_name`, `product_price`, `created_at`, `updated_at`) VALUES
(20, 1458, 3, 'Cheese - Cheddar Medium', '38.06', '2022-02-09 13:50:29', '2022-02-09 13:50:29'),
(21, 1458, 3, 'Cheese - Cheddar Medium', '38.06', '2022-02-09 19:59:36', '2022-02-09 19:59:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_08_022653_create_products_table', 1),
(6, '2022_02_08_164523_create_carts_table', 2),
(7, '2022_02_08_213305_create_carts_table', 3),
(8, '2022_02_08_213445_create_carts_table', 4),
(9, '2022_02_08_213632_create_carts_table', 5),
(10, '2022_02_09_041937_carts_table', 6),
(11, '2022_02_09_064517_shopping', 7),
(12, '2022_02_09_085415_sales_report', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 1, 'myapptoken', 'd80a130f6ebbbdcb42dfad6096c7eead347fd3ce012ece6114caf8f5fc120828', '[\"*\"]', NULL, '2022-02-08 11:29:54', '2022-02-08 11:29:54'),
(3, 'App\\Models\\User', 1, 'myapptoken', '56852c644ef40ccc15dabaa6a726f1dae10289ae4298ddaf6a06e20832de90ba', '[\"*\"]', '2022-02-09 02:28:11', '2022-02-08 11:29:59', '2022-02-09 02:28:11'),
(4, 'App\\Models\\User', 1, 'myapptoken', 'd8342414d9bf2bd8c8cf7a7f8ff6ad145beeac43a2134016b451dc7f5b09b65a', '[\"*\"]', NULL, '2022-02-09 10:21:40', '2022-02-09 10:21:40'),
(5, 'App\\Models\\User', 2, 'myapptoken', '5e1aae651f6a3c240766612fcf205630472998b201c8db29689331ed8013fcf9', '[\"*\"]', NULL, '2022-02-09 10:22:56', '2022-02-09 10:22:56'),
(6, 'App\\Models\\User', 2, 'myapptoken', 'd136d467d97d13f9992d47940d5c16240eb10b494c1b3c1a59029c470c632627', '[\"*\"]', '2022-02-09 13:22:07', '2022-02-09 10:24:57', '2022-02-09 13:22:07'),
(7, 'App\\Models\\User', 2, 'myapptoken', 'ea6594f64df9f07a829b2880409f2ff336f7ec2400d656ad3d65c46abeba7f3b', '[\"*\"]', '2022-02-09 12:58:14', '2022-02-09 12:56:44', '2022-02-09 12:58:14'),
(9, 'App\\Models\\User', 3, 'myapptoken', '023dfdd32b727ebb52063cab0eb58669c2b963f7db50364a0b342544fb55df51', '[\"*\"]', '2022-02-09 13:00:54', '2022-02-09 13:00:19', '2022-02-09 13:00:54'),
(10, 'App\\Models\\User', 3, 'myapptoken', 'c8a6e6a300e6f05b67cb75396c04788b3fe36d7ed5e138bba8717c124e7ad84f', '[\"*\"]', '2022-02-09 21:02:38', '2022-02-09 13:16:23', '2022-02-09 21:02:38'),
(11, 'App\\Models\\User', 3, 'myapptoken', 'e9a1fe97a8dfc0b1542d9bfddb30aa0203bbd7f181f6cabfc059572790080ec0', '[\"*\"]', NULL, '2022-02-09 13:38:23', '2022-02-09 13:38:23'),
(12, 'App\\Models\\User', 4, 'myapptoken', 'e9c939e2ef2e72ff5ae749dfba9535b66cad3b1f07bc21e296562b77ad23521d', '[\"*\"]', NULL, '2022-02-09 13:39:40', '2022-02-09 13:39:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Napkin - Cocktailbeige 2 - Ply', 'napkin-cocktail-beige2-ply', 'nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', '46.60', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(2, 'Milk - 2%', 'milk-2', 'etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', '37.56', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(3, 'Wine - George Duboeuf Rose', 'wine-georgeduboeufrose', 'a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum', '34.32', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(4, 'Beef - Bones Marrow', 'beef-bones-marrow', 'magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem', '42.85', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(5, 'Bread - Bistro Sour', 'bread-bistrosour', 'eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', '62.35', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(6, 'Jam - Marmalade Orange', 'jam-marmalade-orange', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', '77.26', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(7, 'Soup Knorr Chili With Beans', 'soupknorrchiliwithbeans', 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', '45.71', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(8, 'Glass Clear 7 Oz Xl', 'glassclear7ozxl', 'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas', '35.50', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(9, 'Beef - Tongue Fresh', 'beef-tongue-fresh', 'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', '55.36', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(10, 'Yogurt - Banana 175 Gr', 'yogurt-banana-175gr', 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', '42.77', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(11, 'Coffee Cup 16oz Foam', 'coffeecup16ozfoam', 'lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue', '51.54', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(12, 'Brandy - Bar', 'brandy-bar', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero', '39.98', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(13, 'Wine - Magnotta - Pinot Gris Sr', 'wine-magnotta-pinotgrissr', 'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at', '24.18', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(14, 'Mayonnaise', 'mayonnaise', 'metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae', '63.28', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(15, 'Bananas', 'bananas', 'et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', '35.47', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(16, 'Cabbage - Savoy', 'cabbage-savoy', 'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', '22.64', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(17, 'Wine - Red Pelee Island Merlot', 'wine-red-peleeislandmerlot', 'ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare', '63.71', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(18, 'Calvados - Boulard', 'calvados-boulard', 'nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus', '56.60', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(19, 'Soup - Knorr Classic Can. Chili', 'soup-knorr-classiccan-chili', 'nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis', '45.15', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(20, 'Sauce - Hp', 'sauce-hp', 'duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at', '40.21', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(21, 'Rabbit - Whole', 'rabbit-whole', 'nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean', '74.83', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(22, 'Chocolate - Milk Coating', 'chocolate-milkcoating', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', '22.17', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(23, 'Chutney Sauce', 'chutneysauce', 'est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', '22.76', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(24, 'Wine - Port Late Bottled Vintage', 'wine-portlatebottledvintage', 'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', '47.94', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(25, 'Table Cloth - 53x69 Colour', 'tablecloth-53x69colour', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit', '68.34', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(26, 'Seabream Whole Farmed', 'seabreamwholefarmed', 'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse', '24.67', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(27, 'Sauce - Black Current Dry Mix', 'sauce-blackcurrent-drymix', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non', '57.34', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(28, 'Butter Sweet', 'buttersweet', 'vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque', '49.06', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(29, 'Coffee Cup 12oz 5342cd', 'coffeecup12oz5342cd', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', '79.07', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(30, 'Chocolate - Pistoles White', 'chocolate-pistoles-white', 'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam', '39.85', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(31, 'Wine - Montecillo Rioja Crianza', 'wine-montecilloriojacrianza', 'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin', '22.37', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(32, 'Vodka - Smirnoff', 'vodka-smirnoff', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque', '40.37', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(33, 'Appetizer - Southwestern', 'appetizer-southwestern', 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', '25.98', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(34, 'Tomato - Green', 'tomato-green', 'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non', '75.00', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(35, 'Pie Shell - 5', 'pieshell-5', 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed', '48.12', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(36, 'Pasta - Fettuccine Dry', 'pasta-fettuccine-dry', 'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', '44.40', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(37, 'Muffin Hinge - 211n', 'muffinhinge-211n', 'bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus', '44.45', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(38, 'Chicken - Leg / Back Attach', 'chicken-leg-backattach', 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi', '25.53', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(39, 'Tomatoes - Cherry', 'tomatoes-cherry', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', '24.74', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(40, 'Lamb - Leg Bone In', 'lamb-leg-bonein', 'convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', '40.03', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(41, 'Herb Du Provence - Primerba', 'herbduprovence-primerba', 'amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', '50.46', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(42, 'Scotch - Queen Anne', 'scotch-queenanne', 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id', '78.00', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(43, 'Lobster - Tail 3 - 4 Oz', 'lobster-tail-3-4oz', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus', '62.86', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(44, 'Gherkin - Sour', 'gherkin-sour', 'integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget', '54.00', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(45, 'Truffle Cups - White Paper', 'trufflecups-whitepaper', 'aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', '57.57', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(46, 'Pasta - Cappellini Dry', 'pasta-cappellini-dry', 'sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', '20.32', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(47, 'Tart Shells - Savory 2', 'tartshells-savory-2', 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam', '28.25', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(48, 'Eggplant - Baby', 'eggplant-baby', 'luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', '27.18', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(49, 'Pork - Back Short Cut Boneless', 'pork-back-shortcut-boneless', 'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus', '41.68', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(50, 'Garlic - Peeled', 'garlic-peeled', 'purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu', '44.96', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(51, 'Beef - Shank', 'beef-shank', 'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget', '68.59', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(52, 'Bread - Onion Focaccia', 'bread-onionfocaccia', 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea', '37.52', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(53, 'Dooleys Toffee', 'dooleystoffee', 'lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at', '22.20', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(54, 'Oil - Safflower', 'oil-safflower', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', '39.42', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(55, 'Nut - Pecan Pieces', 'nut-pecan-pieces', 'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel', '61.11', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(56, 'Gloves - Goldtouch Disposable', 'gloves-goldtouchdisposable', 'in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum', '42.97', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(57, 'Evaporated Milk - Skim', 'evaporatedmilk-skim', 'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue', '67.84', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(58, 'Beef - Bones Marrow', 'beef-bones-marrow', 'sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim', '62.06', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(59, 'Wine - Carmenere Casillero Del', 'wine-carmenerecasillerodel', 'morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas', '46.95', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(60, 'V8 - Tropical Blend', 'v8-tropicalblend', 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend', '56.63', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(61, 'Mace', 'mace', 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus', '73.39', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(62, 'Parsnip', 'parsnip', 'suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque', '69.08', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(63, 'Coffee Cup 8oz 5338cd', 'coffeecup8oz5338cd', 'metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et', '29.74', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(64, 'Rosemary - Fresh', 'rosemary-fresh', 'sit amet justo morbi ut odio cras mi pede malesuada', '54.45', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(65, 'Bread - French Baquette', 'bread-frenchbaquette', 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin', '65.84', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(66, 'Bacardi Breezer - Tropical', 'bacardibreezer-tropical', 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus', '36.68', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(67, 'Yoplait - Strawbrasp Peac', 'yoplait-strawbrasppeac', 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non', '60.20', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(68, 'Cake - Sheet Strawberry', 'cake-sheetstrawberry', 'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet', '52.07', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(69, 'Chicken - Base', 'chicken-base', 'in porttitor pede justo eu massa donec dapibus duis at velit', '21.41', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(70, 'Fruit Salad Deluxe', 'fruitsaladdeluxe', 'in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut', '66.93', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(71, 'Bread - Pullman Sliced', 'bread-pullman-sliced', 'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed', '76.22', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(72, 'Arizona - Plum Green Tea', 'arizona-plumgreentea', 'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', '31.02', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(73, 'Wine - German Riesling', 'wine-germanriesling', 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non', '56.48', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(74, 'Pur Value', 'purvalue', 'primis in faucibus orci luctus et ultrices posuere cubilia curae', '23.21', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(75, 'Oneshot Automatic Soap System', 'oneshotautomaticsoapsystem', 'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit', '46.35', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(76, 'Cucumber - Pickling Ontario', 'cucumber-picklingontario', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna', '27.85', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(77, 'Bread - Crusty Italian Poly', 'bread-crustyitalianpoly', 'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus', '21.74', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(78, 'Beef - Kobe Striploin', 'beef-kobestriploin', 'dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', '22.62', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(79, 'Cheese - Romano Grated', 'cheese-romano-grated', 'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed', '79.03', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(80, 'Cookie Trail Mix', 'cookietrailmix', 'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque', '54.81', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(81, 'Cake Slab', 'cakeslab', 'enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh', '49.25', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(82, 'Bread - Bistro White', 'bread-bistrowhite', 'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi', '77.28', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(83, 'Oven Mitt - 13 Inch', 'ovenmitt-13inch', 'quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur', '48.30', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(84, 'Veal - Ground', 'veal-ground', 'donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna', '21.79', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(85, 'Versatainer Nc - 8288', 'versatainernc-8288', 'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus', '74.57', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(86, 'Rabbit - Legs', 'rabbit-legs', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut', '51.57', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(87, 'Nut - Pine Nuts Whole', 'nut-pinenuts-whole', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a', '74.43', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(88, 'Oil - Grapeseed Oil', 'oil-grapeseedoil', 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', '77.65', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(89, 'Pomello', 'pomello', 'quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus', '34.13', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(90, 'Doilies - 12 Paper', 'doilies-12-paper', 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem', '23.18', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(91, 'Carbonated Water - Strawberry', 'carbonatedwater-strawberry', 'in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut', '71.75', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(92, 'Energy Drink', 'energydrink', 'hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt', '71.29', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(93, 'Barramundi', 'barramundi', 'amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis', '59.50', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(94, 'Energy Drink Red Bull', 'energydrinkredbull', 'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium', '32.15', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(95, 'Vodka - Hot Lnferno', 'vodka-hot-lnferno', 'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor', '24.24', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(96, 'Spring Roll Wrappers', 'springrollwrappers', 'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac', '67.62', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(97, 'Broom - Push', 'broom-push', 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien', '63.91', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(98, 'Island Oasis - Raspberry', 'islandoasis-raspberry', 'nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', '27.73', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(99, 'Crab - Meat Combo', 'crab-meatcombo', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem', '75.45', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(100, 'Lamb - Ground', 'lamb-ground', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer', '75.49', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(101, 'Venison - Denver Leg Boneless', 'venison-denverlegboneless', 'non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti', '41.31', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(102, 'Nut - Almond Blanched Sliced', 'nut-almond-blanched-sliced', 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', '45.56', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(103, 'Foil Cont Round', 'foilcontround', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis', '33.96', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(104, 'Sour Puss - Tangerine', 'sourpuss-tangerine', 'eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui', '32.84', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(105, 'Gooseberry', 'gooseberry', 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', '48.29', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(106, 'Rolled Oats', 'rolledoats', 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', '46.39', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(107, 'Sausage - Blood Pudding', 'sausage-bloodpudding', 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in', '59.31', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(108, 'Pepper - Chilli Seeds Mild', 'pepper-chilliseedsmild', 'orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu', '53.24', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(109, 'Pie Box - Cello Window 2.5', 'piebox-cellowindow2-5', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien', '66.24', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(110, 'Cleaner - Bleach', 'cleaner-bleach', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor', '66.68', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(111, 'V8 Splash Strawberry Banana', 'v8splashstrawberrybanana', 'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh', '32.77', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(112, 'Heavy Duty Dust Pan', 'heavydutydustpan', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', '60.81', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(113, 'Salmon - Atlantic Skin On', 'salmon-atlantic-skinon', 'mi sit amet lobortis sapien sapien non mi integer ac neque duis', '52.33', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(114, 'Cod - Fillets', 'cod-fillets', 'integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem', '77.61', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(115, 'Spinach - Spinach Leaf', 'spinach-spinachleaf', 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu', '22.67', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(116, 'Lentils - Red Dry', 'lentils-red-dry', 'lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede', '48.58', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(117, 'Pork - Bacon Sliced', 'pork-bacon-sliced', 'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', '77.98', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(118, 'Wine - Touraine Azay - Le - Rideau', 'wine-touraineazay-le-rideau', 'pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo', '27.67', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(119, 'Cheese - Cambozola', 'cheese-cambozola', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', '63.00', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(120, 'Chives - Fresh', 'chives-fresh', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes', '60.72', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(121, 'Turkey - Ground. Lean', 'turkey-ground-lean', 'interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', '39.39', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(122, 'Tomatoes - Cherry Yellow', 'tomatoes-cherry-yellow', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum', '76.91', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(123, 'Kaffir Lime Leaves', 'kaffirlimeleaves', 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut', '64.32', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(124, 'Bread Crumbs - Panko', 'breadcrumbs-panko', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', '34.83', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(125, 'Venison - Striploin', 'venison-striploin', 'justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', '77.90', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(126, 'Wine - Vineland Estate Semi - Dry', 'wine-vinelandestatesemi-dry', 'sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in', '27.61', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(127, 'Fib N9 - Prague Powder', 'fibn9-praguepowder', 'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula', '28.86', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(128, 'Cherries - Fresh', 'cherries-fresh', 'at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur', '51.42', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(129, 'Chocolate - Semi Sweet', 'chocolate-semisweet', 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed', '30.39', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(130, 'Raisin - Golden', 'raisin-golden', 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum', '51.46', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(131, 'Garlic - Elephant', 'garlic-elephant', 'luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat', '77.33', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(132, 'Horseradish Root', 'horseradishroot', 'turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', '69.83', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(133, 'Lobster - Canned Premium', 'lobster-cannedpremium', 'non quam nec dui luctus rutrum nulla tellus in sagittis', '67.72', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(134, 'Chicken - Diced Cooked', 'chicken-diced-cooked', 'risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at', '77.73', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(135, 'Wine - Periguita Fonseca', 'wine-periguitafonseca', 'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet', '47.31', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(136, 'Muffin Hinge 117n', 'muffinhinge117n', 'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus', '47.47', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(137, 'Puree - Kiwi', 'puree-kiwi', 'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', '27.55', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(138, 'Pepper - Chipotle Canned', 'pepper-chipotle-canned', 'vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel', '62.08', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(139, 'Black Currants', 'blackcurrants', 'orci eget orci vehicula condimentum curabitur in libero ut massa', '34.19', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(140, 'Dill Weed - Fresh', 'dillweed-fresh', 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque', '65.35', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(141, 'Wine - Winzer Krems Gruner', 'wine-winzerkremsgruner', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed', '68.28', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(142, 'Veal - Striploin', 'veal-striploin', 'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero', '20.86', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(143, 'Cheese - Mozzarella Buffalo', 'cheese-mozzarella-buffalo', 'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', '52.25', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(144, 'Bread - Raisin Walnut Pull', 'bread-raisinwalnutpull', 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis', '27.08', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(145, 'Sugar - Palm', 'sugar-palm', 'in libero ut massa volutpat convallis morbi odio odio elementum eu', '66.06', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(146, 'Soup - Knorr Veg / Beef', 'soup-knorr-veg-beef', 'felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis', '56.25', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(147, 'Horseradish Root', 'horseradishroot', 'molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi', '45.38', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(148, 'Pork - Kidney', 'pork-kidney', 'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis', '46.14', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(149, 'Bar Mix - Lemon', 'barmix-lemon', 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante', '77.22', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(150, 'Ginger - Crystalized', 'ginger-crystalized', 'orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu', '79.82', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(151, 'Bread - Multigrain Loaf', 'bread-multigrain-loaf', 'augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem', '36.13', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(152, 'Rosemary - Fresh', 'rosemary-fresh', 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit', '31.16', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(153, 'Shrimp - Black Tiger 13/15', 'shrimp-blacktiger13-15', 'vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', '25.19', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(154, 'Wine - White Antinore Orvieto', 'wine-white-antinoreorvieto', 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus', '59.46', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(155, 'Cattail Hearts', 'cattailhearts', 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar', '54.83', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(156, 'Pepper - Black Crushed', 'pepper-black-crushed', 'mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh', '61.16', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(157, 'Jam - Raspberry', 'jam-raspberry', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor', '34.44', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(158, 'Bread - Hot Dog Buns', 'bread-hotdogbuns', 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel', '73.09', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(159, 'Cheese - Roquefort Pappillon', 'cheese-roquefortpappillon', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi', '25.92', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(160, 'Ham - Black Forest', 'ham-blackforest', 'cursus urna ut tellus nulla ut erat id mauris vulputate', '72.44', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(161, 'Tequila - Sauza Silver', 'tequila-sauzasilver', 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel', '44.20', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(162, 'Pastry - Apple Muffins - Mini', 'pastry-applemuffins-mini', 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id', '32.38', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(163, 'Juice - Apple 500 Ml', 'juice-apple-500ml', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget', '72.41', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(164, 'Nut - Walnut Chopped', 'nut-walnut-chopped', 'at dolor quis odio consequat varius integer ac leo pellentesque ultrices', '35.00', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(165, 'Pickerel - Fillets', 'pickerel-fillets', 'dui proin leo odio porttitor id consequat in consequat ut nulla sed', '65.02', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(166, 'Guinea Fowl', 'guineafowl', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', '68.39', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(167, 'Gelatine Leaves - Envelopes', 'gelatineleaves-envelopes', 'ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius', '34.78', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(168, 'Rice - 7 Grain Blend', 'rice-7grainblend', 'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus', '52.66', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(169, 'Shrimp - Black Tiger 26/30', 'shrimp-blacktiger26-30', 'in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend', '71.70', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(170, 'Buffalo - Short Rib Fresh', 'buffalo-shortribfresh', 'orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu', '30.75', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(171, 'Extract - Lemon', 'extract-lemon', 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque', '78.92', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(172, 'Rum - Mount Gay Eclipes', 'rum-mountgayeclipes', 'praesent lectus vestibulum quam sapien varius ut blandit non interdum', '72.96', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(173, 'Lamb Tenderloin Nz Fr', 'lambtenderloinnzfr', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in', '42.55', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(174, 'Madeira', 'madeira', 'tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum', '48.10', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(175, 'Pectin', 'pectin', 'ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', '36.84', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(176, 'Water - Green Tea Refresher', 'water-greentearefresher', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra', '74.35', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(177, 'Onions - White', 'onions-white', 'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis', '56.88', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(178, 'Country Roll', 'countryroll', 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', '37.15', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(179, 'Nantucket Orange Juice', 'nantucketorangejuice', 'in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum', '23.01', '2022-02-09 21:02:39', '2022-02-09 21:02:39'),
(180, 'Table Cloth - 53x69 Colour', 'tablecloth-53x69colour', 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur', '67.67', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(181, 'Red Currant Jelly', 'redcurrantjelly', 'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac', '66.21', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(182, 'Sauce - Soy Low Sodium - 3.87l', 'sauce-soylowsodium-3-87l', 'sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit', '70.74', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(183, 'Energy Drink Red Bull', 'energydrinkredbull', 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum', '25.02', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(184, 'Jameson Irish Whiskey', 'jamesonirishwhiskey', 'interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor', '53.01', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(185, 'Bread Base - Toscano', 'breadbase-toscano', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', '29.70', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(186, 'Chicken - Thigh Bone In', 'chicken-thigh-bonein', 'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper', '79.76', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(187, 'Foie Gras', 'foiegras', 'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', '57.57', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(188, 'Celery Root', 'celeryroot', 'libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit', '25.11', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(189, 'Mcgillicuddy Vanilla Schnap', 'mcgillicuddyvanillaschnap', 'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis', '41.42', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(190, 'Glass - Wine Plastic Clear 5 Oz', 'glass-wine-plastic-clear5oz', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit', '68.37', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(191, 'Containter - 3oz Microwave Rect.', 'containter-3ozmicrowaverect-', 'lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem', '44.35', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(192, 'Wine - Remy Pannier Rose', 'wine-remypannierrose', 'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia', '74.83', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(193, 'Sauce - Hoisin', 'sauce-hoisin', 'eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', '62.84', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(194, 'Maple Syrup', 'maplesyrup', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum', '58.37', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(195, 'Liners - Baking Cups', 'liners-bakingcups', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', '77.63', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(196, 'Cake Circle Paprus', 'cakecircle-paprus', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent', '34.56', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(197, 'Cheese - Mix', 'cheese-mix', 'nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', '34.38', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(198, 'External Supplier', 'externalsupplier', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac', '22.27', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(199, 'Wine - George Duboeuf Rose', 'wine-georgeduboeufrose', 'congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus', '28.33', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(200, 'Beef - Diced', 'beef-diced', 'diam id ornare imperdiet sapien urna pretium nisl ut volutpat', '73.61', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(201, 'Cheese - Mix', 'cheese-mix', 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', '77.05', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(202, 'Spring Roll Veg Mini', 'springrollvegmini', 'eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus', '49.28', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(203, 'Bread - Roll Calabrese', 'bread-roll-calabrese', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget', '28.80', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(204, 'Tea - Herbal Orange Spice', 'tea-herbalorangespice', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes', '42.92', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(205, 'Pastry - Choclate Baked', 'pastry-choclatebaked', 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', '61.64', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(206, 'Seedlings - Buckwheat Organic', 'seedlings-buckwheat-organic', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus', '26.24', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(207, 'Beer - Pilsner Urquell', 'beer-pilsnerurquell', 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum', '67.55', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(208, 'Water Chestnut - Canned', 'waterchestnut-canned', 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien', '35.33', '2022-02-09 21:02:40', '2022-02-09 21:02:40');
INSERT INTO `products` (`id`, `name`, `slug`, `description`, `price`, `created_at`, `updated_at`) VALUES
(209, 'Cheese - Oka', 'cheese-oka', 'ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae', '69.41', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(210, 'Wine - Alsace Riesling Reserve', 'wine-alsacerieslingreserve', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', '64.25', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(211, 'Tortillas - Flour 10', 'tortillas-flour-10', 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit', '79.42', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(212, 'Pork - Baconback Peameal', 'pork-bacon-backpeameal', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum', '53.53', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(213, 'Sunflower Seed Raw', 'sunflowerseedraw', 'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', '71.62', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(214, 'Pickle - Dill', 'pickle-dill', 'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', '47.11', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(215, 'Lettuce - Mini Greens Whole', 'lettuce-minigreens-whole', 'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', '40.86', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(216, 'Flour - Strong', 'flour-strong', 'phasellus in felis donec semper sapien a libero nam dui proin leo odio', '62.14', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(217, 'Yogurt - Raspberry 175 Gr', 'yogurt-raspberry-175gr', 'et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue', '56.44', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(218, 'Veal - Leg Provimi - 50 Lb Max', 'veal-leg-provimi-50lbmax', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', '51.26', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(219, 'Napkin Colour', 'napkincolour', 'phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', '64.35', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(220, 'Beef - Ox Tail Frozen', 'beef-oxtail-frozen', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam', '60.86', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(221, 'Nescafe - Frothy French Vanilla', 'nescafe-frothyfrenchvanilla', 'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam', '62.72', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(222, 'Pork - Baconback Peameal', 'pork-bacon-backpeameal', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero', '20.27', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(223, 'Syrup - Kahlua Chocolate', 'syrup-kahluachocolate', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis', '20.19', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(224, 'Pimento - Canned', 'pimento-canned', 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', '25.26', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(225, 'Tomatoes - Diced Canned', 'tomatoes-diced-canned', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam', '59.01', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(226, 'Cheese - Havarti Salsa', 'cheese-havarti-salsa', 'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', '21.38', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(227, 'Ice - Clear 300 Lb For Carving', 'ice-clear-300lbforcarving', 'sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor', '23.18', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(228, 'Cheese - Romano Grated', 'cheese-romano-grated', 'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', '37.02', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(229, 'Fib N9 - Prague Powder', 'fibn9-praguepowder', 'vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis', '64.61', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(230, 'Quail - Jumbo', 'quail-jumbo', 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id', '20.48', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(231, 'Soup - Knorr French Onion', 'soup-knorr-frenchonion', 'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu', '23.96', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(232, 'Octopus', 'octopus', 'rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', '32.10', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(233, 'Scallops - Live In Shell', 'scallops-liveinshell', 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla', '79.47', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(234, 'Chicken - Leg Fresh', 'chicken-leg-fresh', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta', '47.88', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(235, 'Red Pepper Paste', 'redpepperpaste', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non', '41.95', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(236, 'Wine - Peller Estates Late', 'wine-pellerestateslate', 'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', '31.49', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(237, 'Dried Cherries', 'driedcherries', 'non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', '75.01', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(238, 'Marjoram - Dried Rubbed', 'marjoram-dried-rubbed', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in', '54.83', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(239, 'Pastrami', 'pastrami', 'proin at turpis a pede posuere nonummy integer non velit donec diam neque', '37.10', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(240, 'Artichoke - Bottom Canned', 'artichoke-bottom-canned', 'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', '47.92', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(241, 'Lamb - Rack', 'lamb-rack', 'aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo', '33.45', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(242, 'Cleaner - Comet', 'cleaner-comet', 'commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi', '79.49', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(243, 'Veal - Leg Provimi - 50 Lb Max', 'veal-leg-provimi-50lbmax', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id', '49.73', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(244, 'Pie Shell - 5', 'pieshell-5', 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', '41.41', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(245, 'Container - Clear 16 Oz', 'container-clear16oz', 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus', '78.22', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(246, 'Cheese - Comte', 'cheese-comte', 'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus', '22.87', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(247, 'Buffalo - Striploin', 'buffalo-striploin', 'lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue', '42.72', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(248, 'Wine - Penfolds Koonuga Hill', 'wine-penfoldskoonugahill', 'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat', '64.54', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(249, 'Table Cloth 54x54 White', 'tablecloth54x54white', 'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', '59.48', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(250, 'Hot Choc Vending', 'hotchocvending', 'eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', '29.50', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(251, 'Beer - Paulaner Hefeweisse', 'beer-paulanerhefeweisse', 'mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae', '50.00', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(252, 'Muffin Batt - Ban Dream Zero', 'muffinbatt-bandreamzero', 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', '75.04', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(253, 'Pork - Shoulder', 'pork-shoulder', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', '23.12', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(254, 'Oil - Shortening - All - Purpose', 'oil-shortening-all-purpose', 'eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', '75.42', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(255, 'Squid - U 5', 'squid-u5', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', '34.24', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(256, 'Shiro Miso', 'shiromiso', 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', '20.78', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(257, 'Cilantro / Coriander - Fresh', 'cilantro-coriander-fresh', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis', '64.41', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(258, 'Tomatoes - Vine Ripe Red', 'tomatoes-vineripe-red', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis', '64.34', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(259, 'Chutney Sauce', 'chutneysauce', 'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio', '43.42', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(260, 'Wine - Cotes Du Rhone Parallele', 'wine-cotesdurhoneparallele', 'sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', '73.67', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(261, 'Seedlings - Clamshell', 'seedlings-clamshell', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', '63.20', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(262, 'Tomato - Tricolor Cherry', 'tomato-tricolorcherry', 'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis', '54.54', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(263, 'Soup Campbells - Italian Wedding', 'soupcampbells-italianwedding', 'morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', '30.67', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(264, 'Muffin Mix - Lemon Cranberry', 'muffinmix-lemoncranberry', 'eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi', '65.57', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(265, 'Flower - Daisies', 'flower-daisies', 'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id', '77.77', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(266, 'Wine - Ruffino Chianti', 'wine-ruffinochianti', 'libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '66.90', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(267, 'Coconut - Shredded Sweet', 'coconut-shredded-sweet', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl', '52.46', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(268, 'Chicken - Leg Fresh', 'chicken-leg-fresh', 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer', '79.42', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(269, 'Salsify Organic', 'salsify-organic', 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', '26.94', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(270, 'Mangostein', 'mangostein', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', '28.88', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(271, 'Goat - Leg', 'goat-leg', 'mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede', '25.61', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(272, 'Cheese - Brie Roitelet', 'cheese-brieroitelet', 'eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis', '59.56', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(273, 'Lettuce - Boston Bib', 'lettuce-bostonbib', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor', '24.21', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(274, 'Cookies - Fortune', 'cookies-fortune', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis', '30.95', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(275, 'Wine - Winzer Krems Gruner', 'wine-winzerkremsgruner', 'molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', '27.39', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(276, 'Beef - Bones Marrow', 'beef-bones-marrow', 'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis', '74.80', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(277, 'Nut - Almond Blanched Sliced', 'nut-almond-blanched-sliced', 'massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', '66.79', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(278, 'Club Soda - Schweppes 355 Ml', 'clubsoda-schweppes-355ml', 'elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et', '37.92', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(279, 'Swordfish Loin Portions', 'swordfishloinportions', 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', '55.58', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(280, 'Orange Roughy 4/6 Oz', 'orangeroughy4-6oz', 'turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate', '50.69', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(281, 'Jam - Strawberry 20 Ml Jar', 'jam-strawberry-20mljar', 'risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer', '43.02', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(282, 'Higashimaru Usukuchi Soy', 'higashimaruusukuchisoy', 'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante', '77.72', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(283, 'Tomato Paste', 'tomatopaste', 'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at', '22.69', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(284, 'Beef - Ground Extra Lean Fresh', 'beef-ground-extralean-fresh', 'donec ut mauris eget massa tempor convallis nulla neque libero convallis', '57.40', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(285, 'Beef - Tongue Cooked', 'beef-tongue-cooked', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum', '56.12', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(286, 'Cheese - Augre Des Champs', 'cheese-augredeschamps', 'gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi', '53.91', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(287, 'Wine - Fat Bastard Merlot', 'wine-fatbastardmerlot', 'lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin', '38.18', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(288, 'Wine - Blue Nun Qualitatswein', 'wine-bluenunqualitatswein', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel', '27.10', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(289, 'Flour - Buckwheat Dark', 'flour-buckwheat-dark', 'elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus', '33.48', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(290, 'Chocolate Bar - Oh Henry', 'chocolatebar-ohhenry', 'consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', '60.21', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(291, 'Chicken - Tenderloin', 'chicken-tenderloin', 'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', '59.32', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(292, 'Cheese - Havarti Roasted Garlic', 'cheese-havarti-roastedgarlic', 'eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', '70.89', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(293, 'Canada Dry', 'canadadry', 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', '34.91', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(294, 'Cheese - Gouda', 'cheese-gouda', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis', '56.60', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(295, 'Bread - Malt', 'bread-malt', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi', '53.10', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(296, 'Pickerel - Fillets', 'pickerel-fillets', 'sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis', '56.84', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(297, 'The Pop Shoppe Pinapple', 'thepopshoppepinapple', 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis', '46.17', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(298, 'Soup - Campbells Creamy', 'soup-campbells-creamy', 'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor', '30.31', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(299, 'Containter - 3oz Microwave Rect.', 'containter-3ozmicrowaverect-', 'lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam', '68.25', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(300, 'Bread - Sour Sticks With Onion', 'bread-sourstickswithonion', 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', '65.18', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(301, 'Lid - 101216 Oz', 'lid-10-12-16oz', 'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et', '39.33', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(302, 'Spice - Peppercorn Melange', 'spice-peppercornmelange', 'consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam', '78.40', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(303, 'Cake - Miini Cheesecake Cherry', 'cake-miinicheesecakecherry', 'nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', '48.05', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(304, 'Tuna - Sushi Grade', 'tuna-sushigrade', 'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros', '72.58', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(305, 'Veal - Insides Grains', 'veal-insides-grains', 'eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut', '75.09', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(306, 'Oil - Olive Bertolli', 'oil-olivebertolli', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', '28.16', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(307, 'Pork - European Side Bacon', 'pork-europeansidebacon', 'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit', '42.88', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(308, 'Turnip - White Organic', 'turnip-white-organic', 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac', '23.18', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(309, 'Pear - Prickly', 'pear-prickly', 'eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh', '69.71', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(310, 'Petit Baguette', 'petitbaguette', 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', '70.99', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(311, 'Hot Choc Vending', 'hotchocvending', 'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac', '27.83', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(312, 'Lid - Translucent 3.5 And 6 Oz', 'lid-translucent-3-5and6oz', 'tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras', '63.72', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(313, 'Cake - Night And Day Choclate', 'cake-nightanddaychoclate', 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in', '55.27', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(314, 'Crab - Soft Shell', 'crab-softshell', 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor', '50.66', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(315, 'Crackers - Water', 'crackers-water', 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien', '25.09', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(316, 'Beer - Tetleys', 'beer-tetleys', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum', '55.66', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(317, 'Sprouts - China Rose', 'sprouts-chinarose', 'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi', '74.80', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(318, 'Pasta - Elbows Macaroni Dry', 'pasta-elbows-macaroni-dry', 'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', '77.46', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(319, 'Veal - Inside Choice', 'veal-inside-choice', 'amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', '77.72', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(320, 'Smoked Paprika', 'smokedpaprika', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus', '74.43', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(321, 'Melon - Watermelon Yellow', 'melon-watermelonyellow', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in', '29.60', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(322, 'Longos - Chicken Curried', 'longos-chickencurried', 'tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque', '35.29', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(323, 'Sherry - Dry', 'sherry-dry', 'metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', '54.89', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(324, 'Wine - Prosecco Valdobiaddene', 'wine-proseccovaldobiaddene', 'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis', '36.13', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(325, 'Pasta - Rotini Colour Dry', 'pasta-rotini-colour-dry', 'nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor', '49.87', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(326, 'Wine - Wyndham Estate Bin 777', 'wine-wyndhamestatebin777', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', '37.48', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(327, 'Fudge - Cream Fudge', 'fudge-creamfudge', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus', '40.67', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(328, 'Spice - Pepper Portions', 'spice-pepperportions', 'massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', '34.63', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(329, 'Corn Meal', 'cornmeal', 'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', '20.73', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(330, 'Milkettes - 2%', 'milkettes-2', 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in', '68.43', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(331, 'Wine - Pinot Noir Stoneleigh', 'wine-pinotnoirstoneleigh', 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat', '38.44', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(332, 'Mountain Dew', 'mountaindew', 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', '71.72', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(333, 'Bread - Roll Canadian Dinner', 'bread-roll-canadiandinner', 'quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla', '70.57', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(334, 'Pork - European Side Bacon', 'pork-europeansidebacon', 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla', '60.73', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(335, 'Wine - Pinot Noir Latour', 'wine-pinotnoirlatour', 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend', '69.25', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(336, 'Trueblue - Blueberry', 'trueblue-blueberry', 'cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices', '61.65', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(337, 'Flour - Semolina', 'flour-semolina', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras', '40.50', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(338, 'Wine - Merlot Vina Carmen', 'wine-merlotvinacarmen', 'morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', '65.28', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(339, 'Wine - Mondavi Coastal Private', 'wine-mondavicoastalprivate', 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec', '65.62', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(340, 'Lettuce - Lolla Rosa', 'lettuce-lollarosa', 'dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', '46.21', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(341, 'Table Cloth - 53x69 Colour', 'tablecloth-53x69colour', 'tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam', '58.06', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(342, 'Bar Energy Chocchip', 'barenergychocchip', 'pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque', '53.88', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(343, 'Arrowroot', 'arrowroot', 'leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet', '49.86', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(344, 'Wine - Charddonnay Errazuriz', 'wine-charddonnayerrazuriz', 'enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus', '51.26', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(345, 'Table Cloth 81x81 White', 'tablecloth81x81white', 'vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', '41.54', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(346, 'Pasta - Fett Alfredo Single Serve', 'pasta-fettalfredo-singleserve', 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', '79.51', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(347, 'Pasta - Orecchiette', 'pasta-orecchiette', 'ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque', '54.09', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(348, 'V8 - Tropical Blend', 'v8-tropicalblend', 'in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi', '24.77', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(349, 'Wine - Pinot Noir Pond Haddock', 'wine-pinotnoirpondhaddock', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend', '49.08', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(350, 'Carbonated Water - Peach', 'carbonatedwater-peach', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', '20.54', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(351, 'Mint - Fresh', 'mint-fresh', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', '69.07', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(352, 'Water - San Pellegrino', 'water-sanpellegrino', 'mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt', '39.24', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(353, 'Pepper - Chipotle Canned', 'pepper-chipotle-canned', 'morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', '31.06', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(354, 'Mix - Cappucino Cocktail', 'mix-cappucinococktail', 'quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero', '42.07', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(355, 'Wine - Sicilia Igt Nero Avola', 'wine-siciliaigtneroavola', 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec', '64.00', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(356, 'Dry Ice', 'dryice', 'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', '57.43', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(357, 'Chicken - Livers', 'chicken-livers', 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc', '67.83', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(358, 'Soup - Campbells Chili', 'soup-campbellschili', 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', '31.91', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(359, 'Veal - Leg', 'veal-leg', 'convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in', '49.81', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(360, 'Doilies - 10 Paper', 'doilies-10-paper', 'orci luctus et ultrices posuere cubilia curae donec pharetra magna', '73.29', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(361, 'Bread Base - Italian', 'breadbase-italian', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', '37.68', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(362, 'The Pop Shoppe - Black Cherry', 'thepopshoppe-blackcherry', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu', '48.32', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(363, 'Halibut - Whole Fresh', 'halibut-whole-fresh', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', '52.55', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(364, 'Oil - Sesame', 'oil-sesame', 'lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', '52.04', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(365, 'Sprouts - Bean', 'sprouts-bean', 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', '55.02', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(366, 'Ham - Cooked Italian', 'ham-cookeditalian', 'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo', '58.44', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(367, 'Paper Towel Touchless', 'papertoweltouchless', 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper', '65.55', '2022-02-09 21:02:40', '2022-02-09 21:02:40'),
(368, 'Dome Lid Clear P92008h', 'domelidclearp92008h', 'sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam', '57.84', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(369, 'Puree - Mocha', 'puree-mocha', 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', '38.23', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(370, 'Lettuce - Red Leaf', 'lettuce-redleaf', 'volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat', '28.58', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(371, 'Bread Bowl Plain', 'breadbowlplain', 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor', '37.58', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(372, 'Breadfruit', 'breadfruit', 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', '33.31', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(373, 'Bols Melon Liqueur', 'bolsmelonliqueur', 'ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', '49.20', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(374, 'Cheese - Provolone', 'cheese-provolone', 'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in', '32.85', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(375, 'Berry Brulee', 'berrybrulee', 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris', '75.59', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(376, 'Wine - Jaboulet Cotes Du Rhone', 'wine-jabouletcotesdurhone', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', '44.59', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(377, 'Eggroll', 'eggroll', 'ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci', '32.42', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(378, 'Crab - Soft Shell', 'crab-softshell', 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', '63.11', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(379, 'Water - Spring Water 355 Ml', 'water-springwater-355ml', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', '72.92', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(380, 'Liqueur Banana Ramazzotti', 'liqueurbanana-ramazzotti', 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien', '58.89', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(381, 'Vector Energy Bar', 'vectorenergybar', 'eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', '25.49', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(382, 'Cheese - Victor Et Berthold', 'cheese-victoretberthold', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor', '54.44', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(383, 'Cookie - Oatmeal', 'cookie-oatmeal', 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur', '29.51', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(384, 'Wiberg Cure', 'wibergcure', 'massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in', '64.48', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(385, 'Beer - Blue Light', 'beer-bluelight', 'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus', '59.46', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(386, 'Pork - Back Ribs', 'pork-backribs', 'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', '65.25', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(387, 'Tea Leaves - Oolong', 'tealeaves-oolong', 'condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum', '66.84', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(388, 'Wine - Chateau Timberlay', 'wine-chateautimberlay', 'faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat', '70.03', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(389, 'Pastry - Chocolate Chip Muffin', 'pastry-chocolatechipmuffin', 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit', '36.69', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(390, 'Soup - Campbells Beef Stew', 'soup-campbellsbeefstew', 'vehicula consequat morbi a ipsum integer a nibh in quis', '40.14', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(391, 'Kippers - Smoked', 'kippers-smoked', 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie', '34.84', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(392, 'Jam - Blackberry 20 Ml Jar', 'jam-blackberry-20mljar', 'aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed', '63.71', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(393, 'Cheese - Cheddar With Claret', 'cheese-cheddarwithclaret', 'non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus', '66.68', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(394, 'Meldea Green Tea Liquor', 'meldeagreentealiquor', 'mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla', '30.70', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(395, 'Tuna - Sushi Grade', 'tuna-sushigrade', 'nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere', '35.81', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(396, 'Oven Mitt - 13 Inch', 'ovenmitt-13inch', 'est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', '74.35', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(397, 'Scallops 60/80 Iqf', 'scallops60-80iqf', 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec', '69.25', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(398, 'Chocolate - White', 'chocolate-white', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer', '38.51', '2022-02-09 21:02:41', '2022-02-09 21:02:41'),
(399, 'Crab - Meat', 'crab-meat', 'maecenas tristique est et tempus semper est quam pharetra magna ac consequat', '22.73', '2022-02-09 21:02:41', '2022-02-09 21:02:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shoppings`
--

CREATE TABLE `shoppings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopping_resume` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shoppings`
--

INSERT INTO `shoppings` (`id`, `user_id`, `shopping_resume`, `created_at`, `updated_at`) VALUES
(1, '2', '[{\"id\":6,\"product_id\":15,\"user_id\":2,\"product_name\":\"Yogurt - Banana 175 Gr\",\"product_price\":\"42.77\",\"created_at\":\"2022-02-09T07:14:38.000000Z\",\"updated_at\":\"2022-02-09T07:14:38.000000Z\"},{\"id\":7,\"product_id\":19,\"user_id\":2,\"product_name\":\"Mayonnaise\",\"product_price\":\"63.28\",\"created_at\":\"2022-02-09T07:14:46.000000Z\",\"updated_at\":\"2022-02-09T07:14:46.000000Z\"},{\"items\":2,\"total\":106.05}]', '2022-02-09 12:18:01', '2022-02-09 12:18:01'),
(2, '3', '[{\"id\":9,\"product_id\":19,\"user_id\":3,\"product_name\":\"Mayonnaise\",\"product_price\":\"63.28\",\"created_at\":\"2022-02-09T08:17:13.000000Z\",\"updated_at\":\"2022-02-09T08:17:13.000000Z\"},{\"id\":10,\"product_id\":112,\"user_id\":3,\"product_name\":\"Sausage - Blood Pudding\",\"product_price\":\"59.31\",\"created_at\":\"2022-02-09T08:17:18.000000Z\",\"updated_at\":\"2022-02-09T08:17:18.000000Z\"},{\"id\":11,\"product_id\":418,\"user_id\":3,\"product_name\":\"Sauce - Salsa\",\"product_price\":\"30.26\",\"created_at\":\"2022-02-09T08:17:26.000000Z\",\"updated_at\":\"2022-02-09T08:17:26.000000Z\"},{\"items\":3,\"total\":152.85}]', '2022-02-07 13:17:37', '2022-02-09 13:17:37'),
(3, '3', '[{\"id\":9,\"product_id\":19,\"user_id\":3,\"product_name\":\"Mayonnaise\",\"product_price\":\"63.28\",\"created_at\":\"2022-02-09T08:17:13.000000Z\",\"updated_at\":\"2022-02-09T08:17:13.000000Z\"},{\"id\":10,\"product_id\":112,\"user_id\":3,\"product_name\":\"Sausage - Blood Pudding\",\"product_price\":\"59.31\",\"created_at\":\"2022-02-09T08:17:18.000000Z\",\"updated_at\":\"2022-02-09T08:17:18.000000Z\"},{\"id\":11,\"product_id\":418,\"user_id\":3,\"product_name\":\"Sauce - Salsa\",\"product_price\":\"30.26\",\"created_at\":\"2022-02-09T08:17:26.000000Z\",\"updated_at\":\"2022-02-09T08:17:26.000000Z\"},{\"items\":3,\"total\":152.85}]', '2022-02-06 13:20:39', '2022-02-09 13:20:39'),
(4, '3', '[{\"id\":13,\"product_id\":413,\"user_id\":3,\"product_name\":\"Chinese Foods - Chicken Wing\",\"product_price\":\"64.69\",\"created_at\":\"2022-02-09T08:41:21.000000Z\",\"updated_at\":\"2022-02-09T08:41:21.000000Z\"},{\"id\":14,\"product_id\":978,\"user_id\":3,\"product_name\":\"Table Cloth 54x54 White\",\"product_price\":\"76.34\",\"created_at\":\"2022-02-09T08:41:31.000000Z\",\"updated_at\":\"2022-02-09T08:41:31.000000Z\"},{\"id\":15,\"product_id\":1458,\"user_id\":3,\"product_name\":\"Cheese - Cheddar Medium\",\"product_price\":\"38.06\",\"created_at\":\"2022-02-09T08:41:37.000000Z\",\"updated_at\":\"2022-02-09T08:41:37.000000Z\"},{\"items\":3,\"total\":179.09}]', '2022-02-05 13:42:01', '2022-02-09 13:42:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Antonio', 'ladval19@gmail.com', NULL, '$2y$10$ETTtWTAXdyYH19EMFOWRQODf3g.t27RLp0nJzjC8Lnl/yXCt4aINO', NULL, '2022-02-08 11:01:31', '2022-02-08 11:01:31'),
(2, 'Carlos', 'Carlll@gmail.com', NULL, '$2y$10$ETTtWTAXdyYH19EMFOWRQODf3g.t27RLp0nJzjC8Lnl/yXCt4aINO', NULL, '2022-02-08 11:01:31', '2022-02-08 11:01:31'),
(3, 'Antonio', 'jaladinov@gmail.com', NULL, '$2y$10$Ja14hElRpIdtwE.2E3XvSuos8XOmkUG4ry9VK6xxiVStEpEJ9WHq.', NULL, '2022-02-09 12:59:12', '2022-02-09 12:59:12'),
(4, 'Jaladini', 'jaladinov@unal.edu.co', NULL, '$2y$10$fkyDOffE41tNSIRww1/31elDH600yYQXjGdcS5b9KChrtaSrpHv2y', NULL, '2022-02-09 13:39:40', '2022-02-09 13:39:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shoppings`
--
ALTER TABLE `shoppings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT de la tabla `shoppings`
--
ALTER TABLE `shoppings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
