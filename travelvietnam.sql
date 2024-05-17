

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Cơ sở dữ liệu: `lrwcbrks_dulichviet`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `id_post` int(11) NOT NULL,
  `cmt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `id_post`, `cmt`) VALUES
(59, 'duy959398@gmail.com', 13, '<p>đẹp</p>'),
(81, 'admin', 14, '<p>:))</p>'),
(82, 'admin', 14, '<p>haha</p>'),
(83, 'admin', 14, '<p>Test nhe cai cmt</p><p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_travelviewing`
--

CREATE TABLE `comment_travelviewing` (
  `id` int(11) NOT NULL,
  `id_user` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_post` int(11) NOT NULL,
  `cmt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_travelviewing`
--

INSERT INTO `comment_travelviewing` (`id`, `id_user`, `id_post`, `cmt`) VALUES
(1, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 4, '\0\0\0t\0\0\0e\0\0\0s\0\0\0t\0\0\0 \0\0\0c\0\0\0m\0\0\0t'),
(2, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 4, '\0\0\0<\0\0\0p\0\0\0>\0\0\0T\0\0\0h\0\0\0u\0\0\0 \0\0\0c\0\0\0m\0\0\0t\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(3, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 4, '\0\0\0<\0\0\0p\0\0\0>\0\0\0h\0\0\0a\0\0\0h\0\0\0a\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(4, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 3, '\0\0\0<\0\0\0p\0\0\0>\0\0\0h\0\0\0f\0\0\0h\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(5, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 3, '\0\0\0<\0\0\0p\0\0\0>\0\0\0d\0\0\0h\0\0\0g\0\0\0f\0\0\0h\0\0\0f\0\0\0j\0\0\0g\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(6, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 3, '\0\0\0<\0\0\0p\0\0\0>\0\0\0d\0\0\0h\0\0\0g\0\0\0f\0\0\0h\0\0\0f\0\0\0j\0\0\0g\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(7, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 3, '\0\0\0<\0\0\0p\0\0\0>\0\0\0d\0\0\0h\0\0\0g\0\0\0f\0\0\0h\0\0\0f\0\0\0j\0\0\0g\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(8, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 4, '\0\0\0<\0\0\0p\0\0\0>\0\0\0d\0\0\0a\0\0\0s\0\0\0d\0\0\0a\0\0\0s\0\0\0d\0\0\0s\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(9, 'admin', 9, 'hkkhj'),
(10, 'admin', 9, 'gjhjhg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `posts` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `travelviewing`
--

CREATE TABLE `travelviewing` (
  `id` int(11) NOT NULL,
  `title` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iva1` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iva2` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iva3` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Dday` date NOT NULL,
  `time` int(11) NOT NULL,
  `startingplace` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ToLocation` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Numberofseats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `travelviewing`
--


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(24) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `address` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `phonenumber`, `address`) VALUES
(0, 'admin', '11111111', 'Admin', '0347194217', '................................'),
(10, 'duy959398@gmail.com', '11111111', 'Test User', '654645', '645645654645'),
(11, 'test@gmail.com', '11111111', 'Test User', '113', 'moutain'),
(15, 'hgjfhg@gfd.com', '123456', 'hạnh', '656565', 'jgh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_travelviewing`
--
ALTER TABLE `comment_travelviewing`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `travelviewing`
--
ALTER TABLE `travelviewing`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `name` (`id`,`email`,`password`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `comment_travelviewing`
--
ALTER TABLE `comment_travelviewing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `travelviewing`
--
ALTER TABLE `travelviewing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

