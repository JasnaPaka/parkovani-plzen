CREATE TABLE `rychtarka` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `datum` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
 `kapacita` int(11) DEFAULT NULL,
 `kp` int(11) DEFAULT NULL,
 `dp_bez_rezervace` int(11) DEFAULT NULL,
 `dp_rezervace` int(11) DEFAULT NULL,
 `volno` int(11) DEFAULT NULL,
 `volno_bez_prepoctu` int(11) DEFAULT NULL,
 `datum_aktualizace` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
 PRIMARY KEY (`id`),
 KEY `datum` (`datum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci

CREATE TABLE `jizdecka` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `datum` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
 `kapacita` int(11) DEFAULT NULL,
 `kp` int(11) DEFAULT NULL,
 `dp_bez_rezervace` int(11) DEFAULT NULL,
 `dp_rezervace` int(11) DEFAULT NULL,
 `volno` int(11) DEFAULT NULL,
 `volno_bez_prepoctu` int(11) DEFAULT NULL,
 `datum_aktualizace` varchar(255) COLLATE utf8_czech_ci DEFAULT NULL,
 PRIMARY KEY (`id`),
 KEY `datum` (`datum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci

