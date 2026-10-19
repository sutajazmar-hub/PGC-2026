-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2026 a las 22:38:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pageweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('turismo-lizeth-suta-cache-5c785c036466adea360111aa28563bfd556b5fba', 'i:1;', 1792329704),
('turismo-lizeth-suta-cache-5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1792329704;', 1792329704),
('turismo-lizeth-suta-cache-c1dfd96eea8cc2b62785275bca38ac261256e278', 'i:1;', 1789732794),
('turismo-lizeth-suta-cache-c1dfd96eea8cc2b62785275bca38ac261256e278:timer', 'i:1789732794;', 1789732794);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_03_06_124521_create_posts_table', 2),
(5, '2026_03_11_144450_create_places_table', 3),
(6, '2026_09_18_014005_add_role_to_users_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `municipio` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `places`
--

INSERT INTO `places` (`id`, `nombre`, `descripcion`, `municipio`, `tipo`, `imagen`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'Hotel el Carmen', 'Ubicado en la zona urbana, es un refugio encantador para el descanso y el turismo de naturaleza local.', 'Carmen de Carupa', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(5, 'Carupa Glamping', 'Ofrece una experiencia de conexión con la naturaleza en un entorno rural y tranquilo.', 'Carmen de Carupa', 'glamping', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(6, 'Posada El Molino de San Luis', 'Casa colonial cerca de Ubate, ideal para descanso rural y naturaleza tradicional.', 'Carmen de Carupa', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(7, 'Viviendas Turísticas Carupaglam', 'Alojamiento rural y campamento bajo contacto directo con la naturaleza.', 'Carmen de Carupa', 'glamping', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(8, 'Restaurante La Frontera', 'Destaca por su conejo al horno y el churrasco, en un ambiente campestre.', 'Carmen de Carupa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(9, 'Restaurante Donde Fabiola', 'Platos típicos locales, incluyendo gallina campesina y recetas tradicionales.', 'Ubate', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(10, 'Hotel y Restaurante El Carmen', 'Restaurante dentro del hotel principal, especializado en comida campesina.', 'Carmen de Carupa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(11, 'Yerbabuena Café-Bar', 'Café-bar con bebidas calientes, vino caliente, sándwiches y ambiente acogedor.', 'Ubate', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(12, 'Restaurante y Asadero Mi Tolima    ', 'Especialidad: Carne asada, chicharrón y platos tipo asadero    ', 'Carmen de Carupa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(13, 'Parroquia Nuestra Señora del Carmen', ' Posee un estilo colonial muy marcado y bien conservado. Recientemente, a finales de 2025, el templo pasó por procesos de remodelación para mantener su estructura    ', 'Carmen de Carupa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(14, 'Santuario del Cerro de Chegua    ', 'Es el sitio de peregrinación por excelencia en el municipio. En su cima se encuentra una pequeña capilla dedicada también a la Virgen del Carmen.    ', 'Carmen de Carupa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(15, 'Capilla de Cabrera    ', 'Una joya religiosa rura Es una construcción sencilla y hermosa que refleja la fe de las comunidades campesinas de la zona.    ', 'Carmen de Carupa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(16, 'Cerros de Santurio y Santuaria', ' Estas formaciones montañosas también guardan una estrecha relación con la tradición local y son visitadas tanto por motivos religiosos como por su valor paisajístico.    ', 'Carmen de Carupa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(17, 'Parque Embalse El Hato    ', 'Ofrece zonas de camping con servicios de ducha de agua caliente, pesca deportiva, navegación, senderismo y áreas para picnic y asados.    ', 'Carmen de Carupa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(18, 'Cerro de Chegua    ', 'Senderismo: Es una ruta popular para caminantes y deportistas. Se recomienda ir bien abrigado y llevar suministros propios, ya que no hay tiendas en el ascenso.     ', 'Carmen de Carupa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(19, 'Casco Urbano y Parque Principal', 'Agradable ambienta para poder observar. No olvidar que te debes de abrigar bien', 'Carmen de Carupa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(20, 'Hotel La Esperanza    ', 'Casona colonial clásica en el marco del parque principal. Ambiente familiar.    ', 'Cucunuba', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(21, 'Glamping El Nido', 'Domos de lujo con vista al valle. Muy buscado por parejas.    .', 'Cucunuba', 'glamping', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(22, 'Hotel Valle de los Halcones    ', 'Enfocado en naturaleza y turismo de aventura y escaladores.    ', 'Cucunuba', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(23, 'Posada Campestre El Chivita    ', 'Ambiente rural auténtico, ideal para desconexión total.    ', 'Cucunuba', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(24, 'Hostal de la Villa    ', 'Opción económica y acogedora cerca del centro histórico.    ', 'Cucunuba', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(25, 'Cabaña Refugio del Viento    ', 'Ubicada en la parte alta, ideal para grupos y clima de montaña.    ', 'Cucunuba', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(26, 'Lácteos Cucunubá    ', 'El mejor yogur, queso siete cueros y postres de leche.    ', 'Cucunuba', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(27, 'La Despensa de Cucunubá    ', 'Cocina de autor y fusion local.    ', 'Cucunuba', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(28, 'El Sabor de la Abuela    ', 'Piquete boyacense, gallina y sopa de rullas.    ', 'Cucunuba', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(29, 'Restaurante San Luis', ' Comida típica tradicional a la leña.    ', 'Cucunuba', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(30, 'Café El Búho    ', 'Café de origen y repostería artesanal.    ', 'Cucunuba', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(31, 'Pizzería Artesanal (Varios)    ', 'Pizzas en horno de leña (tendencia reciente).    ', 'Cucunuba', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(32, 'parroquia Divino Salvador    ', ' Templo principal con retablos coloniales y fachada en piedra.    ', 'Cucunuba', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(33, 'Capilla del Cerro de Lourdes    ', 'Lugar de peregrinación con la mejor vista panorámica del pueblo.    ', 'Cucunuba', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(34, 'Capilla de la Vereda Peñas    ', 'Pequeña capilla rural que sirve a la comunidad campesina.    ', 'Cucunuba', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(35, 'Cementerio Municipal    ', 'Destaca por su orden y las lápidas antiguas talladas.    ', 'Cucunuba', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(36, 'Valle de los Halcones    ', 'Escalada en roca (más de 100 rutas), camping.    ', 'Cucunuba', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(37, 'Talleres de Tejidos    ', 'Ver el tejido de ruanas en telares de madera.    ', 'Cucunuba', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(38, 'Laguna de Cucunubá    ', ' Observación de aves y fotografía    ', 'Cucunuba', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(39, 'Minas de Carbón    ', 'Recorridos pedagógicos (con permiso).    ', 'Cucunuba', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(40, 'Cerro de las Tres Cruces    ', 'Trekking exigente y fotografía.    ', 'Cucunuba', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(41, 'Parque Principal    ', 'Caminata tranquila, fotos arquitectónicas.    ', 'Cucunuba', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(42, 'Glamping Isla del Sol', 'Ubicado cerca de la laguna, ofrece una experiencia de desconexión total.', 'Fuquene', 'glamping', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(43, 'hotel El Mirador de la Laguna', 'Posada sencilla con la mejor vista panorámica del espejo de agua.', 'Fuquene', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(44, 'Refugio La Playita', 'Zona de camping y cabañas rústicas a orillas del agua.', 'Fuquene', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(45, 'Finca Hotel Los Alisos', 'Alojamiento de agronaturaleza en la zona rural del municipio.', 'Fuquene', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(46, 'Restaurante La Cabaña de la Trucha', 'Especialistas en trucha en diversas preparaciones (al ajillo, frita). Vía principal', 'Fuquene', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(47, 'Parador Turístico de la Laguna', 'Ideal para desayunos con caldo de costilla y arepa boyacense. Orillas de la Laguna', 'Fuquene', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(48, 'Postres y Lácteos fuquene', 'Famosos por su cuajada con melao y quesos frescos de la región. Entrada al pueblo CAPELLANIA', 'Fuquene', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(49, 'parroquia San Isidro de fuquene', 'Templo colonial que resguarda la fe del municipio desde su fundación. Parque Principal', 'Fuquene', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(50, 'santuario de la Virgen de la Salud', 'Lugar de gran devoción local, visitado por habitantes de toda la provincia. Vereda Guatancuy', 'Fuquene', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(51, 'Gruta de la Inmaculada', 'Espacio de oración ubicado en una zona elevada con vista al valle. Sector periférico', 'Fuquene', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(52, 'Laguna de fuquene', 'Paseos en lancha, avistamiento de aves y fotografía. Antiguo lugar sagrado para los Muiscas.', 'Fuquene', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(53, 'Talleres de Junco y Enea', 'Aprender a tejer canastos, esteras y figuras decorativas. Oficio ancestral.', 'Fuquene', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(54, 'Cerro de la Virgen', 'Senderismo y mirador natural hacia el valle de Ubate. Punto estratégico colonial.', 'Fuquene', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(55, 'Isla de santuario      ', 'Recorrido histórico y observación de fauna endémica.      ', 'Fuquene', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(56, 'Mercado de Artesanías      ', 'Compra de productos tejidos y lácteos frescos.      ', 'Fuquene', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(57, 'Glamping El Pino', 'Eco-hotel de lujo con jacuzzis privados y cabalgatas por la montaña.', 'Guacheta', 'glamping', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(58, 'Hotel Labranza del Mancebo', 'Ubicado en el casco urbano, es sencillo, limpio y de precio accesible.', 'Guacheta', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(59, 'hotel Villa Tránsito', 'Enfocado en naturalezafamiliar y descanso campestre.', 'Guacheta', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(60, 'Finca Hotel La Lucerna', 'Experiencia de agronaturaleza en una hacienda tradicional.', 'Guacheta', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(61, 'Restaurante Terraporky', 'Especialistas en carnes a la parrilla y platos típicos en ambiente rústico. Casco Urbano', 'Guacheta', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(62, 'Piqueteadero El Minero', 'Fritanga completa, chanfaina y gallina criolla (plato insignia). Zona comercial', 'Guacheta', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(63, 'Amasijos Guachetá', 'Garullas, envueltos de mazorca y pan de maíz recién horneado. Plaza Principal', 'Guacheta', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(64, 'Comidas Rápidas La Z y la L', 'Opción de platos mixtos, carnes y hamburguesas artesanales. Centro', 'Guacheta', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(65, 'parroquia San Gregorio Magno', 'Construida en honor al santo cuya fiesta coincidió con la llegada de los españoles. Parque Principal', 'Guacheta', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(66, 'santuario de Nuestra Señora del Tránsito', 'Patrona del municipio. Es un lugar de peregrinación con gran vista. Cerro de La Virgen', 'Guacheta', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(67, 'Capilla del Divino Niño Jesús', 'Pequeña capilla de arquitectura sencilla muy querida por la comunidad. Sector Urbano', 'Guacheta', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(68, 'Capilla del Cementerio', 'Destaca por su arquitectura antigua y ambiente de paz. Salida hacia Capellania', 'Guacheta', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(69, 'Páramo del Rabanal', 'Senderismo, avistamiento de frailejones y nacimientos de agua. Es una de las reservas hídricas más importantes de la región.', 'Guacheta', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(70, 'Cerro del Sol', 'Trekking y búsqueda de historias sobre el Cacique Goranchacha. Según la leyenda, los muiscas escondieron tesoros allí.', 'Guacheta', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(71, 'Ruta de las Minas', 'Recorridos para conocer la extracción artesanal de carbón, motor económico desde hace décadas.', 'Guacheta', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(72, 'Cerro Naranjito', 'Senderismo histórico. Lugar donde se refugió Luis Vargas Tejada tras la Conspiración Septembrina.', 'Guacheta', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(73, 'Estaciones del Ferrocarril', 'La Isla y El Rabanal. Fotografía y recorrido histórico por Bienes de Interés Cultural.', 'Guacheta', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(74, 'Árbol de Caucho Emblemático  ', 'Parque principal, Descanso y observación.  ', 'Guacheta', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(75, 'Hotel Sevilla', 'El más grande y tradicional del pueblo. Eventos y restaurante.', 'Lenguazaque', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(76, 'Hotel El Cacique', 'Ubicado cerca del centro, habitaciones sencillas y baño privado.', 'Lenguazaque', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(77, 'hotel Las Palmas', 'Opción económica para viajeros de paso.', 'Lenguazaque', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(78, 'Residencias La 4ta', 'Habitaciones básicas, muy usado por mineros de la zona.', 'Lenguazaque', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(79, 'Hotel El Gran Minero', 'Hostal temático sencillo referente a la minería.', 'Lenguazaque', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(80, 'Finca Turística El Recreo', '(Sector Rural) Cabaña para grupos y contacto con la naturaleza.', 'Lenguazaque', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(81, 'Isabella\'s Pizza', 'Pizza artesanal y comida rápida (la más famosa). Cra. 3 #5-02', 'Lenguazaque', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(82, 'Rest. El Sabor De Mi Tierra', 'Almuerzos ejecutivos y sancocho de gallina. Cl. 3', 'Lenguazaque', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(83, 'Asadero Donde Pinzón', 'Pollo asado y carnes a la llanera. Cl. 2a #1-56', 'Lenguazaque', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(84, 'Piqueteadero La Cuesta', 'Fritanga, morcilla y chicharrón. Salida Guachetá', 'Lenguazaque', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(85, 'Restaurante San Luis', 'Menú del día (Corrientazo) abundante. Centro', 'Lenguazaque', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(86, 'Café Bar Punto de Encuentro', 'Café, bebidas y picadas. Parque principal', 'Lenguazaque', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(87, 'parroquia San Laureano', 'Templo principal. Estilo republicano con frescos internos. Parque Principal', 'Lenguazaque', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(88, 'Capilla de San José', 'Estructura pequeña de piedra en la vereda Faracia.', 'Lenguazaque', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(89, 'Capilla de la Virgen', 'Lugar de oración en la parte alta del pueblo. Parque de la Virgen', 'Lenguazaque', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(90, 'Capilla Vereda Ramada', 'Punto de encuentro religioso para la comunidad rural.', 'Lenguazaque', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(91, 'Mirador el Zaque', 'Senderismo y la mejor vista del valle de Ubate. Zona alta (250601)', 'Lenguazaque', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(92, 'Parque Principal', 'Punto de encuentro histórico y comercial. Centro', 'Lenguazaque', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(93, 'Parque De La Virgen', 'Espacio de oración y descanso familiar. Cra. 1 #22a 2-76', 'Lenguazaque', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(94, 'Carmesí Smart Glamping', 'Domos inteligentes con domótica, diseño moderno y vistas increíbles.', 'Simijaca', 'glamping', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(95, 'Juncos Glamping', 'Experiencia de lujo frente a la laguna, con jacuzzi y total privacidad.', 'Simijaca', 'glamping', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(96, 'Finca El Refugio', 'Espacio rural tradicional enfocado en el descanso familiar y la naturaleza.', 'Simijaca', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(97, 'Andariegos', 'Cocina de autor y platos gourmet con ingredientes locales. Cra. 7 #9-47', 'Simijaca', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(98, 'La Patrona Simijaca', 'Parrilla argentina y colombiana, especialistas en carnes maduradas. Vía Principal', 'Simijaca', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(99, 'La Cabañita Campestre', 'Comida tradicional, ideal para almuerzos familiares al aire libre. Sector La Vega', 'Simijaca', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(100, 'La Katrina', 'Restaurante-bar con ambiente moderno, picadas y coctelería. Zona Urbana', 'Simijaca', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(101, 'parroquia Inmaculada Concepción', 'Templo principal con arquitectura colonial, epicentro de la fe simijaquense. Parque Principal', 'Simijaca', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(102, 'Capilla de Santa Bárbara', 'Histórica capilla ubicada en un altozano, sitio de romería tradicional. Sector Rural', 'Simijaca', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(103, 'Iglesia IDMJI Simijaca', 'Sede religiosa moderna que forma parte de la vida social del municipio. Cl. 5 #7-86', 'Simijaca', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(104, 'Parque Ecológico La María', 'Senderismo, observación de aves y zonas de picnic. Reserva protegida clave del valle.', 'Simijaca', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(105, 'Hacienda Aposentos', 'Fotografía, recorridos históricos y arquitectura de una antigua hacienda colonial.', 'Simijaca', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(106, 'Parque Principal', 'Paseo peatonal, degustación de mantecadas y lácteos. Corazón del pueblo.', 'Simijaca', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(107, 'Parque Piedra Colgada', 'Mirador natural, rappel y caminatas de alto nivel. Famoso por su formación rocosa.', 'Simijaca', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(108, 'Glamping/BBQ Susa Cun', 'Domos con balcón, vista al jardín, zona de fogata y cocina equipada.', 'Susa', 'glamping', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(109, 'Hotel Milán Confort', 'Alojamiento céntrico y cómodo, con atención familiar y parqueadero.', 'Susa', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(110, 'Posada La Casona', 'Casa de estilo tradicional colonial con habitaciones acogedoras.', 'Susa', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(111, 'Cuchuco con Espinazo', 'El plato insignia de la región, preparado a fuego lento en los restaurantes del centro.', 'Susa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(112, 'Amasijos y Lácteos', 'Quesos frescos, cuajadas con melao y colaciones de maíz en el Parque Principal.', 'Susa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(113, 'Restaurante El Portal', 'Famoso por sus desayunos generosos y almuerzos típicos de fin de semana.', 'Susa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(114, 'parroquia Ntra. Sra. de los Dolores', 'Joya arquitectónica que albergó la imagen de la Virgen del Topo. Parque Principal', 'Susa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(115, 'Capilla del Divino Niño', 'Colonial ermita (antiguamente de San Emigdio), sitio de gran peregrinación regional. Cra 4ª # 6-47', 'Susa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(116, 'Cerro El Calvario', 'Camino empedrado con las estaciones del viacrucis, muy visitado en Semana Santa. Sector Nororiente', 'Susa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(117, 'Piedra Colgada', 'Senderismo, fotografía, rappel. Espectacular formación rocosa que sobresale 1.5 metros al vacío.', 'Susa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(118, 'Cerro de la Virgen', 'Caminata suave y mirador. Ofrece una panorámica completa del valle de Ubate y el casco urbano.', 'Susa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(119, 'Centro Histórico', 'Caminatas fotográficas. Conserva la tranquilidad de los pueblos coloniales con calles empedradas.', 'Susa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(120, 'Glamping Entre Rocas', 'Domos de lujo construidos literalmente entre las formaciones rocosas.', 'Sutatausa', 'glamping', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(121, 'Big Bang Glamping', 'Domos con temática astronómica, ideales para ver estrellas por la baja contaminación lumínica.', 'Sutatausa', 'glamping', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(122, 'Hotel El Condado', 'Hotel de estilo rural-colonial muy cómodo y cerca de la plaza principal.', 'Sutatausa', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(123, 'La Posada de los Farallones', 'Hostal acogedor para senderistas y escaladores.', 'Sutatausa', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(124, 'La Estación del Tren', 'Restaurante temático en la antigua estación. Muy buena carne a la brasa. Vía Principal', 'Sutatausa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(125, 'Restaurante El Tequendama', 'Comida típica tradicional: Cuchuco con espinazo y trucha. Plaza Principal', 'Sutatausa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(126, 'Tejiendo Sabores', 'Café artesanal y postres locales (especialidad en cuajada con melao). Centro Urbano', 'Sutatausa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(127, 'Asadero El Portal', 'Piqueteadero tradicional con fritanga y gallina campesina. Entrada al pueblo', 'Sutatausa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(128, 'Conjunto Doctrinero San Juan Bautista', 'Construido en el siglo XVI para la evangelización. Conserva 4 capillas posas originales. Plaza Principal', 'Sutatausa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(129, 'Capillas Posas', 'Pequeñas estructuras en las esquinas de la plaza usadas en procesiones coloniales. Plaza Principal', 'Sutatausa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(130, 'Murales de la Iglesia', 'Pinturas al temple del siglo XVII que muestran escenas del juicio final. Interior Templo', 'Sutatausa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(131, 'Farallones de Sutatausa', 'Trekking de alto nivel, escalada y fotografía. Lugar histórico del suicidio colectivo Muisca.', 'Sutatausa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(132, 'Pinturas Rupestres', 'Observación de pictogramas indígenas en color rojo ocre. Arte milenario ancestral.', 'Sutatausa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(133, 'Tejidos de Lana', 'Talleres de tejido en telar de mano. Tradición de ruanas de lana virgen de alta calidad.', 'Sutatausa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(134, 'Camino de la Sal', 'Caminata histórica por las antiguas rutas de comercio de sal.', 'Sutatausa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(135, 'Neusa Hills Eco Hotel', 'Hotel boutique con cabañas de diseño premium y vistas al embalse.', 'Tausa', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(136, 'Glamping Paraíso de Tausa', 'Domos acogedores en la zona rural, ideales para parejas.', 'Tausa', 'glamping', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(137, 'Refugio del Neusa', 'Cabañas y zonas de camping con acceso a senderos y bosque.', 'Tausa', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(138, 'Tributo Cocina de Origen', 'Platos gourmet inspirados en ingredientes locales y trucha fresca. Embalse del Neusa', 'Tausa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(139, 'Rest. Sendero de la Luna', 'Comida tradicional con una vista privilegiada a la naturaleza. Finca Isabela', 'Tausa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(140, 'El Tizón Parrilla', 'Especialistas en carnes a la brasa y platos típicos de carretera. Vía Zipaquirá-Ubate', 'Tausa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(141, 'Restaurante Laureles', 'Comida típica tradicional (piquete y trucha) para visitantes del Neusa. Sector Laureles', 'Tausa', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(142, 'Templo Doctrinero Tausa Viejo', 'Joya colonial del siglo XVI. Es uno de los templos más antiguos y mejor conservados del país. Tausa Viejo (Roma)', 'Tausa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(143, 'Iglesia San Antonio de Padua', 'Templo principal del casco urbano actual, de arquitectura más reciente. Parque Principal', 'Tausa', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(144, 'Embalse del Neusa', 'Pesca deportiva, camping, picnics y navegación. Reserva forestal vital de 3.700 hectáreas.', 'Tausa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(145, 'Tausa Vieja (Pueblo Viejo)', 'Fotografía y caminatas históricas. El pueblo original fue abandonado debido a fallas geológicas.', 'Tausa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(146, 'santuari Chiquito', 'Senderismo ecológico y contacto con fauna andina. Parque enfocado en la educación ambiental.', 'Tausa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(147, 'Páramo de Guerrero  ', 'Senderismo de alta montaña y avistamiento de frailejones.  .', 'Tausa', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(148, 'Chalet Campestre La Peseta', 'Cabañas de madera acogedoras con amplias zonas verdes y estilo alpino.', 'Ubate', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(149, 'Hotel San Gabriel', 'Hotel ejecutivo y familiar, el más moderno y céntrico del municipio.', 'Ubate', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(150, 'Hotel Zaclordy', 'Ubicación estratégica frente al comercio, habitaciones cómodas y funcionales.', 'Ubate', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(151, 'Villa Manantial de Sueños', '(Gamping/Rural) Espacio natural con fogatas y cabañas de descanso.', 'Ubate', 'hotel', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(152, 'Rest. Villa La Gallina', 'El sitio más icónico para comer gallina criolla con hogao y papa. Cl. 10 #4-1', 'Ubate', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(153, 'La Vaca Gona', 'Parador turístico famoso por su repostería, quesos y platos típicos. Vía principal', 'Ubate', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(154, 'Plaza de la Gallina', 'Conjunto de locales tradicionales especializados únicamente en gallina. Sector Centro', 'Ubate', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(155, 'Fábrica de Lácteos Ubate', 'Venta directa de queso Siete Cueros, yogur y postres de leche. Diversas sedes', 'Ubate', 'gastronomia', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(156, 'Basílica Menor Divino Salvador', 'Construida en estilo neogótico francés. Es el símbolo del municipio y orgullo del valle. Parque Principal', 'Ubate', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(157, 'Capilla de Santa Bárbara', 'Capilla colonial ubicada en lo alto del cerro, símbolo de protección para el pueblo. Cerro de Santa Bárbara', 'Ubate', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(158, 'Convento Franciscano de San Luis', 'Antiguo claustro de la orden franciscana con arquitectura colonial sobria y pacífica. Sector Urbano', 'Ubate', 'religioso', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(159, 'Cerro de Santa Bárbara', 'Senderismo, mirador fotográfico y ejercicio al aire libre. Ofrece la mejor vista de la Basílica.', 'Ubate', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(160, 'Mercado de los Miércoles', 'Compra de artesanías, ganado y productos agrícolas frescos. Uno de los mercados más grandes de Cundinamarca.', 'Ubate', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(161, 'Ruta del Queso', 'Tour pedagógico sobre la producción lechera y cata de quesos en diversas fincas.', 'Ubate', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25'),
(162, 'Parque Principal    ', 'Paseo cultural y apreciación de la arquitectura neogótica.    ', 'Ubate', 'naturaleza', NULL, 1, '2026-03-13 22:27:25', '2026-03-13 22:27:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `status` enum('draft','published') NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('arINRWM0D9HJx8Sg3QLWIOPAjfDVVKGc32zDiWQE', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZGJTR05hWGJEM1J3RXptOVU0Z0RNdTN2V3RPYnBRMkg1N1ZFSjd1aiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sdWdhcmVzIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O30=', 1792071933),
('XgAANwMxl3mbfVuqSYCJfGdmkdVJrZT9xyJJH8On', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZ2hXc3ZZejdaVm5kcUE0bGF0VklwdWswdDNQMHJDSkdRTG5rTnBmcSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sdWdhcmVzIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjI5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbHVnYXJlcyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7fQ==', 1792330541);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'tourist',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lizeth Suta', 'ljsuta@ucundinamarca.edu.co', NULL, '$2y$12$tK1rHkfE1MWni8/ifF8daefu9vmgDI6F13mXspxo8EGsfA.KAQkhm', 'tourist', NULL, '2026-03-03 05:29:02', '2026-03-03 05:29:02'),
(2, 'Fernando Suta', 'jazbleidy42@gmail.com', NULL, '$2y$12$VjzMEGmYcjqXhOAXye7meuUm36OCh3WHJ8zwxoWzrZwAMeix9ELhO', 'tourist', NULL, '2026-03-03 05:36:21', '2026-03-03 05:36:21'),
(3, 'Carlos Cristancho', 'carloscristancho@gmail.com', NULL, '$2y$12$4rv./XANabFXSJk2LZLH5.hAwE/BBWzaClh6ykvheeRFTHFyog136', 'tourist', NULL, '2026-03-04 18:50:30', '2026-03-04 18:50:30'),
(5, 'Lizeth Suta', 'sutajazmar@gmail.com', NULL, '$2y$12$IrmN5xJqZTKrp1svmc5dIe2uL1cxGoatiPfGuJIzdEi8VykS8v66.', 'admin', NULL, '2026-05-04 18:20:05', '2026-09-18 06:46:39'),
(6, 'Jaz', 'jaz@gmail.com', NULL, '$2y$12$OO19mie6h2h7Zd.tTWT10elfVf32VsRN0DNkTBWnSGJaCDQyDZfFK', 'tourist', NULL, '2026-09-16 22:56:46', '2026-09-16 22:56:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
