-- CreateTable
CREATE TABLE `facility` (
    `facility_id` VARCHAR(4) NOT NULL,
    `facility_name` VARCHAR(30) NULL,
    `open_time` TIME(0) NULL,
    `close_time` TIME(0) NULL,
    `explanation` TEXT NULL,

    PRIMARY KEY (`facility_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `reservation` (
    `reservation_id` INTEGER NOT NULL AUTO_INCREMENT,
    `facility_id` VARCHAR(4) NULL,
    `user_id` VARCHAR(8) NULL,
    `date` DATETIME(0) NULL,
    `day` DATE NULL,
    `start_time` TIME(0) NULL,
    `end_time` TIME(0) NULL,

    PRIMARY KEY (`reservation_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user` (
    `user_id` VARCHAR(8) NOT NULL,
    `user_name` VARCHAR(20) NULL,
    `class_id` VARCHAR(5) NULL,
    `group_id` VARCHAR(30) NULL,
    `password` VARCHAR(20) NULL,

    PRIMARY KEY (`user_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
