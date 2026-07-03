-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2025 at 07:31 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ev`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_feedback_master`
--

CREATE TABLE `acc_feedback_master` (
  `acc_feedback_id` int(15) NOT NULL,
  `acc_feedback_message` varchar(200) NOT NULL,
  `acc_feedback_date` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accessory_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_feedback_master`
--

INSERT INTO `acc_feedback_master` (`acc_feedback_id`, `acc_feedback_message`, `acc_feedback_date`, `user_id`, `accessory_id`) VALUES
(1, 'Good charging cable', '25/02/2025', 2, 4),
(3, 'Nice Product', '12/03/2025', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `acc_order_master`
--

CREATE TABLE `acc_order_master` (
  `order_id` int(15) NOT NULL,
  `accessory_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `order_quantity` int(10) NOT NULL,
  `order_price_per_unit` varchar(15) NOT NULL,
  `order_total_price` varchar(15) NOT NULL,
  `order_status` varchar(15) NOT NULL,
  `order_date` varchar(15) NOT NULL,
  `delivery_date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acc_order_master`
--

INSERT INTO `acc_order_master` (`order_id`, `accessory_id`, `user_id`, `order_quantity`, `order_price_per_unit`, `order_total_price`, `order_status`, `order_date`, `delivery_date`) VALUES
(6, 14, 2, 1, '1664', '1664', 'Processing', '7-3-2025', '17-3-2025'),
(7, 4, 2, 5, '4499', '22495', 'Processing', '12-3-2025', '22-3-2025'),
(8, 4, 2, 1, '4499', '4499', 'Processing', '12-3-2025', '22-3-2025'),
(9, 6, 2, 5, '299', '1495', 'Processing', '12-3-2025', '22-3-2025'),
(10, 6, 2, 2, '299', '598', 'Processing', '12-3-2025', '22-3-2025'),
(11, 14, 2, 4, '1664', '6656', 'Processing', '12-3-2025', '22-3-2025'),
(12, 25, 2, 4, '1899', '7596', 'Processing', '12-3-2025', '22-3-2025');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` int(15) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Pravina', 'p12@gmail.com', 'p12@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart_master`
--

CREATE TABLE `cart_master` (
  `cart_id` int(15) NOT NULL,
  `accessory_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `order_quantity` int(10) NOT NULL,
  `order_price_per_unit` varchar(15) NOT NULL,
  `order_total_price` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `charging_station`
--

CREATE TABLE `charging_station` (
  `station_id` int(15) NOT NULL,
  `station_name` varchar(150) NOT NULL,
  `station_address` varchar(500) NOT NULL,
  `station_city` varchar(150) NOT NULL,
  `station_status` varchar(10) NOT NULL,
  `station_owner_name` varchar(150) NOT NULL,
  `station_contact_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `charging_station`
--

INSERT INTO `charging_station` (`station_id`, `station_name`, `station_address`, `station_city`, `station_status`, `station_owner_name`, `station_contact_no`) VALUES
(1, 'HPCL - Karelibag Charging Station', 'Karelibag, Vadodara, Gujarat', 'Vadodara', 'Available', 'HPCL', '18001212025'),
(2, 'Adani Total Energies - Vadodara Charging Station', ' Vadodara Municipal Corporation, Vadodara, Gujarat\r\n', 'Vadodara', 'Full', ' Adani Total Energies', '18001212025'),
(8, 'Surat Municipal Corporation - Central Zone Charging Station\r\n', 'Central Zone Fly-Over Bridge, Millennium Market Pay & Use Toilet, Pillar No. 35, Ring Road, Surat, Gujarat\r\n', 'Surat', 'Available', 'Surat Municipal Corporation\r\n', '18001212025'),
(10, 'Tata Power - Statue of Unity Charging Station\r\n', 'Statue of Unity, Kevadia, Gujarat', 'Kevadia', 'Full', 'Tata Power', '18001212025'),
(11, 'ChargeZone - Highway Food Mall Charging Station\r\n', 'Near Limbdi Over bridge, Ahmedabad-Rajkot Highway, Limbdi, Gujarat\r\n', 'Limbdi', 'Available', 'ChargeZone\r\n', '7227025948'),
(12, 'SSPL - Darshan Hotel SR (Private - Charger)\r\n', 'Vastadi, Sayla Limbdi Highway, National Highway 8A, Navi Marwad, Limbdi, Gujarat\r\n', 'Limbdi\r\n', 'Available', 'SSPL\r\n', '8070743743'),
(13, 'IOCL - Metar Charging Station\r\n', ' Survey No 42, Zainabad, Dasada Bubvana, Gujarat\r\n', 'Dasada Bubvana\r\n', 'Full', 'IOCL', '9726042110'),
(14, 'IOCL - Sainik Charging Station\r\n', 'Survey No 109, Zezari, Dasada Anindra, Gujarat\r\n', 'Dasada Anindra\r\n', 'Available', 'IOCL', '9558397777'),
(15, 'HPCL - Matrukrupa Charging Station\r\n', 'Halvad - Sara Rd, Rajkot, Gujarat\r\n', 'Rajkot', 'Full', 'HPCL', '9909772872'),
(16, 'HPCL - Rameshwar Charging Station\r\n', 'Rameshwar Petroleum, Sudamda, Surendranagar, Gujarat\r\n', 'Surendranagar\r\n', 'Full', 'HPCL\r\n\r\n', '9909772872'),
(17, 'IOCL - MAA ASHAPURA Charging Station\r\n', 'Survey no.2252, village Pansina, Limbdi, Gujarat\r\n', 'Limbdi', 'Available', 'IOCL\r\n\r\n', '7829330410'),
(18, 'IOCL - DHARMAJIVAN KSK Charging Station\r\n', 'Baisabgadh Road, Kankavati, Gujarat\r\n', 'Kankavati', 'Available', 'IOCL\r\n\r\n', '7829330410'),
(19, 'Tata Power ', 'Vasna, Ahmedabad, Gujarat', 'Ahmedabad', 'Available', 'Tata Power', '18001212025'),
(20, 'Adani Total Energies', 'Prahlad Nagar, Ahmedabad, Gujarat', 'Ahmedabad', 'Full', 'Adani Total Energies', '18001212025'),
(21, 'Mahindra Electric', 'Sector 16, Gandhinagar, Gujarat', 'Gandhinagar', 'Full', 'Mahindra Electric', '18001027366'),
(22, 'HPCL - Chhatral', 'Chhatral, Gandhinagar, Gujarat', 'Gandhinagar', 'Available', 'HPCL ', '18001212025'),
(23, 'Tata Power', 'Gopi Charan Hotel, Surat, Gujarat\r\n', 'Surat', 'Full', 'Tata Power', '18001212025'),
(24, 'IOCL - Manjalpur Charging Station', 'Manjalpur, Vadodara, Gujarat', 'Vadodara', 'Full', 'IOCL ', '9726042110'),
(25, 'HPCL - Kuvadva Charging Station', 'Kuvadva, Rajkot, Gujarat', 'Rajkot', 'Full', 'HPCL ', '9909772872'),
(26, 'SSPL - Surendranagar Charging Station', 'Surendranagar, Gujarat', 'Surendranagar', 'Available', 'SSPL ', '9558397777'),
(27, 'EVRE - Vapi Charging Station', 'Vapi, Gujarat\r\n', 'Vapi', 'Full', 'EVRE', '18001027366'),
(28, 'Essar - Bharuch Charging Station', 'Bharuch, Gujarat', 'Bharuch', 'Full', 'Essar ', '18001027366'),
(29, 'Adani Total Energies', 'Anand, Gujarat', 'Anand', 'Available', 'Adani Total Energies', '18001212025'),
(30, 'HPCL - Morbi Charging Station', 'Morbi, Gujarat\r\n', 'Morbi', 'Available', 'HPCL', '9909772872');

-- --------------------------------------------------------

--
-- Table structure for table `ev_accessories`
--

CREATE TABLE `ev_accessories` (
  `accessory_id` int(15) NOT NULL,
  `accessory_name` varchar(50) NOT NULL,
  `accessory_photo` varchar(500) NOT NULL,
  `accessory_description` varchar(5000) NOT NULL,
  `accessory_price` varchar(20) NOT NULL,
  `accessory_stock_quantity` varchar(10) NOT NULL,
  `accessory_warranty_period` varchar(50) NOT NULL,
  `cat_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ev_accessories`
--

INSERT INTO `ev_accessories` (`accessory_id`, `accessory_name`, `accessory_photo`, `accessory_description`, `accessory_price`, `accessory_stock_quantity`, `accessory_warranty_period`, `cat_id`) VALUES
(3, 'Dash 7.2', '_DASH_EV_CHARGER.webp', 'Dash 7.2kW is a compact and efficient portable EV charging solution. With a powerful output of up to 7.2kW, Dash ensures a quick and reliable charge for your electric vehicle, wherever you are. Designed for convenience and ease of use, this lightweight charger is perfect for home, office, or on-the-go use. Dash features switchable current settings, allowing you to optimize the charging performance for any outlet. Compatible with a wide range of EVs, Dash 7.2 is equipped with advanced safety features to ensure a secure and dependable charging experience.\r\n', '21999', '5', '4', 5),
(4, 'EV Charging Gun with Cable', 'car_bike_charger.jpg', 'PME EV Charging Gun with Cable for EV Charger Cars and Bikes | Type 2 to Open end -1 Phase, 16A | 5 Meter Length | Durable Connector Made in India | ARAI Certified | IP54 Waterproof\r\n', '4499', '10', '5', 5),
(5, 'Floor Mat for Nexus EV', 'nexus_floor_mat.jpg', 'Protect and enhance your Nexus EV electric scooter with our Floor Mat. Specifically designed for these models, this mat offers superior protection against dust, dirt, and wear while adding a touch of style to your ride.\r\n', '499', '15', '5', 6),
(6, 'Chetak EV Floor Mat', 'chetak_floor_mat.webp', 'Custom Fit for: Chetak EV models, ensuring a precise and secure fit offering for optimal coverage and protection. Durable & High-Quality Construction: Made from premium, weather-resistant materials that ensure long-lasting durability and withstand daily wear and tear. Non-Slip Design: Features a textured surface that provides excellent grip, preventing slips and enhancing safety while riding your scooter. Easy Installation & Removal: Designed for a hassle-free setup with adjustable straps or adhesive backing, allowing for quick installation and easy removal for cleaning. Easy to Clean: Waterproof and stain-resistant surface makes it simple to wipe clean or rinse off, ensuring your scooter floor mat always looks and perform its best. Custom Fit for: Bajaj Chetak EV models, ensuring a precise and secure fit offering for optimal coverage and protection. Durable & High-Quality Construction: Made from premium, weather-resistant materials that ensure long-lasting durability and withstand daily wear and tear. \r\n', '299', '15', '5', 6),
(7, 'Stallion Leather Car Seat Covers For Curvv .ev', 'seat_cover.webp', 'Compatible with Tata Curvv .ev with full Bracket car coverage\r\nLightweight- to prevent scratches and spills on the car seats\r\nHigh-quality breathable  leather and UV-resistant \r\nSuper soft Lamination \r\nDense Padding for enhanced Comfort \r\nNo Drilling and modification are required to install\r\n100% waterproof  and cut Proof\r\n', '11499', '10', '8', 6),
(8, 'Chetak Ev Scooter Seat Cover', 'chetak_seat_cover.webp', 'Perfect Fit For Bajaj Chetak Ev: Tailored To Fit The Seat Of Your Bajaj Chetak Ev Perfectly, Offering A Snug, Custom-like Fit Without Any Hassle. Enhanced Comfort: Enjoy A Smooth And Comfortable Ride, Even During Longer Journeys, With A Seat Cover Designed To Provide Extra Cushioning And Support. Stylish & Modern Design: The Sleek Black Color With A Subtle Texture Adds A Touch Of Elegance To Your Bajaj Chetak, Making It A Perfect Accessory For Your Electric Scooter.\r\n', '379', '8', '2', 6),
(9, 'KD EV Charger Cable Bags Storage & Organizer', 'organizer.webp', 'This Bag Fits Almost All EV Charging Adapter & Cable Including, Tata Nexon EV, MG Motor, Hyundai Electric , OLA Electric S1 Pro, Ather Energy, Hero Electric, Okinawa, Bajaj, TVS & More.\r\n2-way zipper closure and sturdy ergonomic carry handle make this EV bag more convenient to carry and travel.\r\n', '999', '50', '2', 6),
(10, ' PU Leather Car Storage Organizer', 'leather_organizer.webp', 'Multipack: 1 This car seat organizer is made of high quality PU Leather with perfect waterproof property and good durability. Making your car looks very luxurious! Besides, it protects the back of your car seat from dust, abrasion and kicking dirts. Very worth having one of these car back seat organizers. STURDY FOLDABLE TRAY--- Foldable dining table can be put down as dining table and also as a work desk to hold your tablet.\r\n', '503', '15', '3', 6),
(11, 'Involve Gel Can - Carbon Black Car Freshener', 'involve_gel.webp', 'Involve Gel Can Air Fresheners are manufactured by using quality assured material and advanced techniques, which make them up to the standard in this highly challenging field. The materials utilized to manufacture Involve Gel Can Air Fresheners are sourced from the most reliable and official vendors, chosen after performing detailed market surveys. Involve products are widely acknowledged in the market for their high quality. They are dedicatedly involved in providing an excellent quality array of Involve Car Air Fresheners. The fragnance lasts for almost 30-45 days.\r\n', '391', '50', '2', 6),
(12, 'Evair Combo Pack of Car Air Freshener', 'Evair Combo Pack of Car Air Freshener.webp', 'Gardenia: The anti-nausea properties of the oriental aroma of Gardenia are attributed to its plum and peach. The top notes are the blending of Plum, Peach and Black current. The bottom notes are Cedar, Amber, Vanilla and White musk. Green Tea: The aroma of Green Tea is stimulating. It sharpens mental attention and makes you feel energized when travelling in your car. It opens with top notes of Lemon and Lime and fuses with hints of Peach and Lily. The bottom notes consist of Musk which gives out a dewy and mossy feeling. English Rose: English Rose car perfume is a soothing, floral scent that calms nerves, reduces tension, and promotes physical and mental relaxation. It opens with top notes of Bergamot and Geranium and fuses with hints of Rose and Lemongrass.\r\n', '1049', '25', '3', 6),
(13, 'Tata Tigor EV car cover', 'Tata Tigor EV car cover.webp', 'Antenna Slot Available : Yes\r\nUV Ray Protection : Yes\r\nStorage Bag Included : Yes\r\nTear Resistant : Yes\r\nWeather Resistant : Yes\r\nSuitable For : Car Cover\r\nFastening Type : Belt\r\n', '562', '100', '2', 7),
(14, 'Car Cover for XUV400', 'Car Cover for XUV400.webp', 'waterproof car cover has best stitch with Japanese machine (used in branded jeans clothing for heavy stitch) for extra strength. Car Covers Waterproof. 100% Waterproof Car Covers. 100% Waterproof (tested) Car Covers.\r\n', '1664', '150', '2', 7),
(15, 'Bike Cover for Bajaj Chetak Electric Scooter', 'Scooter Cover.webp', 'Especially Desinged for_ Bajaj Chetak Electric Scooter This Cover Is Made of 190T Premium Fabric, It Comes With Mirror Pockets That Covers both left and right mirror with pockets. Protects the vehicle against weather,rain,scratches & sun damage. \r\n', '345', '200', '3', 7),
(16, 'Cover For Electric Cruz', 'Cover For Electric Cruz.webp', '\r\nDurability Is Dust Resistant, Uv Ray Protection, Water Resistant, Weather Resistant. Model Number Is Iqube Electric Scooter.\r\n', '243', '20', '2', 7),
(17, 'Magnetic Sun Shades Car Curtain', 'Magnetic Sun Shades.webp', 'Customized Magnetic Sun Shades with Zipper:- About Product - Zipper magnetic sunshades for driver and co-driver to increase ease of use. They are made from high quality Materials which protects your car from high degree direct sun rays,It also Provide 70% protection from UV RAYS. They Covers windows Edge to Edge and stick with the frame using magnets. No tool is required for installation , no need to drill or damaging body, Installation will not interfere with windows operation. They Provide safe visibility while driving. \r\n', '899', '50', '2', 7),
(18, 'Front DRL LED Grill For Hyundai VENUE 2019', 'Front DRL LED Grill For Hyundai VENUE 2019.webp', 'VENUE HYBBRID LED VIP GRILL BLACK and CHROME WITH Alphabetic L.E.D Exterior accessories Place the Grill on the application area in such a manner that the bottom edge of Grill should match with vehicle area ensuring the exact fitment; before removing the tape liner.\r\n', '4499', '300', '4', 7),
(19, 'Rickshaw Mudguard', 'Rickshaw Mudguard.webp', 'LION EV E RICKSHAW MUDGUARD\r\nRICKSHAW SPARES\r\n', '240', '250', '3', 7),
(21, '60 Volt Battery Chargers', '60.jpg', '60 Volt 1.6 Amp (60V 1.6A) electric scooter/bike battery charger for lead-acid battery packs.\r\nStandard 110-125 Volt AC power input. \r\nTwo-color LED indicator lamp glows red when charging and green when charging is complete. \r\nThis is an automatic type battery charger which turns itself off when the charging cycle is complete to prevent battery overcharging. \r\nWorks with electric scooters and electric bikes that have five 12 Volt batteries or one 60 Volt battery pack.', '3800', '5', '1', 5),
(22, '48 Volt Battery Chargers', '48.jpg', '48 Volt 1.6 Amp (48V 1.6A) electric scooter/bike battery charger. \r\nStandard 110-125 Volt AC power input. \r\nTwo-color LED indicator lamp glows red when charging and green when charging is complete. \r\nThis is an automatic battery charger which stops charging and goes into float mode when the charging cycle is complete to prevent overcharging. \r\nFan cooled. Weight 1.5lbs. Works with electric scooters and bikes that have four 12 Volt batteries or one 48 Volt battery.', '3500', '15', '1', 5),
(23, '72 Volt Battery Chargers', '72.jpg', '72 Volt 2.5 Amp (72V 2.5A) electric scooter, moped, or bike battery charger. \r\n100-125 Volt AC power input. \r\nSturdy aluminum case with power switch and cooling fan. \r\nFuse protected, extra fuse included. \r\nTwo LED status indicators glow red when battery is charging and green when the charging cycle is complete. \r\nThis is an automatic battery charger which stops charging and goes into float mode when the charging cycle is complete to prevent overcharging. \r\nWorks with electric scooters, mopeds, and bikes that have six 12 Volt batteries or one 72 Volt battery pack. \r\nDesigned for charging 12Ah - 26Ah SLA battery packs. \r\nWeight 4lbs. Includes 12 month manufacturer\'s warranty.', '6600', '15', '1', 5),
(24, 'TVS Tire Pressure Monitoring System, TPMS', 'ti1.webp', 'The Tire Pressure Monitoring System (TPMS) is an essential safety feature designed to enhance vehicle performance and driver safety by continuously monitoring tire pressure. This advanced technology provides real-time data, alerting drivers to any significant changes in tire pressure that could affect vehicle handling, fuel efficiency, and overall safety.', '3720', '14', '2', 8),
(25, 'AGARO Primo Tyre Pressure Monitoring System', 'i2.jpg', 'Brand:AGARO\r\nModel:Primo\r\nType:Tyre Pressure Monitoring System (TPMS)\r\nCompatibility:All cars with four tires\r\nSensors:External sensors\r\nDisplay:PSI and temperature\r\nPower Source:USB/solar', '1899', '12', '2', 8),
(26, 'Tyre Pressure Monitoring System TPMS', 'i3.jpg', 'Tyre Pressure Monitoring System TPMS with Solar Charging, External Sensors, and Alarms for Tire Maintenance on Cars and Bikes.', '1900', '14', '2', 8),
(27, 'USB Smart Car Tire Tyre Pressure Monitoring System', 'i4.webp', 'Crafted from high-quality, durable materials to ensure long-lasting performance.\r\nEngineered for a precise, seamless fit and easy installation with compatible models.\r\nOptimized for improved vehicle efficiency, enhancing both power and fuel economy for a smoother drive.\r\nTested under various conditions to ensure reliability and safety.\r\nRust-resistant and corrosion-protected, ensuring it withstands harsh environmental conditions.\r\nManufactured by trusted experts, backed by rigorous quality control for maximum dependability.\r\nSupported by a customer-friendly warranty, guaranteeing satisfaction and confidence in your purchase.		', '4900', '7', '2', 8),
(28, 'MRF ZVTS 145/70 R13 71S Tubeless Car Tyre', 'i1.webp', 'Vehicle compatibility Maruti WagonR(OLD) Zen Estillo ZEN (OLD) Tread deign features higher sipe density and computerised tread pitch sequence Optimum traction smooth and quite ride Special polymer compound provides longterm even tread wear Carcass incorporates supple sidewalls.', '12251', '18', '3', 8),
(29, 'CONTINENTAL  7 XL', 'up2.jpg', 'Top performance tires and ride comfort. \r\nChoose CONTINENTAL 235/60 VR19 TL 107V CO PREMIUM CONT 7 XL (EV) tyres. \r\nAvailable in different models for sizes 235 60 19 at the cost of 142,43 Included in 5 working days.\r\nYou\'ll just have to choose your installer of choice, the day that suits your needs, and you\'re done.\r\nBy turning to us, you will be assured of receiving the highest level of warranty for your car before and after purchase.', '12652', '10', '5', 8),
(30, 'MICHELIN TIRES 47673 PRIMACY 4 ST', 'up3.webp', 'Michelin Primacy 4 Tire The Michelin Primacy 4 Tire offers enhanced safety. \r\nThis tire provides a high level of performance on wet roads, from the first use. \r\nThis tire responds to the need to perform at a high level even when worn; a long-lasting performance.\r\nCompared to its direct competitors, the new Michelin Primacy 4 Tire lasts an average of 11,000 miles more. \r\nThe new Michelin Primacy 4 Tire is a concrete illustration of the Michelin\'s strategy and commitment to allow consumers to be able to drive safely, throughout the life of the tire.', '31999', '18', '5', 8),
(31, 'TVS Eurogrip Jumbo GT', 'up4.webp', 'An Extraordinary Ride: The Jumbo GT features Large blocks with wide grooves that have excellent traction and self-cleaning under harsh road conditions.\r\n', '1039', '17', '5', 8),
(32, 'MRF 100/80-12 ZAPPER-FN TL', 'up5.webp', 'Fitment For TVS Ntorq Front Tyre \r\n', '1220', '14', '2', 8),
(33, 'Scooter Tyre', 'i6.png', 'Product Type:Scooter Tyre\r\nSupply Ability:1000 Per Week\r\nSample Policy:Free samples are available\r\nMain Export Market(s):Western Europe, Central America, North America, South America, Middle East, Africa, Eastern Europe, Asia, Australia\r\n							  ', '1400', '20', '4', 8),
(34, 'Erickshaw Leaf spring suspension Light model', 'su1.webp', 'The E-rickshaw leaf spring suspension (light model) is a compact, lightweight system made from high-grade spring steel. It ensures smooth rides, absorbs shocks, and provides stability for lightweight electric rickshaws, ideal for urban transport. Designed for durability, it offers customizable sizes for various E-rickshaw models.', '3400', '19', '2', 8),
(35, 'Dr. Nano Suspension For Mahindra XUV500', 'su2.png', 'Elevate your Mahindra XUV500 (2012-17) experience with the Dr. Nano Suspension Kit, an expertly designed solution aimed at enhancing your vehicle\'s performance and comfort on the road. This comprehensive suspension upgrade includes high-quality front and rear nitro gas struts paired with innovative rear dual-rate coil springs, all engineered to improve driving dynamics and provide a noticeably smoother ride. Whether you\'re tackling urban landscapes or venturing into rugged terrain, this suspension kit is a game-changer for any XUV500 owner looking for greater responsiveness and comfort.', '25000', '14', '6', 8),
(36, 'Rhinopro Suspension for Maruti Jimny', 'su3.webp', 'Upgrade your Maruti Jimny with the all-new Rhinopro Suspension, a result of 3 months of rigorous testing across every terrain and weather condition in India. Engineered for off-road and city driving, the Rhinopro Suspension delivers enhanced stability, reduced body roll, and a smooth, comfortable ride, ensuring your Jimny handles like a dream no matter where you take it.', '32000', '10', '5', 8),
(37, 'Monorim Genuine Suspension Kit', 'su4.webp', 'Original Monorim suspension kit, compatible with Segway Ninebot F25 30 35 40 40i 65 D18w D28 D40 electric scooter. Specification - net weight approx. 2.15kg,... Desertcart provide a seamless and secure shopping platform with 300 million+ products from around the globe delivered to your door. Find electronics, fashion, accessories, grocery and more.', '12639', '15', '3', 8),
(38, 'Toyota Innova Crysta ARC Suspension Upgrade Kit ', 'su5.webp', 'Get Air Suspension feel with ARC suspension. Minute vibrations to uncomfortable jolts will be gone for good. We do not just provide suspensions, we provide an experience with it. Custom designed specifically for every vehicle individually. Benefits:Increased Stability even at high speeds and tricky terrain.Better Acceleration.Increased Traction and gripReduced Shakiness on Steering wheel.Reduced bodyroll/sway by reducing unnecessary upward movement, which creates bumpy/bouncy ride conditions.\r\n', '39500', '15', '6', 8),
(39, 'QAWACHH 3 Channel Car Video Recorder Camera ', 'da1.webp', 'Capture every moment on the road with the QAWACHH Car Dash Camera\'s Full HD 1080 resolution. The QAWACHH 3 Channel Car Dash Camera is a sleek 9.66-inch rear view mirror that offers full HD 1080 recording with three cameras for front, rear, and interior coverage. 1. The QAWACHH 3 Channel Car Dash Camera is a versatile and essential device for modern drivers, featuring a sleek 9.66-inch rear view mirror design. This full HD 1080 video recorder is equipped with three cameras, providing comprehensive coverage of the front, rear, and interior of the vehicle. The intuitive touch screen interface ensures easy navigation and operation, making it an ideal choice for enhancing road safety and capturing critical moments on the road. With its universal compatibility, this dash cam seamlessly integrates into any vehicle, offering peace of mindfor every journey.', '6499', '12', '5', 9),
(40, 'GoMechanic Car DashCam', 'da2.webp', 'Brand:GoMechanic\r\nModel Name:SE_DC_005\r\nOrientation:Drivers Side\r\nVehicle Service Type:Car\r\nSpecial Feature:Touch Screen\r\nVideo Capture Resolution:1080p, 2K\r\nIncluded Components:1N Dashcam\r\nMounting Type:Adhesive Mount\r\nColour:1\r\nControl Method:Touch', '2199', '12', '6', 9),
(41, 'Sarvoteleweb Dash Cam', 'da3.webp', '1. Three Camera Coverage: Simultaneously Records From The Front, Inside, And Rear Of Your Vehicle,Providing Comprehensive Coverage And Protection From All Angles. \r\n2. Full Hd 1080p Resolution: Captures Clear And Detailed Footage In 1080p High Definition, Ensuring That Important Details Such As License Plates And Road Signs Are Easily Discernible.\r\n3.170 Wide Angle Lens: The Wide-angle Lens Offers A Broad Field Of View, Minimizing Blind Spots And Ensuring Maximum Coverage Of The Road Ahead And Surroundings.', '3989', '14', '5', 9),
(42, '3 Channels Dashcam Front Rear and Inside WiFi GPS', 'da4.webp', 'The LANMODO D1 Dashcam offers comprehensive 3-channel UHD recording with wide angles, built-in 5G WiFi for seamless app control, and advanced features like GPS tracking and infrared night vision, ensuring your driving experience is safe and well-documented.', '41369', '15', '4', 9),
(43, 'Maizic Smarthome Dashcam', 'da5.webp', 'HD Recording: Experience Unparalleled Clarity With High-definition Recording, Ensuring Every Detail On The Road Is Captured In Vivid Quality, From The Smallest Road Signs To The Widest Scenic Views. Whether It\'s Day Or Night, Trust That Your Footage Will Be Sharp And Clear. \r\nWIFI Connectivity: Easily Connect To Your Smartphone Via Wifi For Quick Access To Your Recordings And Sharing.\r\n		', '1999', '5', '4', 9),
(44, '12 v Car Alarm System', 'ca1.webp', 'This is a car alarm system with PKE-Passive keyless entry, remote engine starts, push button starts stop button.\r\nThe alarm is easy to install and use and can improve your car safety greatly once properly installed. \r\nSpecifications: Relative Humidity: 10%-95% Main Unit System-- Operation Voltage: 12.0V 3V Static Current:15m - A (except indicator, sensor) PKE Emission Current: 40m - A Shock Sensor Current:1m - A Coding: Leaning Code Frequency: (High)433.92MHZ, (Low)125KHZ Starting System-- Operation Voltage: 12.0V 3V ACC Current:30A ON Current: 30A Starts Current: 30A Remote Control-- Operation Voltage: DC3V Operation Current: 8m - A Static Current: 8u - A Coding: Leaning Code Battery: CR2032 3V 240m - Ah(included) Frequency: (High)433.92MHZ,(Low)125KHZ Package Size: 230 * 180 * 68mm / 9.1 * 7.1 * 2.7in Package Weight: 630g / 1.4lb Packing List:1 * Main Unit 2 * Remote Controls 1 * Push Starts Button 2 * LED Indicator Cable 1 * Vibration Sensor 2 * Low-frequency Antennas 1 * Starter Cable 1 * Function Cable 1 * Use Manual.', '5429', '14', '2', 9),
(45, 'Anti-theft 12V Car Alarm Device', 'ca2.webp', '1. Use the smartphone to install the APP, and turn on the PKE function to achieve the unlocking function close to the car and the locking function when leaving the car.\r\n2. The Bluetooth connection of the mobile phone requires a 6-digit password.\r\n3. Operate the APP, which can realize anti-theft, anti-theft, open trunk and other functions.\r\n		', '2705', '16', '2', 9),
(46, 'Black Universal Car Anti-Theft System', 'ca3.webp', 'Welcome to Our Store,We are devoted to offer High Quality Products with Reasonable Whole Price and fast delivery,Our company is professional in e-business,your order will be sent our with 1-3 days after we receive order payment,You will be satisfied with the shopping experience in our store.Please check the size information before you place the order,All dimensions are measured by hand,there may be some little deviations.Hoping you are understand it,Look for long term business with you.', '2395', '12', '3', 9),
(47, 'K5 Remote Starter and Car Alarm Smart App ', 'ca4.webp', 'Hign-concerned Chemical: none Special Features: Mobile Phone Control Car Brand Name: KirBin Origin: Mainland China Feature1: remote start car Feature2: auto start stop system Feature3: car intelligent system Feature4: car alarm autostart Things buyers must know: 1. The equipment must be connected to the correct power source. The acceptable voltage range of this system is 8-20V. If the voltage is too high or too low, the system will not work properly. 2. This system is universal and can be installed in almost any 12V car, but it cannot work with the original push button start system of the car itself, or the central door lock with double pulse unlocking, or the pneumatic door lock.', '5065', '5', '4', 9),
(48, 'Multi Color Emergency Evacuation Kit', 'em1.webp', '	Emergency Evacuation Kit,, We are long-time established manufacturer, distributer, importer and exporter. Emergency Evacuation/Survival Kit is used for emergency evacuation at the time of disaster or mayhem in residential buildings, offices, hotels, airports, hospitals, schools etc. It includes products required for short-term survival to escape from accident prone areas. It consists of safety torch, fire blanket, first aid box, fire smoke mask, emergency oxygen kit, lifeline, helmet, reflective jacket, barricading tape etc. This kit will be provided in a sturdy bag to keep in easy to access areas. Features: The Evacuation kit comes with a shoulder bag which consists of: Fire Blanket-Used to prevent from fire, burns and weather. First-Aid Box - Contains basic items to prevent from wound and cuts. Safety torch- To use for visibility in low light areas. It is waterproof. ', '250000', '20', '5', 9),
(49, 'Emergency Safety Kit for All Cars', 'em2.webp', 'Emergency Safety Kit for All Cars has tool featuring a hammer, seat belt cutter, flashlight, power bank, and car charger for all vehicles.\r\n', '5120', '14', '3', 9),
(51, '9 woolly toolbox Automotive hardware tools suite', 'em4.webp', 'Compact and portable\r\nDurable and long-lasting\r\nVersatile and multipurpose\r\nEasy to use and maintain\r\nEssential for roadside emergencies\r\n', '176', '20', '5', 9),
(52, 'Ecoflow River 2 Max Portable Power Station', 'po1.webp', 'Charge 0-100% in only 60 mins\r\nSafe and reliable for 10 years of use\r\nCharge without limits\r\nRun up to 80% of essential appliances\r\nGrab-and-go-power\r\nEssential home backup with a 30ms switch-over mode\r\nPower at your fingertips', '34999', '20', '6', 10),
(54, 'SBAOH Portable Power Station', 'po3.webp', 'EXTRA USB-C PORT: Time to get rid of bulky adapters because charging your laptop at fast speeds only requires a single cable. See the power station recharge itself and give a high-speed charge to a wide range of devices.\r\nEASY TO STORE AND CARRY: It weighs only 2.3lbs which is convenient to carry with the handle. It is ideal for using in car, camping, travel and outdoor photography because its super light weight and portable size.\r\nULTRA BRIGHT LED: The ultra-bright LED light of the portable power station has 2 lighting modes, constant, twinkling or SOS mode. Also there are 3 levels of brightness.\r\nSAFE PROTECTION TECHNOLIGY:Battery Management System (BMS) enables voltage control, temperature control and more advanced safety operations. When it goes to short circuit or overpower, it will automatically shut off to protect itself and the powered devices. Designed with cooling vents, that help this portable power supply stay in safety temperature.\r\nWHAT YOU GET: SBAOH P86 Portable Power Station (PowerHouse 88.8Wh), DC adapter, Cigarette Lighter Output, User Manual, our worry-free 1-year warranty, and friendly customer service.', '18970', '10', '4', 10),
(55, 'BLUETTI EB3A 600W Portable Power Station', 'po4.webp', 'BLUETTI EB3A 600W Portable Power Station LiFePO4 Battery Solar Generator Outdoor New.\r\n', '21318', '22', '5', 10),
(56, 'EcoFlow Delta Pro 3 Portable Power Station', 'po2.webp', 'Charges to 80% in just 50 minutes. Multiple Charging Methods.\r\n6 unique and 18 combo charging methods for maximum flexibility. Quiet Operation.\r\nOperates as low as 30 dB (under 2000W) for minimal noise. Easy to Use.\r\nPlug-and-play design for hassle-free setup. Specifications Powerful and Versatile.\r\n230V, 4000W in a single unit to power almost all of your home appliances. Expandable Capacity.\r\n448kWh, tailored to your energy needs.', '9999', '15', '3', 10),
(57, 'Cat Evacuation Kit', 'em3.webp', '5 Year shelf life pouch water 5 Year shelf life cat food and pouch water Convenient water bowl Pet carrierKeep a disaster from becoming a \'cat-astrophe\' with this Cat Evacuation Kit. This kit contains everything you need to sustain your cat for three days. This kit comes with a three-day supply of cat food and water (food and water have a 5-year shelf life). You\'ll also get a litter box, a four-pound box of litter, a collapsible travel bowl, pet wipes, a six-piece first aid kit, and a safety collar. This kit also contains a fun ball with bell, and a package of treats to help your furry friend feel more relaxed. This kit comes inside of a soft-sided nylon pet carrier, which has been rated for pets up to 11kg. Enjoy the peace of mind you will feel when you are prepared for any emergency with this Cat Evacuation Kit. Assembly level/degree of difficulty: No Assembly Required.', '9991', '14', '5', 10),
(58, 'Car Heated Seat Cushion Grey checkered rear row', 'he1.webp', 'Car Heated Seat Cushion Stay warm and cozy during cold winter drives with our On-Board Heated Seat Cushion Designed to provide instant comfort and relief from the chill, this heated cushion easily fits into your car seat to offer soothing warmth wherever you go. Whether you are commuting, traveling, or simply running errands, this cushion ensures you stay comfortable, even on the coldest days. Perfect for anyone who struggles with cold car seats in winter, it features quick heat-up technology and adjustable settings for personalized warmth. Say goodbye to shivering and hello to cozy, consistent heat during every ride  Key Features: Instant Heating: Heats up quickly, providing immediate warmth to your seat with the push of a button. Ideal for quick, effective relief on cold days. Adjustable Heat Settings: Choose your perfect temperature with multiple heat settings, allowing you to customize the warmth level for your comfort. Universal Fit: Designed to fit most car seats, including both front and back seats, ensuring versatility and convenience. Thermal Insulation: Keeps heat locked in for longer, offering consistent warmth and preventing heat loss during your drive. Safe & Durable: Made from high-quality, fire-resistant materials with built-in safety features like automatic shut-off to prevent overheating. Easy to Install: Simply plug it into your cars 12V power outlet (cigarette lighter) for hassle-free use. No complicated installation required. Why Choose the On-Board Heated Seat Cushion? All-Weather Comfort: Perfect for winter months or chilly morning commutes, providing warmth to your entire body, especially during long drives. Convenient & Portable: Can easily be moved from one vehicle to another, making it a versatile heating solution for any car, truck, or SUV. Energy-Efficient: Designed to use minimal power while providing maximum warmth, ensuring you stay comfortable without draining your cars battery. Relief for Aches & Pains.\r\n', '5839', '20', '2', 10),
(59, 'RUIRUI Heated Car Seat Cushion', 'he2.webp', 'Material: warm fleece, warm and comfortable. \r\nSize: 33 x 45CM. Increase the heating area. \r\nConnect the 12V car power adapter, 10 seconds to quickly heat up. \r\nIn... Desert cart provide a seamless and secure shopping platform with 300 million+ products from around the globe delivered to your door. \r\nFind electronics, fashion, accessories, grocery and more.\r\n', '8339', '12', '3', 10);

-- --------------------------------------------------------

--
-- Table structure for table `ev_accessories_category`
--

CREATE TABLE `ev_accessories_category` (
  `cat_id` int(15) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_description` varchar(500) NOT NULL,
  `cat_photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ev_accessories_category`
--

INSERT INTO `ev_accessories_category` (`cat_id`, `cat_name`, `cat_description`, `cat_photo`) VALUES
(5, 'Charging Equipment', 'This category includes all the accessories related to charging your electric vehicle. \r\nThese products help EV owners charge their vehicles efficiently at home or on the go.\r\n', 'charging_eq.jpg'),
(6, ' Interior Accessories', 'Accessories designed to enhance comfort, protection, and organization inside your EV. \r\nThese products help maintain the cleanliness and quality of the interior.\r\n', 'interior_ac.png'),
(7, 'Exterior Accessories', ' Items that improve the protection, aesthetics, and functionality of the EV\'s exterior. \r\nThis category helps maintain the vehicle\'s appearance and prevent damage from the elements.\r\n', 'exterior_ac.jpg'),
(8, ' Performance Accessories', 'Accessories that help improve the performance, handling, and overall driving experience of an electric vehicle.\r\n', 'performance_ac.jpg'),
(9, ' Safety & Security Accessories', ' Products designed to enhance the safety and security of your electric vehicle, both while\r\n driving & when parked.\r\n', 'safety_ac.webp'),
(10, ' Convenience & Comfort', 'These accessories are aimed at enhancing the convenience, comfort, and overall driving \r\nexperience of EV owners.\r\n', 'comfort_eq.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` int(15) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_address` varchar(150) NOT NULL,
  `user_city` varchar(50) NOT NULL,
  `user_pincode` varchar(10) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(12) NOT NULL,
  `user_mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `user_name`, `user_address`, `user_city`, `user_pincode`, `user_email`, `user_password`, `user_mobile`) VALUES
(2, 'Umang', 'Raykanagar,80 feet road,Surendranagar', 'Surendranagar', '363030', 'umang@gmail.com', '1234', '8849962095'),
(3, 'veer', '80 feet road,near by umiya mandir.', 'surendranagar', '363001', 'veer@gmail.com', '1234', '8849962095');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_brand`
--

CREATE TABLE `vehicle_brand` (
  `brand_id` int(15) NOT NULL,
  `brand_name` varchar(20) NOT NULL,
  `brand_logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_brand`
--

INSERT INTO `vehicle_brand` (`brand_id`, `brand_name`, `brand_logo`) VALUES
(1, 'OLA', 'ola.png'),
(2, 'TATA', 'tata.jpg'),
(3, 'HYUNDAI', 'hyundai.jpg'),
(4, 'ATHER', 'ather_energy.jpg'),
(5, 'FORD', 'ford.png'),
(6, 'BAJAJ', 'Bajaj.webp'),
(7, 'MAHINDRA', 'mahindra.jpg'),
(8, 'MG', 'mg.jpg'),
(9, 'OBEN', 'oben.jpg'),
(10, 'REVOLT', 'revolt.png'),
(11, 'TVS', 'tvs.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_cart_master`
--

CREATE TABLE `vehicle_cart_master` (
  `v_cart_id` int(15) NOT NULL,
  `vehicle_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `v_order_qty` int(15) NOT NULL,
  `v_order_price_per_unit` int(20) NOT NULL,
  `v_total_price` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_feedback_master`
--

CREATE TABLE `vehicle_feedback_master` (
  `feedback_id` int(15) NOT NULL,
  `feedback_message` varchar(150) NOT NULL,
  `feedback_date` varchar(50) NOT NULL,
  `user_id` int(15) NOT NULL,
  `vehicle_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_feedback_master`
--

INSERT INTO `vehicle_feedback_master` (`feedback_id`, `feedback_message`, `feedback_date`, `user_id`, `vehicle_id`) VALUES
(6, 'Nice Car...', '10/03/2025', 2, 14),
(7, 'Good...', '10/03/2025', 2, 16),
(8, 'Good...', '10/03/2025', 2, 16),
(9, 'Good...', '10/03/2025', 2, 13),
(10, 'Good...', '10/03/2025', 2, 13),
(11, 'test feedback', '10/03/2025', 2, 13),
(12, 'This Bike look very nice', '12/03/2025', 2, 42),
(13, 'This is the Best speed Provide', '12/03/2025', 2, 3),
(14, 'This is very big and smart feature truck.', '14/03/2025', 3, 33);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_master`
--

CREATE TABLE `vehicle_master` (
  `vehicle_id` int(15) NOT NULL,
  `vehicle_name` varchar(30) NOT NULL,
  `vehicle_photo` varchar(500) NOT NULL,
  `vehicle_price` varchar(100) NOT NULL,
  `vehicle_description` varchar(1000) NOT NULL,
  `brand_id` int(15) NOT NULL,
  `type_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_master`
--

INSERT INTO `vehicle_master` (`vehicle_id`, `vehicle_name`, `vehicle_photo`, `vehicle_price`, `vehicle_description`, `brand_id`, `type_id`) VALUES
(3, ' Ather 450S ', 'ather-450s.webp', '129000', 'Battery: 3.0 kWh Lithium-Ion | Range per Charge: 115 km | Top Speed: 90 km/h | Charging Time: 0-80% in 4 hours, full charge in 5 hours | Features: 7-inch touchscreen, Bluetooth, navigation, ride modes, regenerative braking, smart app integration. |\r\n', 4, 2),
(4, ' Ather 450X', 'ather-450x-_cosmic-black_.jpg', '145000', 'Battery: 3.7 kWh Lithium-Ion | Range per Charge: 146 km | Top Speed: 90 km/h | Charging Time: 0-80% in 4 hours, full charge in 5.4 hours | Features: 7-inch touchscreen, Bluetooth, fast charging, and regenerative braking.\r\n', 4, 2),
(5, ' Ather 450 Apex', 'ather450-apex.webp', '160000', 'Battery: 4.0 kWh Lithium-Ion | Range per Charge: 155 km | Top Speed: 95 km/h | Charging Time: 0-80% in 4.5 hours, full charge in 6 hours | Features: High-performance motor, premium build, and advanced riding modes.\r\n', 4, 2),
(6, ' Ather Rizta', 'ather-rizta.webp', '135000', 'Battery: 3.5 kWh Lithium-Ion | Range per Charge: 120 km | Top Speed: 88 km/h | Charging Time: 0-80% in 4 hours, full charge in 5.2 hours | Features: Sleek design, regenerative braking, and a smart dashboard.', 4, 2),
(7, 'MG4 Electric Hatchback', 'mg4.jpg', '2900000', 'Battery: 64 kWh | Range per Charge: 450 km | Charging Time: 0-80% in 35 minutes (fast charger) | Top Speed: 160 km/h | Features: Sleek design, spacious interiors, and a high-tech infotainment system.\r\n', 8, 3),
(8, ' MG5 Electric Estate', 'mg5.webp', '2600000', 'Battery: 61.1 kWh | Range per Charge: 400 km | Charging Time: 0-80% in 40 minutes (fast charger) | Top Speed: 185 km/h | Features: Family-friendly design, advanced safety features, and ample boot space.\r\n', 8, 3),
(9, ' MG ZS EV (SUV)', 'mg_zs.jpg', '2338000', 'Battery: 50.3 kWh | Range per Charge: 461 km | Charging Time: 0-80% in 40 minutes (fast charger) | Top Speed: 140 km/h | Features: Stylish SUV with panoramic sunroof, i-SMART technology, and connected features.\r\n', 8, 3),
(10, ' MG Cyberster ', 'mg_cyberster.jpg', '8000000', ' Battery: 77 kWh | Range per Charge: 500 km | Charging Time: Approx. 50 minutes (fast charger) | Top Speed: 200+ km/h | Features: Futuristic design, convertible roof, and luxury interiors.\r\n', 8, 3),
(11, ' MG Comet EV ', 'mg_comet.png', '798000', 'Battery: 17.3 kWh | Range per Charge: 230 km | Charging Time: 7 hours (standard charger) | Top Speed: 100 km/h | Features: Ultra-compact design, ideal for city driving, with customizable interiors.\r\n', 8, 3),
(12, ' MG Marvel R ', 'mg_marvel.jpg', '6000000', 'Battery: 70 kWh | Range per Charge: 402 km | Charging Time: 0-80% in 30 minutes (fast charger) | Top Speed: 200 km/h | Features: Advanced driver assistance, luxury interiors, and a powerful dual-motor system.', 8, 3),
(13, 'Ford Mustang Mach-E ', 'ford_mustang_mach_e.png', '3500000 ', ' Battery: Up to 91 kWh | Range per Charge: Up to 480 km | Charging Time: 10%-80% in 38 minutes (DC fast charger) | Top Speed: 180 km/h | Features: Iconic design, 15.5-inch touchscreen, and Ford Co-Pilot360 driver assistance.\r\n', 5, 3),
(14, ' Ford F-150 Lightning ', 'ford_150lightning.jpg', '4100000', 'Battery: 98-131 kWh (Standard and Extended Range) | Range per Charge: Up to 515 km | Charging Time: 10%-80% in 41 minutes (DC fast charger) | Top Speed: 170 km/h | Features: Dual motors, Intelligent Backup Power, and onboard power outlets.\r\n', 5, 6),
(15, ' Ford E-Transit ', 'ford_etransit.jpg', '3700000', ' Battery: 68 kWh | Range per Charge: Up to 203 km | Charging Time: 10%-80% in 34 minutes (DC fast charger) | Top Speed: 120 km/h | Features: Designed for commercial use, customizable cargo space, and smart fleet management.\r\n', 5, 6),
(16, ' Ford Escape Hybrid ', 'ford-escape-phev.jpg', '3100000', ' Battery: 14.4 kWh (Plug-in Hybrid) | Electric-Only Range: 61 km | Combined Range: 885 km (Electric + Gasoline) | Charging Time: Approx. 3.5 hours with Level 2 Charger | Top Speed: 200 km/h | Features: Compact SUV design, hybrid efficiency, and SYNC 3 infotainment system.\r\n', 5, 3),
(17, ' Ford Explorer Hybrid ', 'ford_explorer_phex.jpg', '4400000 ', 'Battery: 13.6 kWh (Plug-in Hybrid) | Electric-Only Range: 42 km | Combined Range: 800+ km (Electric + Gasoline) | Charging Time: Approx. 4 hours with Level 2 Charger | Top Speed: 220 km/h | Features: Spacious 3-row seating, advanced driver assistance, and luxurious interiors.', 5, 3),
(18, 'Mahindra XUV400 ', 'mahindra-xuv400.jpg', '1598000 ', ' Battery: 39.4 kWh | Range per Charge: 456 km | Charging Time: 50 mins (fast charger), 6.5 hours (home charger) | Top Speed: 150 km/h | Features: Sporty design, dual-tone colors, 7-inch touchscreen, and advanced safety features.\r\n', 7, 3),
(19, ' Mahindra BE 06 (Upcoming)', 'mahindra_be6.jpg', '2500000', 'Battery: Estimated 60-80 kWh | Range per Charge: Expected 500 km | Charging Time: Approx. 45 mins (fast charger) | Top Speed: 180 km/h (expected) | Features: Futuristic coupe-SUV design, panoramic sunroof, advanced connected technology, and sustainable interiors.', 7, 3),
(22, 'Chetak', 'Bajaj Chetak.avif', '160000', 'The Bajaj Chetak is a modern electric scooter that combines retro design with cutting-edge electric technology. It offers silent, emission-free rides with a good range per charge, making it a perfect option for daily commuters. It features a sleek, premium design and is available with advanced features like regenerative braking, app connectivity, and a digital console.\r\n', 6, 2),
(37, 'Mahindra eDelievery', 'Mahindra eDelievery.avif', '380000', 'The Mahindra eDelievery is an electric vehicle designed specifically for last-mile delivery. It combines the convenience of a compact design with electric power, offering businesses a reliable, eco-friendly solution for cargo transport. Its payload capacity, battery range, and efficient design make it a great choice for small businesses and delivery services.\r\n', 7, 4),
(42, 'oben-rorr', 'oben-rorr.avif', '150000 ', 'The Oben Rorr is a fully electric motorcycle designed for high performance and efficiency. It is equipped with a powerful electric motor, offering a smooth and responsive ride. With features such as a modern digital display, fast charging, and impressive torque, the Oben Rorr is designed to appeal to motorcycle enthusiasts looking for an eco-friendly yet powerful alternative to traditional petrol-powered bikes. It\'s a great option for both city commuting and longer rides.\r\n', 9, 1),
(43, 'oben-rorr-ez', 'oben-rorr-ez.avif', '110000 ', 'The Oben Rorr EZ is a more affordable and slightly toned-down version of the Oben Rorr electric motorcycle. Designed for riders who are looking for a budget-friendly yet reliable electric motorcycle, the Rorr EZ offers many of the same great features as the standard version, such as a digital display and fast charging. However, it is intended for those who prioritize a more economical electric two-wheeler with solid performance for urban commuting and occasional long rides.\r\n', 9, 1),
(44, 'revolt RV400', 'revolt RV400.webp', '156206', 'The Revolt RV400 is a flagship electric motorcycle from Revolt Motors. It is designed for performance, offering a high-tech experience with features like AI integration, a digital dashboard, and a smooth, powerful electric drivetrain. The RV400 is ideal for both daily commuting and longer rides, with an impressive range and top speed. The bike comes with a removable battery, allowing easy charging at home or through public charging stations. The RV400 also offers several riding modes to cater to different riding preferences.\r\n', 10, 1),
(45, 'revolt-rv300', 'revolt-rv300.webp', '170000 ', 'The Revolt RV300 is a more affordable and entry-level electric motorcycle from Revolt, designed for urban commuting. It offers many of the same modern features as the RV400 but with a slightly lower performance and range. The RV300 is ideal for people looking for an efficient, eco-friendly motorcycle that is cost-effective for short-distance travel within cities. It offers good performance for its price, and features like AI integration and app connectivity are available as well.\r\n', 10, 1),
(46, 'Tigor EV update', 'Tigor_EV_update.jpg', '1300000', 'A compact electric sedan with Tata\'s Ziptron technology, offering smooth performance and a comfortable ride.\r\nRange: 250-300 km\r\nTop Speed: 85 km/h\r\nBattery: 26 kWh lithium-ion\r\nFast Charging: 0-80% in 60 minutes\r\nPerformance: 55 kW motor', 2, 3),
(47, 'Tata Punch EV', 'Tata Punch EV.jpeg', '1200000', 'An electric version of the popular Tata Punch SUV, offering an eco-friendly alternative in the compact SUV segment.\r\nRange: 250-300 km\r\nTop Speed: 100 km/h\r\nBattery: 26-30 kWh\r\nMotor: 55 kW', 2, 3),
(48, 'Tata-CURVV-EV-1', 'Tata-CURVV-EV-1.jpg', '2000000 ', 'A concept electric SUV with a premium coupe design, focused on futuristic tech and performance.\r\nRange: 400-500 km\r\nTop Speed: 120-150 km/h\r\nBattery: 40-50 kWh\r\nInterior: Futuristic digital cabin', 2, 3),
(49, 'Tata-Nexon-EV', 'Tata-Nexon-EV.jpg', '1700000', 'A popular electric SUV with excellent range and performance, offering a smooth ride with advanced features.\r\nRange: 312 km\r\nTop Speed: 120 km/h\r\nBattery: 30.2 kWh\r\nFast Charging: 0-80% in 60 minutes', 2, 3),
(50, 'Tiago-EV-Charging-a', 'Tiago-EV-Charging-a.jpg', '950000', 'A compact electric hatchback ideal for city commuting with a stylish design and efficient driving experience.\r\nRange: 200-250 km\r\nTop Speed: 90 km/h\r\nBattery: 21-24 kWh\r\nCharging: 0-80% in 60-90 minutes', 2, 3),
(51, 'TVS iQube S', 'TVS iQube S.webp', '110000', 'A budget-friendly electric scooter focused on daily commuting with essential features and good performance.\r\nRange: 100 km\r\nTop Speed: 78 km/h\r\nBattery: 3 kWh lithium-ion\r\nCharging: 0-80% in 4-5 hours\r\nMotor: 4.4 kW', 11, 2),
(52, 'TVS iQube st', 'TVS iQube st.webp', '140000', 'A premium variant of the iQube with enhanced range, modern tech, and improved performance.\r\nRange: 150 km\r\nTop Speed: 82 km/h\r\nBattery: 4.56 kWh lithium-ion\r\nCharging: 0-80% in 4-5 hours\r\nMotor: 7 kW\r\nFeatures: Touchscreen, Bluetooth, remote diagnostics', 11, 2),
(53, 'TVS iQube', 'TVS iQube.jpg', '120000', 'A stylish electric scooter with a good range and modern features, ideal for urban commuting.\r\nRange: 75-80 km\r\nTop Speed: 78 km/h\r\nBattery: 3.5 kWh lithium-ion\r\nCharging: 0-80% in 5 hours\r\nMotor: 4.4 kW\r\nFeatures: Smart dashboard, navigation', 11, 2),
(55, 'Maxima XL Cargo E-Tec 12.0', 'bajaj-maxima-xl-cargo-e-tec-12.0.avif', '400000', 'The Bajaj Maxima XL Cargo E-Tec 12.0 is a fully electric cargo vehicle designed for efficient urban deliveries. This three-wheeler features a larger cargo space for transporting goods and has a robust electric motor that ensures great load-carrying capacity. It is ideal for businesses looking to reduce their carbon footprint and operating costs.\r\n', 6, 4),
(56, 'Bajaj Maxima Z', 'bajaj-maxima-z.avif', '350000', 'The Bajaj Maxima Z is a versatile, compact cargo vehicle. It\'s part of Bajaj\'s range of light commercial vehicles designed for last-mile deliveries. The Maxima Z is known for its durability, large load capacity, and low maintenance costs, making it a popular choice for small businesses in India.\r\n', 6, 4),
(57, 'Bajaj Maxima C', 'bajaj-maxima-c.webp', '320000', 'The Bajaj Maxima C is a commercial three-wheeler designed for carrying goods in urban and semi-urban areas. It offers a larger cargo area compared to standard three-wheelers, making it ideal for transporting heavier loads. It\'s a reliable vehicle with a fuel-efficient engine, making it popular among small businesses.\r\n', 6, 4),
(58, ' Bajaj Qute', 'BAJAJ-QUTE.webp', '280000', 'The Bajaj Qute is a compact, four-wheeled urban vehicle that combines the convenience of a small car with the fuel efficiency of an auto rickshaw. It???s an affordable, eco-friendly alternative for short-distance commutes. The Qute is designed to carry four passengers, with a top speed of around 70 km/h, making it ideal for city driving.\r\n', 6, 3),
(59, 'Bajaj Chetak', 'Bajaj Chetak.avif', '150000', 'The Bajaj Chetak is a modern electric scooter that combines retro design with cutting-edge electric technology. It offers silent, emission-free rides with a good range per charge, making it a perfect option for daily commuters. It features a sleek, premium design and is available with advanced features like regenerative braking, app connectivity, and a digital console.\r\n', 6, 2),
(60, 'Hyundai IONIQ 5', 'Hyundai IONIQ 5.jpeg', '5500000 ', 'The Hyundai IONIQ 5 is an all-electric crossover SUV that represents a bold new design direction for Hyundai. It features a modern and spacious interior, impressive technology features, and a long driving range thanks to its innovative electric platform. The IONIQ 5 is equipped with a high-tech infotainment system and offers fast charging capabilities.\r\n', 3, 3),
(61, 'Hyundai IONIQ 6', 'Hyundai IONIQ 6.jpg', '6500000', 'The Hyundai IONIQ 6 is an electric sedan that blends aerodynamic design with advanced technology. It offers an ultra-modern look, a spacious cabin, and advanced electric powertrains for long-range driving. The IONIQ 6 comes with a sleek profile, a minimalist interior, and is equipped with the latest connectivity and driver-assist features.\r\n', 3, 3),
(62, 'Hyundai-Ioniq-5-N-2', 'Hyundai-Ioniq-5-N-2.jpg', '7000000', 'The Hyundai Ioniq 5 N is a performance-oriented version of the Ioniq 5, developed by Hyundai\'s N performance division. This electric SUV focuses on high-performance driving while retaining the Ioniq 5\'s cutting-edge features. It offers powerful acceleration, sporty handling, and a dynamic driving experience, making it an exciting alternative in the EV market.\r\n', 3, 3),
(63, 'Hyundai-ioniq-9', 'hyundai-ioniq-9.jpg', '8000000', 'The Hyundai Ioniq 9 is a future electric SUV concept that builds on Hyundai\'s commitment to innovative electric mobility. It is expected to offer a larger size, a more luxurious and tech-focused interior, and cutting-edge features. Although the Ioniq 9 is still a concept vehicle, it signals Hyundai\'s direction toward premium electric mobility and sustainable driving solutions.\r\n', 3, 3),
(64, 'Hyundai-kona-electric', 'hyundai-kona-electric.jpg', '2500000', 'The Hyundai Kona Electric is an all-electric compact SUV that offers a great balance of performance, range, and practicality. With a 39.2 kWh or 64 kWh battery, it provides an impressive driving range of up to 450 km on a single charge. The Kona Electric features a stylish design, a comfortable interior, and modern tech features, making it a popular option for electric SUV enthusiasts.\r\n', 3, 3),
(65, 'Hyundai Xcient Fuel Cell', 'Hyundai Xcient Fuel Cell.jpg', '30000000', 'The Hyundai Xcient Fuel Cell is a hydrogen-powered heavy-duty truck that represents Hyundai\'s venture into the commercial fuel-cell vehicle sector. It is designed to provide zero-emission long-haul trucking with extended range capabilities. The Xcient Fuel Cell truck is part of Hyundai\'s larger plan to integrate hydrogen fuel-cell technology into commercial transportation, reducing carbon emissions in the logistics and transport sectors.\r\n', 3, 6),
(66, 'mojo', 'mojo.jpeg', '200000', 'The Mahindra Mojo is a sport-touring motorcycle designed for long-distance riding. It features a 294.72cc engine, offering a smooth and powerful ride. The bike is equipped with a comfortable seat, advanced suspension system, and strong road presence, making it a suitable choice for both urban and highway riding.\r\n', 7, 1),
(67, 'E Alfa Plus', 'E Alfa Plus.png', '300000', 'The E Alfa Plus is an electric three-wheeler by Mahindra designed for passenger transport. It offers a comfortable ride for urban commuters with zero emissions. The vehicle is equipped with a high-performance electric motor, providing smooth and efficient mobility. It\'s a popular choice for eco-friendly public transport solutions.\r\n', 7, 4),
(68, 'E_Alfa_Cargo', 'E_Alfa_Cargo.png', '325000', 'The E Alfa Cargo is a three-wheeled electric vehicle designed for cargo transportation. With a robust electric motor, this vehicle offers efficient goods delivery in urban areas. It\'s highly cost-effective and environment-friendly, making it an ideal choice for businesses that require a sustainable and low-maintenance cargo vehicle. \r\n\r\n', 7, 4),
(69, 'zor-grand', 'zor-grand.avif', '380000', 'The Zor Grand is a more advanced version of the Mahindra Zor electric cargo vehicle. It offers enhanced load capacity, a longer battery range, and superior durability. It is designed for businesses looking for an eco-friendly solution for goods delivery, making it suitable for a variety of commercial needs.\r\n\r\n	\r\n', 7, 4),
(70, 'e2o', 'e2o.avif', '800000 ', 'The Mahindra e2o is a compact all-electric city car. It features an easy-to-drive electric powertrain and offers a range of around 100-140 km on a single charge, making it ideal for urban commuting. With a modern design and efficient performance, it provides a cost-effective, eco-friendly solution for city dwellers.\r\n\r\n', 7, 3),
(73, 'Ola S1 Air', 'Ola S1 Air.avif', '107499', 'Battery Capacity: 3 kWh\r\nRange (IDC): 151 km\r\nTop Speed: 90 km/h\r\nPeak Power: 6 kW\r\nAcceleration (0-40 km/h): 3.3 seconds\r\nFeatures: Eco, Normal & Sports modes, 34 L boot space, 17.78 cm (7\") touchscreen instrument cluster, LED headlamps and tail lamp, hub motor, and MoveOS capabilities. \r\n', 1, 2),
(74, 'Ola Roadster X+', 'Ola Roadster X+.avif', '84999', 'The Ola Roadster X+ is described as the future of motorcycling, offering advanced features and performance. ', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_order_master`
--

CREATE TABLE `vehicle_order_master` (
  `v_order_id` int(15) NOT NULL,
  `vehicle_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `v_order_quantity` int(10) NOT NULL,
  `v_order_price_per_unit` varchar(15) NOT NULL,
  `v_order_total_price` varchar(15) NOT NULL,
  `v_order_status` varchar(15) NOT NULL,
  `v_order_date` varchar(15) NOT NULL,
  `v_delivery_date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_order_master`
--

INSERT INTO `vehicle_order_master` (`v_order_id`, `vehicle_id`, `user_id`, `v_order_quantity`, `v_order_price_per_unit`, `v_order_total_price`, `v_order_status`, `v_order_date`, `v_delivery_date`) VALUES
(7, 3, 2, 7, '129000', '903000', 'Processing', '12-3-2025', '22-3-2025'),
(8, 3, 2, 1, '129000', '129000', 'Processing', '12-3-2025', '22-3-2025'),
(9, 16, 2, 4, '3100000', '12400000', 'Processing', '14-3-2025', '24-3-2025');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `type_id` int(15) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `type_icon` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`type_id`, `vehicle_type`, `type_icon`) VALUES
(1, 'Bike', 'bike2.avif'),
(2, 'Scooter', 'escooter.webp'),
(3, 'Car', 'car2.webp'),
(4, 'Three Wheeler', 'erickshaw.jpg'),
(6, 'Pickup Truck', 'truck3.avif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_feedback_master`
--
ALTER TABLE `acc_feedback_master`
  ADD PRIMARY KEY (`acc_feedback_id`);

--
-- Indexes for table `acc_order_master`
--
ALTER TABLE `acc_order_master`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart_master`
--
ALTER TABLE `cart_master`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `charging_station`
--
ALTER TABLE `charging_station`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `ev_accessories`
--
ALTER TABLE `ev_accessories`
  ADD PRIMARY KEY (`accessory_id`);

--
-- Indexes for table `ev_accessories_category`
--
ALTER TABLE `ev_accessories_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vehicle_brand`
--
ALTER TABLE `vehicle_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `vehicle_cart_master`
--
ALTER TABLE `vehicle_cart_master`
  ADD PRIMARY KEY (`v_cart_id`);

--
-- Indexes for table `vehicle_feedback_master`
--
ALTER TABLE `vehicle_feedback_master`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `vehicle_master`
--
ALTER TABLE `vehicle_master`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `vehicle_order_master`
--
ALTER TABLE `vehicle_order_master`
  ADD PRIMARY KEY (`v_order_id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_feedback_master`
--
ALTER TABLE `acc_feedback_master`
  MODIFY `acc_feedback_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `acc_order_master`
--
ALTER TABLE `acc_order_master`
  MODIFY `order_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_master`
--
ALTER TABLE `cart_master`
  MODIFY `cart_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `charging_station`
--
ALTER TABLE `charging_station`
  MODIFY `station_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ev_accessories`
--
ALTER TABLE `ev_accessories`
  MODIFY `accessory_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `ev_accessories_category`
--
ALTER TABLE `ev_accessories_category`
  MODIFY `cat_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_brand`
--
ALTER TABLE `vehicle_brand`
  MODIFY `brand_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vehicle_cart_master`
--
ALTER TABLE `vehicle_cart_master`
  MODIFY `v_cart_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle_feedback_master`
--
ALTER TABLE `vehicle_feedback_master`
  MODIFY `feedback_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vehicle_master`
--
ALTER TABLE `vehicle_master`
  MODIFY `vehicle_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `vehicle_order_master`
--
ALTER TABLE `vehicle_order_master`
  MODIFY `v_order_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `type_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
