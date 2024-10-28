-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 10:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `zms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal_list`
--

CREATE TABLE `animal_list` (
  `id` int(30) NOT NULL,
  `cage_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animal_list`
--

INSERT INTO `animal_list` (`id`, `cage_no`, `name`, `description`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '6231415', 'Lion', '&lt;p&gt;The lion is a large cat of the genus Panthera native to Africa and India. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id feugiat ipsum, vel condimentum risus. Ut quis tempor felis. Aenean vestibulum laoreet libero, in sollicitudin nisl pulvinar vel. Aliquam vel iaculis urna, in malesuada metus. Maecenas non augue maximus, mattis metus nec, tincidunt est. In urna justo, sodales vel volutpat at, pharetra et nisi. Nulla tellus ipsum, congue nec mauris eu, bibendum vehicula lorem. Donec iaculis porta arcu, id fringilla ligula tempor et. In porta vitae odio eu mollis. Fusce consequat tempus bibendum. Aliquam scelerisque eros vel ultricies pellentesque. Morbi ac congue nunc. Curabitur pretium semper nunc quis euismod. Aliquam erat volutpat.&lt;/span&gt;&lt;/p&gt;', 'uploads/animals/1.png?v=1653017180', 1, 0, '2022-05-20 11:26:19', '2022-05-20 15:33:22'),
(2, '1014', 'Tiger', '&lt;p&gt;The tiger is the largest living cat species and a member of the genus Panthera. It is most recognizable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates such as deer and wild boar.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Donec blandit nisl neque, in commodo est mattis sed. Donec rutrum libero dictum condimentum aliquam. Vestibulum sed eros velit. Donec vitae semper elit. In consequat ut ipsum ut consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam arcu erat, lobortis non luctus a, convallis a ipsum.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Nunc eu arcu malesuada, maximus massa vel, dictum erat. Nunc sit amet nisl nulla. Aliquam erat volutpat. Aenean leo velit, imperdiet id cursus ut, condimentum a metus. Donec ligula tortor, sagittis eu posuere aliquam, lobortis sit amet lectus. Praesent ligula ipsum, ullamcorper dictum odio eget, mattis imperdiet arcu. Suspendisse pellentesque diam a magna sollicitudin blandit.&lt;/p&gt;', 'uploads/animals/2.png?v=1653017306', 1, 0, '2022-05-20 11:28:25', '2022-05-20 11:32:25'),
(3, '123', 'asda', '&lt;p&gt;asdasd&lt;/p&gt;', NULL, 1, 1, '2022-05-20 15:34:41', '2022-05-20 15:37:21'),
(4, '123654', 'Monkey', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Duis lacinia lacus nec urna consequat, non tempor lorem tristique. In hac habitasse platea dictumst. Aliquam finibus facilisis vulputate. Sed aliquet, odio non tristique pellentesque, tortor justo imperdiet augue, id rhoncus ex ex non dolor. Cras vel est porttitor, porttitor odio vehicula, fermentum felis. Praesent pellentesque consequat felis, sed commodo leo dictum ac. Praesent molestie quam eget risus dapibus, ut sollicitudin eros tincidunt. Suspendisse venenatis id orci eu condimentum. Phasellus at suscipit arcu, a pharetra lectus. Aenean fringilla quam velit, volutpat mattis erat tristique non. Etiam maximus laoreet rhoncus. Aenean vel tristique mauris.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Vivamus ut purus elementum, porttitor nisl a, interdum sapien. Aenean tempor ex sit amet placerat molestie. Aliquam urna turpis, ullamcorper quis metus pharetra, iaculis sodales libero. Nam non magna dolor. Fusce quis fringilla erat, quis fermentum nulla. Maecenas suscipit pretium finibus. Cras nulla lectus, condimentum et justo non, condimentum sollicitudin sem. Aliquam aliquet, dolor eu lacinia maximus, est tellus tristique lorem, in cursus ipsum massa vitae nunc. Suspendisse porttitor pharetra odio. Mauris quis magna vel nulla porta gravida eu vitae elit. Curabitur efficitur scelerisque cursus. Aenean ligula nibh, sollicitudin ut leo ac, efficitur ultricies arcu.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Morbi vel ligula sed ipsum placerat lacinia. Suspendisse condimentum est magna, ac malesuada turpis maximus in. Quisque et convallis magna. Nullam et erat egestas, fringilla massa quis, faucibus eros. Vivamus ultricies nunc enim. Vivamus in magna sapien. Donec nec imperdiet tellus. Maecenas lobortis urna id posuere dictum. Aliquam sagittis maximus quam ut interdum. Nulla facilisi. Donec magna tellus, mollis id purus quis, lobortis ultrices nunc. Sed metus ante, tincidunt vitae convallis tincidunt, pulvinar ac nisl.&lt;/p&gt;', 'uploads/animals/4.png?v=1653035657', 1, 0, '2022-05-20 16:34:17', '2022-05-20 16:34:30'),
(5, '11112', 'Test', '&lt;p&gt;Test&lt;/p&gt;', 'uploads/animals/5.png?v=1653035697', 0, 1, '2022-05-20 16:34:57', '2022-05-20 16:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_list`
--

CREATE TABLE `inquiry_list` (
  `id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `email` text NOT NULL,
  `contact` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry_list`
--

INSERT INTO `inquiry_list` (`id`, `fullname`, `email`, `contact`, `message`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Mark Cooper', 'mcooper@sample.com', '09654789123', 'This is a sample message only', 1, '2022-05-20 15:25:26', '2022-05-20 15:33:42'),
(3, 'Samantha Jane miller', 'Sam23@gmail.com', '09123654789', 'This is a sample inquiry only.', 1, '2022-05-20 16:32:56', '2022-05-20 16:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Zoo Management System'),
(6, 'short_name', 'ZMS - PHP'),
(11, 'logo', 'uploads/logo.png?v=1653013473'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1653013475'),
(15, 'adult_price', '500'),
(16, 'child_price', '280'),
(17, 'phone', '456-987-1231 - updated'),
(18, 'mobile', '09123456987 / 094563212222 - updated'),
(19, 'email', 'updatedinfo@zoomanagement.com'),
(20, 'address', '7087 Henry St. Clifton Park, NY 12065  - updated');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_list`
--

CREATE TABLE `ticket_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `adult_price` float(12,2) NOT NULL DEFAULT 0.00,
  `child_price` float(12,2) NOT NULL DEFAULT 0.00,
  `adult_no` int(12) NOT NULL DEFAULT 0,
  `child_no` int(12) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_list`
--

INSERT INTO `ticket_list` (`id`, `user_id`, `code`, `adult_price`, `child_price`, `adult_no`, `child_no`, `date_created`, `date_updated`) VALUES
(1, 1, '2022052000001', 350.00, 150.00, 2, 1, '2022-05-20 13:38:12', '2022-05-20 13:38:12'),
(3, 1, '2022052000002', 350.00, 150.00, 1, 3, '2022-05-20 16:37:27', '2022-05-20 16:37:27'),
(4, 1, '2022052000003', 350.00, 150.00, 3, 5, '2022-05-20 16:37:44', '2022-05-20 16:37:52'),
(6, 6, '2022052000004', 350.00, 150.00, 2, 1, '2022-05-20 16:39:42', '2022-05-20 16:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='2';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', '', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2022-05-16 14:17:49'),
(6, 'Mark', 'D', 'Cooper', 'mcooper', 'c7162ff89c647f444fcaa5c635dac8c3', 'uploads/avatars/6.png?v=1653035960', NULL, 2, '2022-05-20 16:39:20', '2022-05-20 16:39:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal_list`
--
ALTER TABLE `animal_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_list`
--
ALTER TABLE `ticket_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal_list`
--
ALTER TABLE `animal_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ticket_list`
--
ALTER TABLE `ticket_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ticket_list`
--
ALTER TABLE `ticket_list`
  ADD CONSTRAINT `user_id_fk_tl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;
