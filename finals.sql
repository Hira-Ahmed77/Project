CREATE DATABASE finals;

CREATE TABLE `food` (
                           `food_id` int(11) NOT NULL AUTO_INCREMENT,
                           `food_name` varchar(255) NOT NULL,
                           `food_cat` varchar(255) NOT NULL,
                           `food_price` double NOT NULL,
                           `food_image` varchar(255) NOT NULL,
                           PRIMARY KEY(`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `food` (`food_id`, `food_name`, `food_cat`, `food_price`, `food_image`) VALUES
                                                                                        (1, 'Porota', 'Breakfast', 10.00,'./img/food/1.jpg'),
                                                                                        (2, 'Luchi', 'Breakfast', 10.00,'./img/food/2.jpg'),
                                                                                        (3, 'Tondun Ruti', 'Breakfast', 15.00,'./img/food/3.jpg'),
                                                                                        (4, 'Shobji', 'Breakfast', 20.00,'./img/food/4.jpg'),
                                                                                        (5, 'Daal', 'Breakfast', 20.00,'./img/food/5.jpg'),
                                                                                        (6, 'Egg Omelet', 'Breakfast', 15.00,'./img/food/6.jpg'),
                                                                                        (7, 'Boiled Egg', 'Breakfast', 20.00,'./img/food/7.jpg'),
                                                                                        (8, 'Nehari', 'Breakfast', 100.00,'./img/food/8.jpg'),

                                                                                        (9, 'Chiecken Biriyani', 'Lunch', 120.00,'./img/food/9.jpg'),
                                                                                        (10, 'Chicken Khichuri', 'Lunch', 70.00,'./img/food/10.jpg'),
                                                                                        (11, 'Rice', 'Lunch', 20.00,'./img/food/11.jpg'),
                                                                                        (12, 'Fried Rice', 'Lunch', 150.00,'./img/food/12.jpg'),
                                                                                        (13, 'Daal', 'Lunch', 20.00,'./img/food/13.jpg'),
                                                                                        (14, 'Chicken Curry', 'Lunch', 75.00,'./img/food/14.jpg'),
                                                                                        (15, 'Beaf Curry', 'Lunch', 100.00,'./img/food/15.jpg'),
                                                                                        (16, 'Alu Bhorta', 'Lunch', 10.00,'./img/food/16.jpg'),
                                                                                        (17, 'Begun Bhorta', 'Lunch', 10.00,'./img/food/17.jpg'),

                                                                                        (18, 'Burger', 'Snacks', 90.00,'./img/food/18.jpg'),
                                                                                        (19, 'Shingara', 'Snacks', 10.00,'./img/food/19.jpg'),
                                                                                        (20, 'Chicken Roll', 'Snacks', 30.00,'./img/food/20.jpg'),
                                                                                        (21, 'Sandwich', 'Snacks', 35.00,'./img/food/21.jpg'),
                                                                                        (22, 'Noodles', 'Snacks', 40.00,'./img/food/22.jpg'),
                                                                                        (23, 'Puri', 'Snacks', 5.00,'./img/food/23.jpg'),
                                                                                        (24, 'Chips', 'Snacks', 10.00,'./img/food/24.jpg'),
                                                                                        (25, 'Shawarma', 'Snacks', 120.00,'./img/food/25.jpg'),
                                                                                        (26, 'Chicken Nuggets', 'Snacks', 120.00,'./img/food/100.jpg'),
                                                                                        (27, 'Chicken Meatball', 'Snacks', 90.00,'./img/food/27.jpg'),

                                                                                        (28, 'Tehari', 'Dinner', 130.00,'./img/food/28.jpg'),
                                                                                        (29, 'Kacchi', 'Dinner', 200.00,'./img/food/29.jpg'),
                                                                                        (30, 'Kabab', 'Dinner', 40.00,'./img/food/30.jpg'),
                                                                                        (31, 'Chicken Roast', 'Dinner', 120.00,'./img/food/31.jpg'),
                                                                                        (32, 'Fish Fry', 'Dinner', 80.00,'./img/food/32.jpg'),
                                                                                        (33, 'Rice', 'Dinner', 20.00,'./img/food/11.jpg'),
                                                                                        (34, 'Egg Curry', 'Dinner', 30.00,'./img/food/34.jpg'),
                                                                                        (35, 'Polao', 'Dinner', 70.00,'./img/food/35.jpg'),

                                                                                        (36, 'Roshogolla', 'Desert', 10.00,'./img/food/36.jpg'),
                                                                                        (37, 'Curd', 'Desert', 50.00,'./img/food/37.jpg'),
                                                                                        (38, 'Chomchom', 'Desert', 10.00,'./img/food/38.jpg'),
                                                                                        (39, 'Payesh', 'Desert', 30.00,'./img/food/39.jpg'),
                                                                                        (40, 'Jorda', 'Desert', 50.00,'./img/food/40.jpg'),
                                                                                        (41, 'Firni', 'Desert', 50.00,'./img/food/41.jpg'),
                                                                                        (42, 'Kunafa', 'Desert', 70.00,'./img/food/42.jpg'),
                                                                                        (43, 'Cheesecake', 'Desert', 150.00,'./img/food/43.jpg'),

                                                                                        (44, '7 up', 'Drinks', 20.00,'./img/food/44.jpg'),
                                                                                        (45, 'Fruit Juice', 'Drinks', 50.00,'./img/food/45.jpg'),
                                                                                        (46, 'Tea', 'Drinks', 10.00,'./img/food/46.jpg'),
                                                                                        (47, 'Lacchi', 'Drinks', 60.00,'./img/food/47.jpg'),
                                                                                        (48, 'Coffee', 'Drinks', 25.00,'./img/food/48.jpg'),
                                                                                        (49, 'Mirinda', 'Drinks', 20.00,'./img/food/56.jpg'),
                                                                                        (50, 'Mountain Dew', 'Drinks', 20.00,'./img/food/57.jpg'),
                                                                                        (51, 'Pepsi', 'Drinks', 20.00,'./img/food/58.jpg'),
                                                                                        (52, 'Mojo', 'Drinks', 20.00,'./img/food/52.jpg');


CREATE TABLE `orders` (
                        `order_id` int(11) NOT NULL AUTO_INCREMENT,
                        `user_id` int(11) NOT NULL,
                        `order_price` double NOT NULL,
                        `order_payment` varchar(255) NOT NULL,
                        PRIMARY KEY(`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `ordersItems` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `orders_id` int(11) NOT NULL,
                        `food_id` int(11) NOT NULL,
                        `quantity` int(11) NOT NULL,
                        `food_price` double NOT NULL,
                        PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `user` (
                        `user_id` int(11) NOT NULL AUTO_INCREMENT,
                        `user_name` varchar(255) NOT NULL,
                        `user_email` varchar(255) NOT NULL,
                        `user_password` varchar(255) NOT NULL,
                        PRIMARY KEY(`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
