SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absen` int(11) NOT NULL,
  `jadwal` date NOT NULL,
  `keterangan` enum('Hadir','Sakit','Izin','Absen') NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `npm` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absen`, `jadwal`, `keterangan`, `id_kelas`, `npm`) VALUES
(001, '2022-7-3', 'Absen', '001', '202010370311001'),
(002, '2022-7-3', 'Absen', '001', '202010370311002'),
(003, '2022-7-3', 'Absen', '001', '202010370311003'),
(004, '2022-7-3', 'Absen', '001', '202010370311004'),
(005, '2022-7-3', 'Absen', '001', '202010370311005'),
(006, '2022-7-3', 'Absen', '001', '202010370311006'),
(007, '2022-7-3', 'Absen', '001', '202010370311007'),
(008, '2022-7-3', 'Absen', '001', '202010370311008'),

(009, '2022-7-3', 'Absen', '002', '202010370311009'),
(010, '2022-7-3', 'Absen', '002', '202010370311010'),
(011, '2022-7-3', 'Absen', '002', '202010370311011'),
(012, '2022-7-3', 'Absen', '002', '202010370311012'),
(013, '2022-7-3', 'Absen', '002', '202010370311013'),
(014, '2022-7-3', 'Absen', '002', '202010370311014'),
(015, '2022-7-3', 'Absen', '002', '202010370311015'),
(016, '2022-7-3', 'Absen', '002', '202010370311016');


-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `last_login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama`, `jk`, `tgl_lahir`, `email`, `password`, `no_hp`, `foto`, `status`, `last_login`) VALUES
(1, 'Kholil', 'Pria', '2001-06-13', 'kholil@gmail.com', '$2y$10$Nx44ci/AbhmvY/HPmVXu4O0vGdfZa8vWURXeRLp5omvBl2O8G7s4e', '123123123', 'profil.JPG', 'Dosen', '2022-07-01 16:30:14');
-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `id_dosen` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `id_dosen`) VALUES
('001', 'Basis Data A', '1'),
('002', 'Basis Data B', '1');


-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `jk`, `tgl_lahir`, `alamat`, `id_kelas`, `foto`) VALUES
('202010370311001', 'oki', 'Pria', '2001-06-13', 'malang', '001', 'user.jpg'),
('202010370311002', 'ardi', 'Pria', '2001-06-13', 'malang', '001', 'user.jpg'),
('202010370311003', 'kelvin', 'Pria', '2001-06-13', 'malang', '001', 'user.jpg'),
('202010370311004', 'gatha', 'Pria', '2001-06-13', 'malang', '001', 'user.jpg'),
('202010370311005', 'diqhan ', 'Pria', '2001-06-13', 'malang', '001', 'user.jpg'),
('202010370311006', 'faiz', 'Pria', '2001-06-13', 'malang', '001', 'user.jpg'),
('202010370311007', 'dayat', 'Pria', '2001-06-13', 'malang', '001', 'user.jpg'),
('202010370311008', 'kholil', 'Pria', '2001-06-13', 'malang', '001', 'user.jpg'),

('202010370311009', 'erin', 'Wanita', '2001-06-13', 'malang', '002', 'user.jpg'),
('202010370311010', 'dinda', 'Wanita', '2001-06-13', 'malang', '002', 'user.jpg'),
('202010370311011', 'putri', 'Wanita', '2001-06-13', 'malang', '002', 'user.jpg'),
('202010370311012', 'ara', 'Wanita', '2001-06-13', 'malang', '002', 'user.jpg'),
('202010370311013', 'nurlaila', 'Wanita', '2001-06-13', 'malang', '002', 'user.jpg'),
('202010370311014', 'alfin', 'Wanita', '2001-06-13', 'malang', '002', 'user.jpg'),
('202010370311015', 'hana', 'Wanita', '2001-06-13', 'malang', '002', 'user.jpg'),
('202010370311016', 'agnes', 'Wanita', '2001-06-13', 'malang', '002', 'user.jpg');
-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `jenis_matkul` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `nama_matkul`, `jenis_matkul`, `sks`, `id_dosen`) VALUES
(1, 'Basis Data', 'Praktikum', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `npm` (`npm`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
