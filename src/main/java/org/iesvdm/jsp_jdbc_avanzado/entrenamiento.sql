CREATE DATABASE IF NOT EXISTS `baloncesto`
    DEFAULT CHARACTER SET utf8mb4
    COLLATE utf8mb4_spanish_ci;

USE `baloncesto`;

CREATE TABLE IF NOT EXISTS `entrenamiento` (
                                               `entrenamientoID` INT AUTO_INCREMENT PRIMARY KEY,
                                               `tipo` VARCHAR(40) COLLATE utf8mb4_spanish_ci NOT NULL,
                                               `ubicacion` VARCHAR(100) COLLATE utf8mb4_spanish_ci NOT NULL,
                                               `fecha` DATE NOT NULL
)
