-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2024 at 06:29 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `image`, `is_popular`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Khaled Tawfik', 'Uploads/Author/AhmedKhaledTawfik.jpg', 1, '2024-04-27 13:59:05', '2024-04-27 13:59:05'),
(2, 'Ahmed Mourad', 'Uploads/Author/AhmedMourad.jpeg', 1, '2024-04-27 13:59:05', '2024-04-27 13:59:05'),
(3, 'Amr Abdel Hamid', 'Uploads/Author/AmrAbdelHamid.jpg', 1, '2024-04-27 14:00:28', '2024-04-27 14:00:28'),
(4, 'Colleen Hoover', 'Uploads/Author/ColleenHoover.jpg', 1, '2024-04-27 14:00:28', '2024-04-27 14:00:28'),
(5, 'Colson Whitehead', 'Uploads/Author/ColsonWhitehead.jpg', 1, '2024-04-27 14:00:28', '2024-04-27 14:00:28'),
(6, 'Dan Brown', 'Uploads/Author/DanBrown.jpg', 1, '2024-04-27 14:02:38', '2024-04-27 14:02:38'),
(7, 'Ghassan Kanafani', 'Uploads/Author/GhassanKanafani.jpg', 1, '2024-04-27 14:02:38', '2024-04-27 14:02:38'),
(8, 'John Green', 'Uploads/Author/JohnGreen.jpg', 1, '2024-04-27 14:02:38', '2024-04-27 14:02:38'),
(9, 'Khawla Hamdi', 'Uploads/Author/KhawlaHamdi.jpg', 1, '2024-04-27 14:02:38', '2024-04-27 14:02:38'),
(10, 'Naged Mahfouz', 'Uploads/Author/NagedMahfouz.jpg', 1, '2024-04-27 14:02:38', '2024-04-27 14:02:38'),
(11, 'Ocean Vuong', 'Uploads/Author/OceanVuong.jpeg', 1, '2024-04-27 14:02:38', '2024-04-27 14:02:38'),
(12, 'Paulo Coelho', 'Uploads/Author/PauloCoelho.jpg', 1, '2024-04-27 14:02:38', '2024-04-27 14:02:38'),
(13, 'Radwa Ashour', 'Uploads/Author/RadwaAshour.jpg', 1, '2024-04-27 14:06:55', '2024-04-27 14:06:55'),
(14, 'Sarah J. Maas', 'Uploads/Author/SarahJ.Maas.jpg', 1, '2024-04-27 14:06:55', '2024-04-27 14:06:55'),
(15, 'Stephen King', 'Uploads/Author/StephenKing.jpg', 1, '2024-04-27 14:06:55', '2024-04-27 14:06:55'),
(16, 'Veronica Roth', 'Uploads/Author/VeronicaRoth.jpg', 1, '2024-04-27 14:06:55', '2024-04-27 14:06:55'),
(17, 'Emma Cline', NULL, 0, '2024-04-27 16:20:02', '2024-04-27 16:20:02'),
(18, 'Azam Ahmed', NULL, 0, '2024-04-27 16:40:01', '2024-04-27 16:40:01'),
(19, 'Andrew Leland ', NULL, 0, '2024-04-27 16:45:06', '2024-04-27 16:45:06'),
(20, 'Tamer Ibrahim ', NULL, 0, '2024-04-27 16:50:49', '2024-04-27 16:50:49'),
(21, 'Stephen Graham Jones', NULL, 0, '2024-04-27 16:58:56', '2024-04-27 16:58:56'),
(22, 'Rachel Lyon', NULL, 0, '2024-04-27 17:02:44', '2024-04-27 17:02:44'),
(23, 'Hirokatsu Kihara', NULL, 0, '2024-04-27 17:07:10', '2024-04-27 17:07:11'),
(24, 'Sami Ellis', NULL, 0, '2024-04-27 17:09:44', '2024-04-27 17:09:44'),
(25, 'Ahmed Younes', NULL, 0, '2024-04-27 17:13:02', '2024-04-27 17:13:02'),
(26, 'Hannah Kaner', NULL, 0, '2024-04-27 17:18:41', '2024-04-27 17:18:41'),
(27, 'Kim Harrison', NULL, 0, '2024-04-27 17:30:07', '2024-04-27 17:30:07'),
(28, 'Rachel Rueckert', NULL, 0, '2024-04-27 17:30:07', '2024-04-27 17:30:07'),
(29, 'Grace Curtis', NULL, 0, '2024-04-27 17:30:48', '2024-04-27 17:30:48'),
(30, 'Ahmed sulma', NULL, 0, '2024-04-27 17:30:48', '2024-04-27 17:30:48'),
(31, 'Albert Hourani', NULL, 0, '2024-04-27 18:42:13', '2024-04-27 18:42:13'),
(32, 'Amin Maalouf', NULL, 0, '2024-04-27 18:42:13', '2024-04-27 18:42:13'),
(33, 'Ádám Mestyán', NULL, 0, '2024-04-27 18:42:48', '2024-04-27 18:42:48'),
(34, 'Grace Blakeley', NULL, 0, '2024-04-27 18:42:48', '2024-04-27 18:42:48'),
(35, 'Anna Shechtman', NULL, 0, '2024-04-27 18:42:48', '2024-04-27 18:42:48'),
(36, 'Jordan Mechner', NULL, 0, '2024-04-27 18:42:48', '2024-04-27 18:42:48'),
(37, 'Helen Hoang ', NULL, 0, '2024-04-27 19:18:00', '2024-04-27 19:18:00'),
(38, 'J.K. Rowling', NULL, 0, NULL, NULL),
(39, 'Lauren St. John ', NULL, 0, '2024-04-27 19:18:25', '2024-04-27 19:18:25'),
(40, ' Dr. Seuss', NULL, 0, '2024-04-27 19:18:25', '2024-04-27 19:18:25'),
(41, 'Shel Silverstein', NULL, 0, '2024-04-27 19:18:51', '2024-04-27 19:18:51'),
(42, 'Rania Zabib Daher ', NULL, 0, '2024-04-27 19:18:51', '2024-04-27 19:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `about_book` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `pages` int DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `count_sale` int NOT NULL,
  `popular` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `image`, `category_id`, `author_id`, `about_book`, `price`, `pages`, `rate`, `count_sale`, `popular`, `created_at`, `updated_at`) VALUES
(1, 'Ugly Love ', 'Uploads/Book/uglylove.jpg', 6, 4, 'When Tate Collins meets airline pilot Miles Archer, she knows it isn’t \r\nlove at first sight. They wouldn’t even go so far as to consider themselves friends. The \r\nonly thing Tate and Miles have in common is an undeniable mutual attraction. Once \r\ntheir desires are out in the open, they realize they have the perfect set-up. He doesn’t \r\nwant love, she doesn’t have time for love, so that just leaves the sex. Their \r\narrangement could be surprisingly seamless, as long as Tate can stick to the only two \r\nrules Miles has for her. \r\never ask about the past. \r\nDon’t expect a future. \r\n \r\nThey think they can handle it, but realize almost immediately they can’t handle it at \r\nall. ', 450, 333, 3.8, 0, 1, '2024-04-27 16:06:25', '2024-04-27 16:06:25'),
(2, 'The Guest', 'Uploads/Book/TheGuest.jpg', 7, 17, 'A young woman pretends to be someone she isn\'t in this stunning novel by the New York \r\nTimes bestselling author of The Girls. Summer is coming to a close on the East End of Long Island, \r\nand Alex is no longer welcome. A misstep at a dinner party, and the older man she\'s been staying \r\nwith dismisses her with a ride to the train station and a ticket back to the city. With few resources \r\nand a waterlogged phone, but gifted with an ability to navigate the desires of others, Alex stays on \r\nLong Island and drifts like a ghost through the hedged lanes, gated driveways, and sun-blasted \r\ndunes of a rarified world that is, at first, closed to her. ', 599, 304, 3.3, 0, 1, '2024-04-27 16:20:25', '2024-04-27 16:20:25'),
(5, 'أرض زيكولا', 'Uploads/Book/أرض_زيكولا_3.jpg', 2, 3, 'في أرضٍ يحكمها شاهد السماء عاش البشر والذئاب والملديون في سلمٍ امتد آلاف السنين قبل أن يجتاز ذئبٌ رهيب إحدى العابرات الست، ويلتقي «موسى» الباحث عن أقرب فرصة للخروج من بلدته، ليتبدل كل شيء.', 350, 269, 4, 0, 1, '2024-04-27 16:21:32', '2024-04-27 16:21:32'),
(6, 'في قلبي انتي عبريه ', 'Uploads/Book/في_قلبي_انتي_عبريه.jpg', 6, 9, 'ي قلب حارة اليهود في الجنوب التونسي تتشابك الأحداث حول المسلمة اليتيمة التي تربت بين أحضان عائلة يهودية، و بين ثنايا مدينة قانا العتيقة في الجنوب اللبناني تدخل بلبلة غير متوقعة في حياة ندى التي نشأت على اليهودية بعيدا عن والدها المسلم. تتتابع اللقاءات و الأحداث المثيرة حولهما لتخرج كلا منهما من حياة الرتابة و تسير بها إلى موعد مع القدر. (في قلبي أنثى عبرية) رواية مستوحاة من أحداث حقيقية في قالب روائي مشوق', 400, 316, 3.9, 10, 0, '2024-04-27 16:21:32', '2024-04-27 16:21:32'),
(7, 'Fear is just a word ', 'Uploads/Book/Fearisjustaword.jpg', 5, 18, '.\r\n', 0, NULL, NULL, 10, 0, '2024-04-27 16:37:03', '2024-04-27 16:37:03'),
(12, 'The country of the Blind  \r\n', 'Uploads/Book/ThecountryoftheBlind.jpg', 5, 19, '.', 0, NULL, NULL, 10, 0, '2024-04-27 16:44:45', '2024-04-27 16:44:45'),
(13, 'الليلة الثالثة والعشرون', 'Uploads/Book/الليلة_الثالثة_والعشرون.jpg', 1, 20, 'هذه هى المواجهة الأخيرة!...\r\nسيخوض يوسف وسوسن ما تبقى من فصول اللعبة التي أوشكت على نهايتها...\r\nفهل سيكتشفا أخيرًا الحقيقة في الليلة الثالثة والعشرين؟\r\nبعد كل ما خاضه يوسف في \"صانع الظلام\"، وكل ما رآه وعرفه،\r\nوبعد أن حصل على أجزاء من الحقيقة – دافعًا ثمنها بأسوأ طريقة ممكنة –\r\nلا تزال الحقيقة الكاملة بعيدة المنال... ولا تزال اللعبة مستمرة بقواعدها الرهيبة حاملة له المزيد من الخيارات المريرة... والمزيد من الأسرار...\r\n', 470, 280, 3.8, 0, 0, '2024-04-27 16:46:56', '2024-04-27 16:46:56'),
(14, 'The Angel of Indian Lake ', 'Uploads/Book/TheAngelofIndianLake.jpg', 1, 21, 'The final installment in the most lauded trilogy in the history of horror novels picks \r\nup four years after Don’t Fear the Reaper as Jade returns to Proofrock, Idaho, to build \r\na life after the years of sacrifice—only to find the Lake Witch is waiting for her in New \r\nYork Times bestselling author Stephen Graham Jones’s finale. \r\n \r\nIt’s been four years in prison since Jade Daniels last saw her hometown of Proofrock, \r\nIdaho, the day she took the fall, protecting her friend Letha and her family from \r\nincrimination. Since then, her reputation, and the town, have changed dramatically. \r\nThere’s a lot of unfinished business in Proofrock, from serial killer cultists to the rich \r\ntrying to buy Western authenticity. But there’s one aspect of Proofrock no one wants \r\nto confront…until Jade comes back to town. The curse of the Lake Witch is waiting, \r\nand now is the time for the final stand. \r\n \r\nNew York Times bestselling author Stephen Graham Jones has crafted an epic horror \r\ntrilogy of generational trauma from the Indigenous to the townies rooted in the \r\nmountains of Idaho. It is a story of the American west written in blood.', 600, 455, 4.3, 0, 0, '2024-04-27 16:59:22', '2024-04-27 16:59:22'),
(15, 'Fruit of the Dead ', 'FruitoftheDead.jpg', 1, 22, 'An electric contemporary reimagining of the myth of Persephone and Demeter set \r\nover the course of one summer on a lush private island, about addiction and sex, \r\nfamily and independence, and who holds the power in a modern underworld. \r\nCamp counselor Cory Ansel, eighteen and aimless, afraid to face her high-strung \r\nsingle mother in New York, is no longer sure where home is when the father of one \r\nof her campers offers an alternative. The CEO of a Fortune 500 pharmaceutical \r\ncompany, Rolo Picazo is middle-aged, divorced, magnetic. He is also intoxicated by \r\nCory. When Rolo proffers a childcare job (and an NDA), Cory quiets an internal \r\nwarning and allows herself to be ferried to his private island. Plied with luxury and \r\nopiates manufactured by his company, she continues to tell herself she’s in charge. \r\nHer mother, Emer, head of a teetering agricultural NGO, senses otherwise. With her \r\ndaughter seemingly vanished, Emer crosses land and sea to heed a cry for help she \r\nalone is convinced she hears. \r\nAlternating between the two women’s perspectives, Rachel Lyon’s Fruit of the Dead \r\nincorporates its mythic inspiration with a light touch and devastating precision. The \r\nresult is a tale that explores love, control, obliteration, and America’s own late \r\ncapitalist mythos. Lyon’s reinvention of Persephone and Demeter’s story makes for a \r\nhaunting and ecstatic novel that vibrates with lush abandon. Readers will not soon \r\nforget it. ', 350, 320, 3.6, 0, 0, '2024-04-27 17:04:06', '2024-04-27 17:04:06'),
(16, 'Stitches', 'Uploads/Book/Stitches.jpg', 1, 23, 'Horror manga giant Junji Ito teams up with spooky story writer Hirokatsu Kihara for \r\nthe ultimate collection of fright-filled ghost tales! \r\nA tumor shaped like a man’s face slowly moves across a woman’s body. The sea \r\nshoots glowing balls into the sky, much to the distress of beachgoers. And a girl \r\ndressed up for a holiday has no eyes, no nose, nothing–her face is a total blank. \r\nHirokatsu Kihara pens true stories of unsolved mysteries, stitched together with page \r\nafter page of Junji Ito’s original illustrations in this collection of nine eerie tales and a \r\nbonus manga story.', 400, 112, 3.6, 0, 0, '2024-04-27 17:07:28', '2024-04-27 17:07:28'),
(17, 'Dead Girls Walking ', 'Uploads/Book/DeadGirlsWalking.jpg', 1, 24, 'A shocking, spine-chilling YA horror slasher about a girl searching for her dead \r\nmother’s body at the summer camp that was once her serial killer father’s home—\r\n perfect for fans of Friday the 13th and White Smoke \r\nTemple Baker knows that evil runs in her blood. Her father is the North Point Killer, \r\nan infamous serial killer known for how he marked each of his victims with a brand. \r\nHe was convicted for murdering 20 people and was the talk of countless true crime \r\nblogs for years. Some say he was possessed by a demon. Some say that they never \r\nfound all his victims. Some say that even though he’s now behind bars, people are \r\nstill dying in the woods. Despite everything though, Temple never believed that her \r\ndad killed her mom. But when he confesses to that crime while on death row, she \r\nhas no choice but to return to his old hunting grounds to try see if she can find a \r\nbody and prove it. \r\nTurns out, the farm that was once her father’s hunting grounds and her home has \r\nbeen turned into an overnight camp for queer, horror-obsessed girls. So Temple \r\nposes as a camp counselor to go digging in the woods. While she’s not used to \r\nhanging out with girls her own age and feels ambivalent at best about these true \r\ncrime enthusiasts, she tries her best to fit in and keep her true identity hidden. \r\nBut when a girl turns up dead in the woods, she fears that one of her father’s “fans” \r\nmight be mimicking his crimes. As Temple tries to uncover the truth and keep the \r\ncampers safe, she comes to realize that there may be something stranger and more \r\nsinister at work—and that her father may not have been the only monster in these \r\nwoods. ', 385, 368, 3.6, 0, 0, '2024-04-27 17:10:13', '2024-04-27 17:10:13'),
(18, 'نادر فودة 2: كساب', 'Uploads/Book/نادر_فودة.jpg', 1, 25, 'ولكني اضمن لكم ان هذا العمل مليء باحداث وتفاصيل مثيره وجديده ربما منعت من سردها قبل ذلك؟ !هل نادر فوده واحمد يونس هما ذات الشخص مثلما تظنون دوما ؟! لماذا هذا المجال المخيف تحديدا دون غيره؟!! كيف كانت حياتي قبل ان اصبح ذلك الصحفي المشهور الذي ارتبط به الكثيرون ؟! كيف كانت طفولتي واسرتي وريعان شبابي؟! من هو الوقاد!!!! لذا فكان القرار بعد تفكير طويل ،،، ان يكون هذا العمل بين ايديكم لاجيب عن تساؤلات كثيره تجول بخاطركم القاريء العزيز: اقرأ الكتاب وانت تتخيل انك تستمع اليه وتشاهده بصوت صديقي احمد يونس مثلما تعودتم دوما.. شكرا نادر فوده', 600, 224, 3.4, 0, 0, '2024-04-27 17:13:20', '2024-04-27 17:13:20'),
(19, 'Sunbringer \r\n', 'Uploads/BookSunbringer.jpg', 2, 26, 'Return to the world of Godkiller in this thrilling sequel to the #1 internationally \r\nbestselling fantasy debut, where Kissen and her companions must navigate lands of \r\ngods and demons to unravel a dark truth at the heart of their world. \r\nProfessional godkiller Kissen and her companions—young noble Inara and knight \r\nElogast—return in a winding adventure in a world overflowing with magic, beauty, \r\nand danger. ', 470, 400, 4, 0, 0, '2024-04-27 17:19:38', '2024-04-27 17:19:38'),
(20, 'أمواج أكما', 'Uploads/Book/أمواج_أكما.jpg', 2, 3, 'كنتُ أظن أن تغيير القواعد يحتاج إلى القوة وحسب، لكنه لم يكن بهذه السهولة قط! لقد أثر أشراف چارتين أن يموتوا غرقى أسفل أمواج أكما، على أن يتساووا معنا فى حق اكتساب الروح', 600, 320, 4.1, 0, 0, '2024-04-27 17:26:29', '2024-04-27 17:26:29'),
(21, 'Three Kinds of Lucky ', 'Uploads/Book/ThreeKindsofLucky.jpg', 2, 27, 'Luck is its own kind of magic, in this first book in an electrifying new contemporary \r\nfantasy series from the author of the #1 New York Times bestselling Hollows novels. \r\nPetra Grady has known since adolescence that she has no talent for magic—and \r\nthat’s never going to change. But as a sweeper first-class, she’s parlayed her rare \r\nability to handle dross—the damaging, magical waste generated by her more \r\ntalented kin’s spellwork—into a decent life working at the mages’ university. \r\nExcept Grady’s relatively predictable life is about to be upended. When the oblivious, \r\nsexy, and oh-so-out-of-reach Benedict Strom needs someone with her abilities for a \r\nresearch project studying dross and how to render it harmless, she’s stuck working \r\non his team—whether she wants to or not. \r\nOnly Benedict doesn’t understand the characteristics of dross like Grady does. After \r\nan unthinkable accident, she and Benedict are forced to go on the run to seek out \r\nthe one person who might be able to help: an outcast exiled ten years ago for the \r\ncrime of using dross to cast spells. Now Grady must decide whether to stick with the \r\nmagical status quo or embrace her own hidden talents . . . and risk shattering their \r\nentire world. ', 350, 452, 4, 0, 0, '2024-04-27 18:26:55', '2024-04-27 18:26:55'),
(22, 'If the Tide Turns \r\n', 'Uploads/Book/IftheTideTurns.jpg', 2, 22, 'Set during the Golden Age of Pirates and the shadowy aftermath of the Salem witch \r\ntrials, this vivid literary debut is inspired by the captivating true story of real-life pirate \r\nSamuel Bellamy, combining high seas adventure, star-crossed longing, surprisingly \r\ntimely questions about social justice and freedom, and the emotionally satisfying \r\ntale of one strong-willed young woman determined to choose her own path. \r\n \r\n1715, Eastham, Massachusetts: As the daughter of a wealthy family, Maria Brown has \r\na secure future mapped out for her, yet it is not the future she wants. Young, \r\nheadstrong, and restless, Maria has no desire to marry the aging, mean-spirited John \r\nHallett, regardless of his fortune and her parents’ wishes. As for what Maria does \r\nwant—only one person has ever even asked her that question. \r\n \r\nSamuel Bellamy, an orphaned sailor searching for work, meets Maria by chance, \r\nenthralling her with talk of far-flung places and blasphemous ideals. But neither is \r\nfree from the social order into which they were born. When Sam is banished from \r\nMaria’s parents’ home after asking for her hand, he vows to return a wealthy man, \r\nand Maria promises to keep the faith until then. \r\n \r\nSam is drawn into piracy and discovers a brotherhood more equal and fulfilling than \r\nany on land, despite its dangers. Beguiled by the chance to both fight for justice and \r\nmake a fortune to bring home to Maria, Sam is torn between duty to his crew and his \r\ndesire to return. Separated by more than just the ocean, time slips by as Sam and \r\nMaria cling to their love for each other. Maria is determined to stay strong in her \r\nconviction in Sam, but as rumors swirl and her position in Eastham turns perilous, \r\nMaria is forced into an impossible decision. ', 400, 369, 4.07, 0, 0, '2024-04-27 18:31:47', '2024-04-27 18:26:55'),
(23, 'Floating Hotel \r\n', 'Uploads/Book/Floating_Hotel.jpg', 2, 29, 'This cozy debut science fiction novel tells a story of misfits, rebels, found family—and \r\na mystery that spans the stars. \r\nWelcome to the Grand Abeona Hotel: home of the finest food, the sweetest service, \r\nand the very best views the galaxy has to offer. All year round it moves from planet to \r\nplanet, system to system, pampering guests across the furthest reaches of the milky \r\nway. The last word in sub-orbital luxury—and an absolute magnet for intrigue. \r\nIntrigues such as: Why are there love poems in the lobby inbox? How many Imperial \r\nspies are currently on board? What is the true purpose of the Problem Solver\'s \r\nconference? And perhaps most pertinently—who is driving the ship? \r\nEach guest has a secret, every member of staff a universe unto themselves. At the \r\ncenter of these interweaving lives and interlocking mysteries stands Carl, one time \r\nstowaway, longtime manager, devoted caretaker to the hotel. It\'s the love of his life \r\nand the only place he\'s ever called home. But as forces beyond Carl\'s comprehension \r\nconverge on the Abeona, he has to face one final question: when is it time to let go? ', 385, 324, 3.7, 0, 0, '2024-04-27 18:33:52', '2024-04-27 18:33:52'),
(24, 'عظمويل', 'Uploads/Book/عظمويل.jpg', 2, 30, 'من حيث لا مكان ولد التمرد كزرع شيطاني خبيث، آلاف الملثمين الجبناء، لا وجه لهم ولا كنية عاثوا في البلاد فسادًا، تخريب و إحراق وسرقة واغتصاب، لم يتركوا أي عمل عزازيلي إلا وفعلوه، كانوا يتبعون رجل يدعى \"السالم كارم بن عُديل الحوراني\"، بالتأكيد لم يكن ذلك اسم الرجل الحقيقي، فالخائن كان أجبن من أن يُعلن عن كينونته الفعلية فلقد ظل مختبئاً تحت ذلك القناع حتى النهاية.\r\nلشهرين لم يكن المتمردين إلا عصابات ملثمة أقرب للصعاليك لا يبغون إلا النهب والتخريب، ولكن كل شىء تغير وانقلب رأسًا على عقب لما أنشدت تلك الأنشودة الظلامية، ترانيمها أبدلت القلوب، وسحرت العقول، وسمّت النفوس، وغيرت المبادئ، وهدمت الثوابت، مائة ألف متمرد أضحوا بعدما كانوا بضعة ألاف، قوة مهولة وأطماع غير محدودة أمست مطالب أتباع \"السالم كارم بن عُديل الحوراني\"، غدروا بالشرطة واحتلوا قلاعها، اعتصموا في ساحة المستقل وحاصروا القصر السلطاني وطالبوا البطل أشبوب بالتخلي عن عرشه وإلا رياح الدمار ستطيح بكل البلاد \r\n', 300, 284, 4, 0, 0, '2024-04-27 18:33:52', '2024-04-27 18:33:52'),
(25, 'A History of the Arab Peoples \r\n', 'Uploads/Book/AHistoryoftheArabPeoples.jpg', 3, 31, 'Encyclopedic and panoramic in its scope, this fascinating work chronicles the rich \r\nspiritual, political, and cultural institutions of Arab history through 13 centuries. \r\n \r\nNo region in the world today is more important than the Middle East: no people \r\nmore misunderstood than the Arabs. In this definitive masterwork, distinguished \r\nOxford historian Albert Hourani offers the most lucid, enlightening history ever \r\nwritten on the subject. From the rise of Islam to the Palestinian issue, from the \r\nProphet Mohammed to Mu\'ammar al-Qadhafi. A History of the Arab Peoples \r\nchronicles the rich spiritual, political and cultural institutions of this civilization \r\nthrough thirteen centuries of war, peace, literature and religion. Lauded by \r\nauthorities, encyclopedic and panoramic in its scope, here is a remarkable window \r\non today\'s conflicts and on the future of a glorious and troubled land. ', 470, 551, 3.8, 0, 0, '2024-04-27 18:44:55', '2024-04-27 18:44:55'),
(26, 'The Crusades Through Arab Eyes \r\n', 'Uploads/Book/TheCrusadesThroughArabEyes.jpg', 3, 32, 'The author has combed the works of contemporary Arab chronicles of the Crusades, \r\neyewitnesses, and often participants. He retells their story and offers insights into the \r\nhistorical forces that shape Arab and Islamic consciousness today. ', 600, 293, 4.2, 0, 0, '2024-04-27 18:44:55', '2024-04-27 18:44:55'),
(27, 'Modern Arab Kingship \r\n', 'Uploads/Book/ModernArabKingship.jpg', 3, 18, 'How the “recycling” of the Ottoman Empire’s uses of genealogy and religion created \r\nnew political orders in the Middle Eastin this groundbreaking book, Adam Mestan \r\nargues that post-Ottoman Arab political orders were not, as many historians believe, \r\nproducts of European colonialism but of the process of “recycling empire.” Mestan \r\nshows that in the post–World War I Middle East, Allied Powers officials and ex\r\nOttoman patricians collaborated to remake imperial institutions, recycling earlier \r\nOttoman uses of genealogy and religion in the creation of new polities, with the \r\nexception of colonized Palestine. These polities, he contends, should be understood \r\nnot in terms of colonies and nation-states but as subordinated sovereign local \r\nstates—localized regimes of religious, ethnic, and dynastic sources of imperial \r\nauthority. Meanwhile, governance without sovereignty became the new form of \r\nWestern domination. Drawing on previously unused Ottoman, French, Syrian, and \r\nSaudi archival sources, Mestan explores ideas and practices of creating composite \r\npolities in the interwar Middle East and, in doing so, sheds light on local agency in \r\nthe making of the forgotten Kingdom of the Hijaz, Jordan, Egypt, Saudi Arabia, and \r\nSyria, the first Muslim republic. Mestan considers the adjustment of imperial Islam to \r\na world without a Muslim empire, discussing the post-Ottoman Egyptian monarchy \r\nand the intertwined making of Saudi Arabia and the State of Syria in the 1920s and \r\n1930s.Mestyan’s innovative analysis shows how an empire-based theory of the \r\nmodern political order can help refine our understanding of political dynamics \r\nthroughout the twentieth century and down to the turbulent present day. ', 350, 330, 3, 0, 0, '2024-04-27 18:44:55', '2024-04-27 18:44:55'),
(28, 'Vulture Capitalism \r\n', 'Uploads/Book/VultureCapitalism.jpg', 3, 34, 'In the vein of The Shock Doctrine and Evil Geniuses, this timely manifesto from an \r\nacclaimed journalist illustrates how corporate and political elites have used planned \r\ncapitalism to advance their own interests at the expense of the rest of us—and how \r\nwe can take back our economy for all. \r\nIt’s easy to look at the state of the world around us and feel hopeless. We live in an \r\nera marked by war, climate crisis, political polarization, and acute inequality—and yet \r\nmany of us feel powerless to do anything about these profound issues. We’ve been \r\nassured that unfettered capitalism is necessary to ensure our freedom and \r\nprosperity, even as we see its corrosive effects proliferating daily. Why, in our age of \r\nunchecked corporate power, are most of us living paycheck to paycheck? When the \r\neconomy falters, why do governments bail out corporations and shareholders but \r\nleave everyday people in the dust? \r\nNow, economic and political journalist and progressive star on the rise Grace \r\nBlakeley exposes the corrupt system that is failing all around us, pulling back the \r\ncurtain on the free market mythology we have been sold, and showing how, as \r\ncorporate interests have taken hold, governments have historically been shifting \r\naway from competition and democracy and towards monopoly and oligarchy. \r\nTracing over a century of neoliberal planning and backdoor bailouts, Blakeley takes \r\nus on a deeply reported tour of the corporate crimes, political maneuvering, and \r\neconomic manipulation that elites have used to enshrine a global system of “vulture \r\ncapitalism”—planned capitalist economies that benefit corporations and the uber\r\nwealthy at the expense of the rest of us—at every level, from states to empires. \r\nBlakeley exposes the cracks already emerging within capitalism, lighting a path \r\nforward for how we can democratize our economy, not just our politics, to ensure \r\ntrue freedom for all. ', 400, 384, 4.11, 0, 0, '2024-04-27 18:44:55', '2024-04-27 18:44:55'),
(29, 'The Riddles of the Sphinx \r\n', 'Uploads/Book/TheRiddlesoftheSphinx.jpg', 3, 35, 'Combining the soul-baring confessional of Brain on Fire and the addictive \r\nstorytelling of The Queen’s Gambit, a renowned puzzle creator’s compulsively \r\nreadable memoir and history of the crossword puzzle as an unexpected site of \r\nwomen’s work and feminist protest. \r\nThe indisputable “queen of crosswords,” Anna Shechtman published her first New \r\nYork Times puzzle at age nineteen, and later, spearheaded the The New Yorker’s \r\npopular crossword section. Working with a medium often criticized as exclusionary, \r\nelitist, and out-of-touch, Anna is one of very few women in the field of puzzle \r\nmaking, where she strives to make the everyday diversion more diverse. \r\nIn this fascinating work—part memoir, part cultural analysis—she excavates the \r\nhidden history of the crossword and the overlooked women who have been central \r\nto its creation and evolution, from the “Crossword Craze” of the 1920s to the role of \r\ndigital technology today. As she tells the story of her own experience in the \r\nCrossword, she analyzes the roles assigned to women in American culture, the boxes \r\nthey’ve been allowed to fill, and the ways that they’ve used puzzles to negotiate the \r\nconstraints and play of desire under patriarchy. \r\nThe result is an unforgettable and engrossing work of art, a loving and revealing \r\nhomage to one of our most treasured, entertaining, and ultimately political \r\npastimes. ', 385, 288, 3.5, 0, 0, '2024-04-27 18:44:55', '2024-04-27 18:44:55'),
(30, 'Replay: Memoir of an Uprooted Family \r\n', 'Uploads/Book/ReplayMemoirofanUprootedFamily.jpg', 3, 36, 'In this intergenerational graphic memoir, renowned video game designer Jordan \r\nMechner traces the path his family takes as it\'s uprooted by war, Nazi occupation, \r\nand everyday marital strife. \r\n1914. A teenage romantic heads to the enlistment office when his idyllic life in a \r\nJewish enclave of the Austro-Hungarian Empire is upended by World War I. \r\n1938. A seven-year-old refugee begins a desperate odyssey through France, \r\nstruggling to outrun the rapidly expanding Nazi regime and reunite with his family \r\non the other side of the Atlantic. \r\n2015. The creator of a world-famous video game franchise weighs the costs of \r\nuprooting his family and moving to France as the cracks in his marriage begin to \r\ngrow. \r\nPrince of Persia creator Jordan Mechner calls on the voices of his father and \r\ngrandfather to weave a powerful story about the enduring challenge of holding a \r\nfamily together in the face of an ever-changing world.', 600, 320, 4.1, 0, 0, '2024-04-27 18:44:55', '2024-04-27 18:44:55'),
(31, 'أريد ان آكل القمر', 'Uploads/Book/أريد_ان_آكل_القمر.jpg', 4, 42, 'قصة طريفة عن بنت صغيرة اسمها هالة تظن أن القمر جميل\r\nومغر للأكل، وتفاجأ حين تلاحظ أن القمر يصغر ليلة بعد\r\nليلة، فتظن أنها هي السبب في ذلك. تحاول جهدها أن تصلح\r\nالوضع، لكن القمر يستمر في الصغر. نظرة شيقة على موضوع\r\nالطفل الذي يظن أنه هو سبب كل ما يجري من حوله.\r\n', 470, 28, 4.7, 0, 0, '2024-04-27 19:23:48', '2024-04-27 19:23:48'),
(32, 'The Giving Tree \r\n', 'Uploads/Book/TheGivingTree.jpg', 4, 41, '\"Once there was a tree...and she loved a little boy.\" \r\nSo begins a story of unforgettable perception, beautifully written and illustrated by \r\nthe gifted and versatile Shel Silverstein. \r\nEvery day the boy would come to the tree to eat her apples, swing from her \r\nbranches, or slide down her trunk...and the tree was happy. But as the boy grew \r\nolder he began to want more from the tree, and the tree gave and gave and gave. \r\nThis is a tender story, touched with sadness, aglow with consolation. Shel Silverstein \r\nhas created a moving parable for readers of all ages that offers an affecting \r\ninterpretation of the gift of giving and a serene acceptance of another\'s capacity to \r\nlove in return. ', 600, 64, 4.3, 0, 0, '2024-04-27 19:23:48', '2024-04-27 19:23:48'),
(33, 'Green Eggs and Ham \r\n', 'Uploads/Book/GreenEggsandHam.jpg', 4, 40, '“Do you like green eggs and ham?” asks Sam-I-am in this Beginner Book by Dr. \r\nSeuss. In a house or with a mouse? In a boat or with a goat? On a train or in a tree? \r\nSam keeps asking persistently. With unmistakable characters and signature rhymes, \r\nDr. Seuss’s beloved favorite has cemented its place as a children’s classic. In this most \r\nfamous of cumulative tales, the list of places to enjoy green eggs and ham, and \r\nfriends to enjoy them with, gets longer and longer. Follow Sam-I-am as he insists \r\nthat this unusual treat is indeed a delectable snack to be savored everywhere and in \r\nevery way. \r\n \r\nOriginally created by Dr. Seuss, Beginner Books encourage children to read all by \r\nthemselves, with simple words and illustrations that give clues to their meaning. ', 350, 64, 4.3, 0, 0, '2024-04-27 19:23:48', '2024-04-27 19:23:48'),
(34, 'النمر الأخير', 'Uploads/Book/النمر_الأخير.jpg', 4, 39, 'قصة مثيرة حيث على مارتن، الفتاة التي تملك قوى سحرية مع الحيوانات، أن تنفذ النمر، خان. تجذب هذه الرواية القاريء إلى عالم ساحر معقد فيه الكثير من المخاطر، وتعالج موضوع الحفاظ على الحيوانات المعرضة للانقراض، لكنها بالدرجة الأولى تركز على مفهوم الصداقة الحقيقية والشجاعة.', 400, 224, 4.1, 0, 0, '2024-04-27 19:23:48', '2024-04-27 19:23:48'),
(35, 'The Cat in the Hat \r\n', 'Uploads/Book/TheCatintheHat.jpg', 4, 40, 'Have a ball with Dr. Seuss and the Cat in the Hat in this classic picture book...but \r\ndon\'t forget to clean up your mess! \r\nThen he said That is that. \r\nAnd then he was gone \r\nWith a tip of his hat. \r\nA dreary day turns into a wild romp when this beloved story introduces readers to \r\nthe Cat in the Hat and his troublemaking friends, Thing 1 and Thing 2 – And don\'t \r\nforget Fish! A favorite among kids, parents and teachers, this story uses simple words \r\nand basic rhyme to encourage and delight beginning readers. \r\nOriginally created by Dr. Seuss himself, Beginner Books are fun, funny, and easy to \r\nread. These unjacketed hardcover early readers encourage children to read all on \r\ntheir own, using simple words and illustrations. Smaller than the classic large format \r\nSeuss picture books like The Lorax and Oh, The Places You\'ll Go!, these portable \r\npackages are perfect for practicing readers ages 3-7, and lucky parents too!', 385, 61, 4.1, 0, 0, '2024-04-27 19:23:48', '2024-04-27 19:23:48'),
(36, 'Harry Potter and the Sorcerer’s Stone \r\n', 'Uploads/Book/HarryPotterandtheSorcerer’sStone.jpg', 4, 38, 'An alternative cover for this ASIN can be found here \r\n\"Turning the envelope over, his hand trembling, Harry saw a purple wax seal bearing \r\na coat of arms; a lion, an eagle, a badger and a snake surrounding a large letter \'H\'.\" \r\nHarry Potter has never even heard of Hogwarts when the letters start dropping on \r\nthe doormat at number four, Privet Drive. Addressed in green ink on yellowish \r\nparchment with a purple seal, they are swiftly confiscated by his grisly aunt and \r\nuncle. Then, on Harry\'s eleventh birthday, a great beetle-eyed giant of a man called \r\nRubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and \r\nhe has a place at Hogwarts School of Witchcraft and Wizardry. An incredible \r\nadventure is about to begin! ', 600, 333, 4.4, 0, 0, '2024-04-27 19:23:48', '2024-04-27 19:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `Book_ids` json NOT NULL,
  `Book_price` json NOT NULL,
  `Book_qtys` json NOT NULL,
  `count` int NOT NULL DEFAULT '0',
  `total_price` double NOT NULL DEFAULT '0',
  `shiping` double NOT NULL DEFAULT '0',
  `price_after_shiping` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `Book_ids`, `Book_price`, `Book_qtys`, `count`, `total_price`, `shiping`, `price_after_shiping`, `created_at`, `updated_at`) VALUES
(11, 4, '[1, 2, 5]', '[450, 599, 350]', '[1, 1, 1]', 3, 1399, 50, 1429, '2024-04-29 19:16:26', '2024-04-30 17:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Horror', '2024-04-27 13:41:00', '2024-04-27 13:41:00', '/Uploads/Category/Horror.jpg'),
(2, 'Fantasy', '2024-04-27 13:45:59', '2024-04-27 13:45:59', '/Uploads/Category/Fantasy.jpeg'),
(3, 'History', '2024-04-27 13:45:59', '2024-04-27 13:45:59', '/Uploads/Category/History.jpg'),
(4, 'Children’s', '2024-04-27 13:47:19', '2024-04-27 13:47:19', '/Uploads/Category/Children’s.jpg'),
(5, 'Poetry', '2024-04-27 13:47:19', '2024-04-27 13:47:19', '/Uploads/Category/Poetry.jpg'),
(6, 'Romance', '2024-04-27 13:48:46', '2024-04-27 13:48:46', '/Uploads/Category/Romance.jpg'),
(7, 'Fiction', '2024-04-27 16:18:10', '2024-04-27 16:18:10', 'Uploads/Category/Fiction.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fav_books`
--

CREATE TABLE `fav_books` (
  `id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fav_books`
--

INSERT INTO `fav_books` (`id`, `book_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 4, '2024-04-30 18:11:55', '2024-04-30 18:11:55'),
(3, 2, 4, '2024-04-30 18:12:01', '2024-04-30 18:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_26_200116_create_authors_table', 1),
(6, '2024_04_26_215239_create_categories_table', 1),
(7, '2024_04_26_215420_create_books_table', 1),
(8, '2024_04_26_220245_create_fav_books_table', 1),
(10, '2024_04_26_220815_create_stores_table', 2),
(11, '2019_05_11_000000_create_otps_table', 3),
(12, '2024_04_27_133521_add_image_coulm_to_categories_table', 4),
(14, '2024_04_26_220356_create_carts_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int UNSIGNED NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity` int NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `identifier`, `token`, `validity`, `valid`, `created_at`, `updated_at`) VALUES
(1, 'loaaelsayed18@gmail.com', '7621', 60, 0, '2024-04-27 10:23:20', '2024-04-27 10:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longtuite` double NOT NULL,
  `langtuite` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `longtuite`, `langtuite`, `created_at`, `updated_at`) VALUES
(1, 'عصير الكتب', 30.016777725416148, 31.288182359334566, '2024-04-30 20:42:27', '2024-04-30 20:42:27'),
(2, 'مكتبة البلد', 30.04559645996259, 31.230847520079493, '2024-04-30 20:46:58', '2024-04-30 20:46:58'),
(3, 'عصير الكتب 2', 30.01456712535834, 31.287909048465842, '2024-04-30 20:48:17', '2024-04-30 20:48:17'),
(4, 'مكتبه دون', 30.01172152638259, 31.295837815344367, '2024-04-30 20:50:05', '2024-04-30 20:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'loaa', 'loaaelsayed18@gmail.com', '2024-04-27 10:26:22', '$2y$10$WzhuRHHuWClladm75NEy5e18LnEWd.24V0AYgC.JGj7krtkDqWuRy', 'cairo', NULL, '2024-04-27 10:08:40', '2024-04-27 10:28:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_name_unique` (`name`),
  ADD KEY `books_category_id_foreign` (`category_id`),
  ADD KEY `books_author_id_foreign` (`author_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fav_books`
--
ALTER TABLE `fav_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fav_books_book_id_foreign` (`book_id`),
  ADD KEY `fav_books_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otps_id_index` (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fav_books`
--
ALTER TABLE `fav_books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fav_books`
--
ALTER TABLE `fav_books`
  ADD CONSTRAINT `fav_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fav_books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
