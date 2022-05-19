-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 18-06-17 13:57
-- 서버 버전: 10.1.21-MariaDB
-- PHP 버전: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `db2`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `bill`
--

CREATE TABLE `bill` (
  `billnum` int(11) UNSIGNED NOT NULL,
  `customerid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `ticketname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `buylistening` int(11) DEFAULT NULL,
  `buydownload` int(11) DEFAULT NULL,
  `buydate` date NOT NULL,
  `paymethod` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 테이블의 덤프 데이터 `bill`
--

INSERT INTO `bill` (`billnum`, `customerid`, `ticketname`, `buylistening`, `buydownload`, `buydate`, `paymethod`, `total`) VALUES
(20, 'wjlee', '무제한 감상권', 1, 0, '2018-06-16', 'phone', 25000),
(21, 'wjlee', '1곡 저장권', 0, 1, '2018-06-16', 'phone', 500),
(22, 'wjlee', '1곡 저장권', 0, 1, '2018-06-16', 'phone', 500),
(23, 'wjlee', '1곡 저장권', 0, 1, '2018-06-16', 'phone', 500),
(24, 'ihkim', '무제한 감상권', 0, 1, '2018-06-16', 'phone', 25000),
(25, 'ihkim', '1곡 저장권', 0, 1, '2018-06-16', 'phone', 500),
(26, 'ihkim', '1곡 저장권', 0, 1, '2018-06-16', 'phone', 500),
(27, 'ihkim', '1곡 저장권', 0, 1, '2018-06-16', 'phone', 500),
(28, 'gtpark', '1곡 저장권', 0, 1, '2018-06-16', 'phone', 500),
(29, 'hwjang', '1곡 저장권', 0, 1, '2018-06-16', 'phone', 500);

-- --------------------------------------------------------

--
-- 테이블 구조 `contact`
--

CREATE TABLE `contact` (
  `customerid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `contactid` int(11) UNSIGNED NOT NULL,
  `contactdate` date NOT NULL,
  `contacttype` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `eventname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 테이블의 덤프 데이터 `contact`
--

INSERT INTO `contact` (`customerid`, `contactid`, `contactdate`, `contacttype`, `eventname`) VALUES
('gtpark', 103, '2018-06-15', 'email', '종강기념 이벤트'),
('hwjang', 104, '2018-06-15', 'phone', '종강기념 이벤트'),
('ihkim', 101, '2018-06-15', 'email', '다운로드권 5개 증정 이벤트'),
('ihkim', 102, '2018-06-15', 'email', 'A 가수 사인 CD 증정'),
('ihkim', 105, '2018-06-15', 'email', '종강기념 이벤트');

-- --------------------------------------------------------

--
-- 테이블 구조 `customer`
--

CREATE TABLE `customer` (
  `customerid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 테이블의 덤프 데이터 `customer`
--

INSERT INTO `customer` (`customerid`, `pwd`, `email`, `phone`, `name`) VALUES
('gtpark', '1357', 'dafs@naver.com', '01025687945', 'Park Geuntae'),
('hwjang', '789', 'sddk@naver.com', '01086451532', 'Jang Hyeonwook'),
('ihkim', '2017100', 'ihkim@naver.com', '010-6565-4356', 'Kim Ik-hwan'),
('wjlee', '123', 'ddksk@naver.com', '01036591234', 'Lee Won Jae');

-- --------------------------------------------------------

--
-- 테이블 구조 `downloadlist`
--

CREATE TABLE `downloadlist` (
  `downloadnum` int(11) UNSIGNED NOT NULL,
  `customerid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `musicname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `artist` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `album` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 테이블의 덤프 데이터 `downloadlist`
--

INSERT INTO `downloadlist` (`downloadnum`, `customerid`, `musicname`, `artist`, `album`) VALUES
(1, 'wjlee', 'Closer', 'The Chainsmokers(체인스모커스)', 'Collage'),
(2, 'wjlee', '여행', '볼빨간사춘기', 'Red Diary Page.2'),
(3, 'ihkim', 'Closer', 'The Chainsmokers(체인스모커스)', 'Collage'),
(4, 'gtpark', '사랑을 했다(LOVE SCENARIO)', 'iKON', 'Return');

-- --------------------------------------------------------

--
-- 테이블 구조 `event`
--

CREATE TABLE `event` (
  `eventname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `eventdate` date NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 테이블의 덤프 데이터 `event`
--

INSERT INTO `event` (`eventname`, `eventdate`, `quantity`) VALUES
('A 가수 사인 CD 증정', '2018-06-15', 2),
('다운로드권 5개 증정 이벤트', '2018-06-16', 4),
('종강기념 이벤트', '2018-06-13', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `eventcustomer`
--

CREATE TABLE `eventcustomer` (
  `customerid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `eventname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 테이블의 덤프 데이터 `eventcustomer`
--

INSERT INTO `eventcustomer` (`customerid`, `eventname`) VALUES
('gtpark', '종강기념 이벤트'),
('hwjang', '종강기념 이벤트'),
('ihkim', 'A 가수 사인 CD 증정'),
('ihkim', '다운로드권 5개 증정 이벤트'),
('ihkim', '종강기념 이벤트');

-- --------------------------------------------------------

--
-- 테이블 구조 `music`
--

CREATE TABLE `music` (
  `musicname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `artist` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `album` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `genre` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `clicknum` int(11) DEFAULT '0',
  `play` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 테이블의 덤프 데이터 `music`
--

INSERT INTO `music` (`musicname`, `artist`, `album`, `genre`, `clicknum`, `play`) VALUES
('Bad Boy', 'Red Velvet(레드벨벳)', 'The Perfect Red Velvet- The 2nd Album Repackage', 'KPOP', 67, ''),
('Be Careful', 'Cardi B(카디 비)', 'Invasion Of Privacy', 'POP', 72, ''),
('Better Now', 'Post Malone(포스트 말론)', 'beerbongs & bentleys', 'POP', 67, ''),
('Boo\'d Up', 'Ella Mai(엘라마이)', 'Ready', 'POP', 67, ''),
('Chun-Li', 'Nicki Minaj(니키 미나즈)', 'Chun-Li', 'POP', 72, ''),
('Closer', 'The Chainsmokers(체인스모커스)', 'Collage', 'POP', 219, ''),
('Delicate', 'Taylor Swift(테일러 스위프트)', 'reputation', 'POP', 70, ''),
('EVERYDAY', 'WINNER', 'EVERYD4Y', 'KPOP', 64, ''),
('FAKE LOVE', '방탄소년단', 'LOVE YOURSELF 轉 \'Tear\'', 'KPOP', 68, ''),
('Freaky Friday(feat.Chris Brown)', 'Lil Dicky(릴 디키)', 'Freaky Friday', 'POP', 75, ''),
('FRIENDS', 'Marshmello & Anne-Marie', 'Speak Your Mind[Deluxe]', 'POP', 64, ''),
('Girls Like You', 'Maroon 5(마룬 파이브)', 'Red Pill Blues [Deluxe Edition]', 'POP', 66, ''),
('God\'s Plan', 'Drake(드레이크)', 'Scary Hours', 'POP', 66, ''),
('HandClap', 'Fitz & The Tantrums', 'Fitz and The Tantrums [Deluxe]', 'POP', 73, ''),
('Havana(feat. Young Thug)', 'Camila Cabello(카밀라 카베요)', 'Camila', 'POP', 68, ''),
('Heaven', 'Kane Brown', 'Kane Brown[Deluxe Edition]', 'POP', 67, ''),
('I Like It', 'Cardi B & Bad Bunny & J Balvin', 'Invasion Of Privacy', 'POP', 65, ''),
('I\'m Upset', 'Drake(드레이크)', 'I\'m Upset', 'POP', 64, ''),
('In My Blood', 'Shawn Mendes(션 멘데스)', 'Shawn Mendes', 'POP', 68, ''),
('instagram', 'DEAN(딘)', 'instagram', 'KPOP', 64, ''),
('Jenga(Feat.Gaeko)', '헤이즈(HEIZE)', '바람', 'KPOP', 65, ''),
('LATATA', '(여자)아이들', 'I am', 'KPOP', 66, ''),
('Lonely', '볼빨간사춘기', 'Red Diary Page.2', 'KPOP', 67, ''),
('Look Alive(feat.Drake)', 'BlocBoy JB', 'Look Alive(feat.Drake)', 'POP', 67, ''),
('Love Lies', 'Khalid & Normani', 'Love, Simon OST', 'POP', 66, ''),
('LOVE YA!', '혁오(HYUKOH)', '24:How to find true love and happiness', 'KPOP', 66, ''),
('Lucid Dreams', 'Juice WRLD', 'Lucid Dreams', 'POP', 70, ''),
('Meant to Be', 'Bebe Rexha & Florida Georgia Line', 'All Your Fault: Pt.2', 'POP', 68, ''),
('Mine', 'Bazzi', 'COSMIC', 'POP', 64, ''),
('Never Be the Same', 'Camila Cabello(카밀라 카베요)', 'Camila', 'POP', 69, ''),
('New Rules', 'Dua Lipa(두아 리파)', 'Dua Lipa [Deluxe]', 'POP', 65, ''),
('Nice For What', 'Drake(드레이크)', 'Nice For What', 'POP', 73, ''),
('No Tears Left To Cry', 'Ariana Grande(아리아나 그란데)', 'No Tears Left To Cry', 'POP', 71, ''),
('One Kiss', 'Calvin Harris & Dua Lipa', 'One Kiss', 'POP', 65, ''),
('One Number Away', 'Luke Combs', 'This One\'s For You', 'POP', 67, ''),
('Perfect Duet(with Beyonce)', 'Ed Sheeran(에드 시런)', 'Perfect Duet(with Beyonce)', 'POP', 75, ''),
('Plug Walk', 'Rich The Kid', 'Plug Walk', 'POP', 65, ''),
('Pray For Me', 'Kendrick Lamar & The Weeknd', 'Black Panther The Album Music From And Inspired By Kendrick Lamar & SZA & The Weeknd', 'POP', 65, ''),
('Psycho (feat. Ty Dolla $ign)', 'Post Malone(포스트 말론)', 'Psycho', 'POP', 74, ''),
('rockstar(feat.21 Savage)', 'Post Malone(포스트 말론)', 'beerbongs & bentleys', 'POP', 70, ''),
('Roller Coaster', '청하', 'Offset', 'KPOP', 71, ''),
('Shape Of You', 'Ed Sheeran(에드 시런)', '÷ [Deluxe]\r\n', 'POP', 69, ''),
('The Middle', 'Zedd & Grey & Maren Morris', 'The Middle', 'POP', 68, ''),
('This Is America', 'Childish Gambino(차일디시 감비노)', 'This Is America', 'POP', 72, ''),
('Thunder', 'Imagine Dragons(이매진 드래곤스)', 'Evolve', 'POP', 66, ''),
('Wait', 'Maroon 5(마룬파이브)', 'Red Pill Blues[Deluxe Edition]', 'POP', 64, ''),
('Walk It Talk It(feat.Drake)', 'Migos(미고스)', 'Culture II', 'POP', 66, ''),
('What is Love?', 'TWICE(트와이스)', 'What is Love?', 'KPOP', 69, ''),
('Whatever It Takes', 'Imagine Dragons(이매진 드래곤스)', 'Evolve', 'POP', 67, ''),
('Yes Indeed', 'Lil Baby & Drake', 'Harder Than Ever', 'POP', 64, ''),
('You', '멜로망스(MeloMance)', '투유 프로젝트-슈가맨2 Part.2', 'KPOP', 65, ''),
('가을 안부', '먼데이 키즈(Monday Kiz)', '가을 안부', 'KPOP', 77, ''),
('그날처럼', '장덕철', '그날처럼', 'KPOP', 64, ''),
('그대들은 어떤 기분이신가요(feat.우원재)', '빈첸(VINXEN)', '그대들은 어떤 기분이신가요', 'KPOP', 77, ''),
('그때 헤어지면 돼', '로이킴', '그때 헤어지면 돼', 'KPOP', 64, ''),
('꽃 길', 'BIGBANG', '꽃 길', 'KPOP', 64, ''),
('눈사람', '정승환', '그리고 봄', 'KPOP', 75, ''),
('데리러 가(Good Evening)', 'SHINee(샤이니)', '\'The Story of Light\'EP.1-The 6th Album', 'KPOP', 78, ''),
('마지막처럼', 'BLACKPINK', '마지막처럼', 'KPOP', 73, ''),
('모든 날, 모든 순간(Every day, Every Moment)', '폴킴(Paul Kim)', '\'키스 먼저 할까요?\'OST Part.3', 'KPOP', 65, ''),
('모래시계(Prod.헤이즈)', 'Wanna One(워너원)-더힐', '1÷X=1(UNDIVIDED)\r\n', 'KPOP', 65, ''),
('밤(Time for the moon night)', '여자친구(GFRIEND)', '여자친구 The 6th Mini Album \'Time for the moon night\'', 'KPOP', 68, ''),
('별이 빛나는 밤', '마마무(Mamamoo)', 'Yellow Flower', 'KPOP', 64, ''),
('붕붕(Feat.식케이)(Prod.GroovyRoom)', '김하온(HAON)', '고등래퍼2 Final', 'KPOP', 65, ''),
('빙글뱅글', '에이오에이(AOA)', 'BINGLE BANGLE', 'KPOP', 64, ''),
('빛나리', '펜타곤(PENTAGON)', 'Positive', 'KPOP', 64, ''),
('뿜뿜', '모모랜드(MOMOLAND)', 'GREAT!', 'KPOP', 64, ''),
('사랑을 했다(LOVE SCENARIO)', 'iKON', 'Return', 'KPOP', 82, ''),
('선물', '멜로망스(MeloMance)', 'Moonlight', 'KPOP', 93, ''),
('소나기(Feat.10cm)', '용준형', '소나기(Feat.10cm)', 'KPOP', 69, ''),
('숙녀(淑女)', '유빈(Yubin)', '都市女子', 'KPOP', 64, ''),
('여행', '볼빨간사춘기', 'Red Diary Page.2', 'KPOP', 93, ''),
('욕심', '멜로망스(MeloMance)', '욕심', 'KPOP', 64, ''),
('이 밤의 끝', '펀치(Punch)', '이 밤의 끝', 'KPOP', 64, ''),
('잊을만하면', '크러쉬(Crush)', '잊을만하면', 'KPOP', 64, ''),
('좋니', '윤종신', 'LISTEN 010 좋니', 'KPOP', 64, ''),
('주지마', '로꼬&화사(마마무)', '건반 위의 하이에나 Part.4', 'KPOP', 73, ''),
('지나오다', '닐로(Nil_O)', 'About You', 'KPOP', 66, ''),
('캥거루(Kangaroo)(Prod.ZICO)', 'Wanna One(워너원)-트리플포지션', '1÷X=1(UNDIVIDED)\r\n', 'KPOP', 70, ''),
('켜줘 (Light)', 'Wanna One(워너원)', '1÷X=1(UNDIVIDED)\r\n', 'KPOP', 70, '');

-- --------------------------------------------------------

--
-- 테이블 구조 `mypage`
--

CREATE TABLE `mypage` (
  `customerid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `remaindownload` int(11) NOT NULL DEFAULT '0',
  `listening` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 테이블의 덤프 데이터 `mypage`
--

INSERT INTO `mypage` (`customerid`, `remaindownload`, `listening`) VALUES
('gtpark', 0, 0),
('hwjang', 1, 0),
('ihkim', 2, 1),
('wjlee', 1, 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `playlist`
--

CREATE TABLE `playlist` (
  `customerid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `playlistid` int(11) UNSIGNED NOT NULL,
  `musicname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `artist` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `album` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 테이블의 덤프 데이터 `playlist`
--

INSERT INTO `playlist` (`customerid`, `playlistid`, `musicname`, `artist`, `album`) VALUES
('wjlee', 0, 'Closer', 'The Chainsmokers(체인스모커스)', 'Collage'),
('hwjang', 3, '선물', '멜로망스(MeloMance)', 'Moonlight'),
('wjlee', 4, '선물', '멜로망스(MeloMance)', 'Moonlight'),
('ihkim', 2, '여행', '볼빨간사춘기', 'Red Diary Page.2'),
('wjlee', 1, '여행', '볼빨간사춘기', 'Red Diary Page.2');

-- --------------------------------------------------------

--
-- 테이블 구조 `review`
--

CREATE TABLE `review` (
  `reviewid` int(11) UNSIGNED NOT NULL,
  `customerid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `reviewdate` date NOT NULL,
  `musicname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `artist` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `album` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `reviewtext` text CHARACTER SET utf8 COLLATE utf8_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 테이블의 덤프 데이터 `review`
--

INSERT INTO `review` (`reviewid`, `customerid`, `reviewdate`, `musicname`, `artist`, `album`, `reviewtext`) VALUES
(2456, 'wjlee', '2018-06-16', 'Closer                              ', 'The Chainsmokers(체인스모커스)         ', 'Collage', 'Good!!!'),
(2532, 'wjlee', '2018-06-17', 'EVERYDAY                            ', 'WINNER                           ', 'EVERYD4Y', '너무 좋아요'),
(2622, 'wjlee', '2018-06-17', 'LOVE YA!                            ', '혁오(HYUKOH)                       ', '24:How to find true love and happiness', '굳굳'),
(2685, 'gtpark', '2018-06-17', 'HandClap                            ', 'Fitz & The Tantrums              ', 'Fitz and The Tantrums [Deluxe]', '노래 신나고 좋음!'),
(2803, 'ihkim', '2018-06-17', '별이 빛나는 밤                            ', '마마무(Mamamoo)                     ', 'Yellow Flower', '노래 너무 좋다'),
(2862, 'hwjang', '2018-06-17', 'Thunder                             ', 'Imagine Dragons(이매진 드래곤스)        ', 'Evolve', '천둥 칠 때 들으면ㄹㅇ');

-- --------------------------------------------------------

--
-- 테이블 구조 `ticketstore`
--

CREATE TABLE `ticketstore` (
  `ticketname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 테이블의 덤프 데이터 `ticketstore`
--

INSERT INTO `ticketstore` (`ticketname`, `price`) VALUES
('1곡 저장권', 500),
('무제한 감상권', 25000);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billnum`),
  ADD KEY `FK_ticketstore_TO_bill` (`ticketname`),
  ADD KEY `FK_customer_TO_bill` (`customerid`);

--
-- 테이블의 인덱스 `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`customerid`,`contactid`),
  ADD KEY `FK_event_TO_contact` (`eventname`);

--
-- 테이블의 인덱스 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- 테이블의 인덱스 `downloadlist`
--
ALTER TABLE `downloadlist`
  ADD PRIMARY KEY (`downloadnum`),
  ADD KEY `FK_customer_TO_downloadlist` (`customerid`),
  ADD KEY `FK_music_TO_downloadlist` (`musicname`,`artist`,`album`);

--
-- 테이블의 인덱스 `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventname`);

--
-- 테이블의 인덱스 `eventcustomer`
--
ALTER TABLE `eventcustomer`
  ADD PRIMARY KEY (`customerid`,`eventname`),
  ADD KEY `FK_event_TO_eventcustomer` (`eventname`);

--
-- 테이블의 인덱스 `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`musicname`,`artist`,`album`);

--
-- 테이블의 인덱스 `mypage`
--
ALTER TABLE `mypage`
  ADD PRIMARY KEY (`customerid`);

--
-- 테이블의 인덱스 `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`customerid`,`playlistid`),
  ADD KEY `FK_music_TO_playlist` (`musicname`,`artist`,`album`);

--
-- 테이블의 인덱스 `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewid`),
  ADD KEY `FK_music_TO_rewiew` (`musicname`,`artist`,`album`),
  ADD KEY `FK_customer_TO_rewiew` (`customerid`);

--
-- 테이블의 인덱스 `ticketstore`
--
ALTER TABLE `ticketstore`
  ADD PRIMARY KEY (`ticketname`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `bill`
--
ALTER TABLE `bill`
  MODIFY `billnum` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- 테이블의 AUTO_INCREMENT `downloadlist`
--
ALTER TABLE `downloadlist`
  MODIFY `downloadnum` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 테이블의 AUTO_INCREMENT `review`
--
ALTER TABLE `review`
  MODIFY `reviewid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2895;
--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `FK_customer_TO_bill` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  ADD CONSTRAINT `FK_ticketstore_TO_bill` FOREIGN KEY (`ticketname`) REFERENCES `ticketstore` (`ticketname`);

--
-- 테이블의 제약사항 `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK_customer_TO_contact` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  ADD CONSTRAINT `FK_event_TO_contact` FOREIGN KEY (`eventname`) REFERENCES `event` (`eventname`);

--
-- 테이블의 제약사항 `downloadlist`
--
ALTER TABLE `downloadlist`
  ADD CONSTRAINT `FK_customer_TO_downloadlist` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  ADD CONSTRAINT `FK_music_TO_downloadlist` FOREIGN KEY (`musicname`,`artist`,`album`) REFERENCES `music` (`musicname`, `artist`, `album`);

--
-- 테이블의 제약사항 `eventcustomer`
--
ALTER TABLE `eventcustomer`
  ADD CONSTRAINT `FK_customer_TO_eventcustomer` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  ADD CONSTRAINT `FK_event_TO_eventcustomer` FOREIGN KEY (`eventname`) REFERENCES `event` (`eventname`);

--
-- 테이블의 제약사항 `mypage`
--
ALTER TABLE `mypage`
  ADD CONSTRAINT `FK_customer_TO_mypage` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`);

--
-- 테이블의 제약사항 `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `FK_customer_TO_playlist` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  ADD CONSTRAINT `FK_music_TO_playlist` FOREIGN KEY (`musicname`,`artist`,`album`) REFERENCES `music` (`musicname`, `artist`, `album`);

--
-- 테이블의 제약사항 `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_customer_TO_rewiew` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  ADD CONSTRAINT `FK_music_TO_rewiew` FOREIGN KEY (`musicname`,`artist`,`album`) REFERENCES `music` (`musicname`, `artist`, `album`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
