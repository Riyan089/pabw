-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 05:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pabw`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(10) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner`, `gambar`, `link`, `status`) VALUES
(1, 'Apple Iphone 6', 'banner1.png', 'index.php?page=detail&barang_id=5', 'off'),
(2, 'Samsung A3 A300H', 'banner2.png', 'index.php?page=detail&barang_id=6', 'on'),
(3, 'Sony A7 Mark II Body Only', 'Jual-Kamera-Sony-A7-Mark-II-Body-Only-Harga-Murah-1.jpg', 'index.php?page=detail&barang_id=16', 'off'),
(4, 'Samsung Galaxy A14 5G', 'Samsung-Galaxy-A14-5G.webp', 'index.php?page=detail&barang_id=18', 'off'),
(5, 'Samsung Galaxy A14 5G', 'Samsung-Galaxy-A14-5G.png', 'index.php?page=detail&barang_id=18', 'on'),
(6, 'Sony A7 Mark II Body Only', 'Sony-A7-mark-II-review-featured.jpg', 'index.php?page=detail&barang_id=16', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(10) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` tinyint(1) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `user_id`, `nama_barang`, `spesifikasi`, `gambar`, `harga`, `stok`, `status`) VALUES
(1, 1, 0, 'Galaxy Note 3', 'Layar 5.7\", 16GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'samsung-galaxy-note-3.png', 7800000, 9, 'on'),
(2, 1, 0, 'lenovo A7000 Dual SIM', 'Layar 5.5\", 8GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'Lenovo-A7000.png', 2200000, 10, 'on'),
(3, 1, 0, 'Mi 4i', 'Layar 5\", 16GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\r\n</p>', 'mi-4i.png', 2800000, 1, 'on'),
(4, 1, 0, 'Samsung Grand Prime', 'Layar 5\", 8GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'samsung-galaxy-grand-prime.png', 2250000, 10, 'on'),
(5, 1, 0, 'Apple iPhone 6', '<p>Layar 4,7&quot;, 128GB Memori</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p><p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.</p>', 'iphone-6-silver.png', 12700000, 1, 'on'),
(6, 1, 0, 'Samsung A3 A300H', 'Layar 4.5\", 16GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'Samsung Galaxy-A3.png', 2900000, 5, 'on'),
(7, 1, 0, 'Samsung Galaxy A8', 'Layar 5.7\", 32GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'samsung-galaxy-A8.png', 6134000, 5, 'on'),
(8, 1, 0, 'Asus Zenfone C ZC451CG', 'Layar 4.5\", 8GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'asus-zenfone.png', 1325000, 3, 'on'),
(9, 3, 0, 'Nikon D5200 Lensa Kit 18-55mm', 'Layar 3\", 24.1 MP <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'nikon-d5200.png', 6000000, 10, 'on'),
(10, 3, 0, 'Nikon D3200 Lensa Kit VR II 18-55mm', 'Layar 3\", 24.1 MP <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'nikon-d3200.png', 4800000, 4, 'on'),
(11, 3, 0, 'Canon Eos 750D Kit 18-55mm IS STM', 'Layar 3\", 24 MP <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'canon-eos-750d.png', 10100000, 2, 'on'),
(12, 3, 0, 'Canon EOS 700D 18.0 MP 18-55mm IS STM', 'Layar 3\", 18 MP <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'canon-eos-700d.png', 7250000, 9, 'on'),
(13, 2, 0, 'LG 32\" LED TV - 32LF550A', 'Layar 32\", Triple XD Engine <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'lg-32-led-tv-32LF550A.png', 2700000, 8, 'on'),
(14, 2, 0, 'LG LED TV 32\" - 32LF520A', 'Layar 32\" <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'lg-led-tv32-32LF520A.png', 2750000, 3, 'on'),
(15, 2, 0, 'Sharp 32\" LED LC-32LE265i', 'Layar 32\" <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'sharp-32-led-32LE265i.png', 2750000, 10, 'on'),
(16, 3, 0, 'Sony A7 Mark II Body Only', '<ul><li>24.3MP Full-Frame Exmor CMOS Sensor</li><li>5-Axis SteadyShot INSIDE Stabilization</li><li>Enhanced Fast Hybrid AF and 5 fps Burst</li><li>Full HD XAVC S Video and S-Log2 Gamma</li><li>3.0&Prime; 1,228.8k-Dot Tilting LCD Monitor</li><li>XGA 2.36M-Dot OLED Electronic Viewfinder</li><li>Built-In Wi-Fi Connectivity with NFC</li></ul>', 'Jual-Kamera-Sony-A7-Mark-II-Body-Only-Harga-Murah-1.jpg', 12999, 10, 'on'),
(17, 3, 0, 'Sony A7 Mark II Kit FE 28-70mm f/3.5-5.6 OSS', '<ul><li>24.3MP Full-Frame Exmor CMOS Sensor</li><li>5-Axis SteadyShot INSIDE Stabilization</li><li>Enhanced Fast Hybrid AF and 5 fps Burst</li><li>Full HD XAVC S Video and S-Log2 Gamma</li><li>3.0&Prime; 1,228.8k-Dot Tilting LCD Monitor</li><li>XGA 2.36M-Dot OLED Electronic Viewfinder</li><li>Built-In Wi-Fi Connectivity with NFC</li></ul>', 'Thumb-Sony-A7-Mark-II-Kit-FE-28-70mm-f-3.5-5.6-OSS.jpg', 15999, 14, 'on'),
(18, 1, 0, 'Samsung Galaxy A14 5G', '<p>Samsung Galaxy A14 5G<br /><br />- Processor : Octa Core Processor<br />- Size : 6.6&quot;<br />- Resolution : FHD+<br />- Rear Camera Resolution : 50.0 MP + 2.0 MP + 2.0 MP<br />- Main Camera Auto Focus : Yes<br />- Rear Camera - OIS : No<br />- Rear Camera - Zoom : Digital Zoom up to 10x<br />- Front Camera Resolution : 8.0 MP<br />- Front Camera Auto Focus : No<br />- Video Resolution : FHD (1920 x 1080) @30fps<br />- RAM : 4/6GB<br />- ROM : 64/128GB<br />- SIM Tray : Dual-Sim<br />- Network Type : 5G/4G<br />- USB Interface : USB Type-C<br />- USB Version : USB 2.0<br />- Earjack : 3.5mm Stereo<br />- Bluetooth Version : Bluetooth v5.0<br />- NFC : No<br />- Battery Capacity : 5000mAh<br />15W Support Fast Charge<br />- SamsungDex Support : No<br /><br /><br /><br />Samsung Galaxy A14 4G<br /><br />- Processor : Mediatek Helio G80<br />- Size : 6.6&quot;<br />- Technology : IPS LCD 60Hz<br />- Resolution : FHD+<br />- Rear Camera Resolution : 50.0 MP + 2.0 MP + 2.0 MP<br />- Main Camera Auto Focus : Yes<br />- Rear Camera - OIS : No<br />- Rear Camera - Zoom : Digital Zoom up to 10x<br />- Front Camera Resolution : 13.0 MP<br />- Front Camera Auto Focus : No<br />- Video Resolution : FHD (1920 x 1080) @30fps<br />- RAM : 4 GB/6 GB<br />- ROM : 128GB<br />- SIM Tray : Dual-Sim<br />- Network Type : 4G<br />- USB Interface : USB Type-C<br />- USB Version : USB 2.1<br />- Earjack : 3.5mm Stereo<br />- Bluetooth Version : Bluetooth v5.1<br />- NFC : Yes<br />- Audio : Dolby ATMOS<br />- Battery Capacity : 5000mAh<br />15W Support Fast Charge<br />- Others : 4G, Side Fingerprint, C-type<br />- Dimensi : 167.7 x 78.0 x 9.1 mm (6.60 x 3.07 x 0.36 in)<br />- Weight : 202 g<br />- SamsungDex Support : No</p>', 'Samsung-Galaxy-A14-5G-Price-in-South-Africa-1536x1536.png', 2399000, 10, 'on'),
(19, 1, 0, 'iPhone 13 128GB ', '<p>Iphone 13<br />Layar : 6.1 inch<br />Memori : 128 GB<br />Warna : Red - Starlight - Midnight - Blue - Pink</p>', '5-2.jpg', 13499, 8, 'on'),
(20, 1, 0, 'Samsung Galaxy S23 Ultra 5G 12/512GB', '<p>Spesifikasi:<br /><br />- Processor : Snapdragon 8 Gen 2 (4nm)<br />- Size : 6,8&rdquo;<br />- Technology : Dynamic AMOLED 2X, 1-120Hz<br />- Resolution : QHD+ (3088 x 1440) 500 ppi<br />- Rear Camera Resolution : 200.0 MP + 12.0 MP + 10.0 MP + 10.0 MP<br />- Main Camera Auto Focus : Yes<br />- Rear Camera - OIS : Yes<br />- Rear Camera - Zoom : 10x optical zoom, Digital Zoom up to 100x<br />- Front Camera Resolution : 12.0 MP<br />- Front Camera Auto Focus : No<br />- Video Resolution : UHD 8K (7680 x 4320) I @24fps<br />- RAM : 12 GB<br />- ROM : 256GB / 512GB/ 1TB<br />- SIM Tray : Dual-SIM<br />- Network Type :5G<br />- USB Interface : USB Type-C<br />- USB Version : USB Type-C 3.2<br />- Earjack : -<br />- Bluetooth Version : Bluetooth v5.3<br />- NFC : Yes<br />- Battery Capacity : 5000mAh, Super Fast Charging, Fast Wireless Charging 2.0, Reverse Wireless Charging<br />- Others : S pen support</p>', '7a3d188b67bbbf3735ab3cb2577f0def.jpg', 21999000, 5, 'on'),
(21, 3, 0, 'ldajsl', '<p>akhiaua</p>', '5-2.jpeg', 4000000, 2, 'off');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`, `status`) VALUES
(1, 'Smartphone', 'on'),
(2, 'Televisi', 'on'),
(3, 'Kamera', 'on'),
(4, 'Radio', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `konfirmasi_id` int(10) NOT NULL,
  `pesanan_id` int(10) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_account` varchar(150) NOT NULL,
  `tanggal_transfer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`konfirmasi_id`, `pesanan_id`, `nomor_rekening`, `nama_account`, `tanggal_transfer`) VALUES
(1, 2, '0008888', 'Jeong', '2016-06-19'),
(2, 3, '0008888', 'Lee', '2016-06-19'),
(3, 4, '0008888', 'Jeong', '2016-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kota_id` int(10) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `tarif` int(10) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kota_id`, `kota`, `tarif`, `status`) VALUES
(1, 'Jakarta', 6000, 'on'),
(2, 'Bandung', 8000, 'on'),
(3, 'Surabaya', 11000, 'on'),
(4, 'Semarang', 9000, 'on'),
(5, 'Balikpapan', 32000, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `list_barang`
--

CREATE TABLE `list_barang` (
  `list_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int(10) NOT NULL,
  `kota_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `status_courier` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `kota_id`, `user_id`, `nama_penerima`, `nomor_telepon`, `alamat`, `tanggal_pemesanan`, `status`, `status_courier`) VALUES
(2, 2, 2, 'Jeong', '00000', 'Jl. XXXXX', '2016-10-08 06:11:24', 0, 0),
(3, 3, 6, 'Lee', '0000', 'Jl. aaaa', '2016-10-08 10:48:45', 3, 0),
(4, 1, 6, 'Lee', '0000', 'Jl. AAA', '2016-10-08 12:01:55', 0, 0),
(5, 2, 7, 'Malik Fajiyan Akbar', '+628215872313', 'St. Batu Ratna no.71 Km 11 m Karang Joang. RT 54 , ID, 76127', '2023-03-14 04:45:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_detail`
--

CREATE TABLE `pesanan_detail` (
  `pesanan_id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `quantity` tinyint(2) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pesanan_detail`
--

INSERT INTO `pesanan_detail` (`pesanan_id`, `barang_id`, `quantity`, `harga`) VALUES
(2, 6, 1, 2900000),
(2, 5, 1, 12700000),
(3, 13, 1, 2700000),
(3, 1, 1, 7800000),
(3, 11, 1, 10100000),
(4, 7, 2, 6134000),
(4, 12, 1, 7250000),
(5, 1, 1, 7800000),
(5, 20, 1, 21999000);

-- --------------------------------------------------------

--
-- Table structure for table `top_up`
--

CREATE TABLE `top_up` (
  `topup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Wallet_id` int(11) NOT NULL,
  `Nama` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `level`, `nama`, `email`, `alamat`, `phone`, `password`, `status`) VALUES
(2, 'superadmin', 'admin', 'admin@weshop.com', 'jl weshop', '08889999', '1b3231655cebb7a1f783eddf27d254ca', 'on'),
(6, 'customer', 'customer', 'customer1@aaa.com', 'jl.Customer Weshop', '088888', '5f4dcc3b5aa765d61d8327deb882cf99', 'on'),
(7, 'customer', 'Malik Fajriyan Akbar', 'akbarmalikfajriyan@gmail.com', 'komplek tojo, jalan gua no.67', '082158723138', 'f69dd6b9e8fcbcbe40636e24f6675e63', 'on'),
(8, 'courier', 'courier contoh', 'courier@terbang.com', 'jalan angkasa', '084617304832', '21232f297a57a5a743894a0e4a801fc3', 'on'),
(9, 'customer', 'dandy', 'dandy@gmail.com', 'komplek tojo, jalan gua no.67', '073920421', '4aab0891252514af59dbe05739ae4f56', 'on'),
(10, 'customer', 'mega', 'maga@wati.com', 'komplek tojo, jalan gua no.67', '927198024', '91805ec00ad20b85226bec0bacf843d3', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `wallet_id` int(11) NOT NULL,
  `ballance` int(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`wallet_id`, `ballance`, `user_id`) VALUES
(7, 100000000, 7),
(9, 20000000, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`konfirmasi_id`),
  ADD KEY `pesanan_id` (`pesanan_id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `list_barang`
--
ALTER TABLE `list_barang`
  ADD PRIMARY KEY (`list_barang_id`),
  ADD KEY `barang_id` (`barang_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`),
  ADD KEY `kota_id` (`kota_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indexes for table `top_up`
--
ALTER TABLE `top_up`
  ADD PRIMARY KEY (`topup_id`),
  ADD KEY `Customer_id` (`user_id`),
  ADD KEY `Wallet_id` (`Wallet_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`wallet_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `konfirmasi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `kota_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `list_barang`
--
ALTER TABLE `list_barang`
  MODIFY `list_barang_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `top_up`
--
ALTER TABLE `top_up`
  MODIFY `topup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `list_barang`
--
ALTER TABLE `list_barang`
  ADD CONSTRAINT `list_barang_ibfk_1` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `list_barang_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD CONSTRAINT `pesanan_detail_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `top_up`
--
ALTER TABLE `top_up`
  ADD CONSTRAINT `top_up_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `top_up_ibfk_2` FOREIGN KEY (`Wallet_id`) REFERENCES `wallet` (`wallet_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
