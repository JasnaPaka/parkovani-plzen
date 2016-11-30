<?php

include_once "config.php";

function recordData ($table, $xml) {
	$conn = new mysqli(MYSQL_SERVER, MYSQL_USER, MYSQL_PASS, MYSQL_DB);
	if ($conn->connect_error) {
		die ("Pripojeni k databazi se nezdarilo.");
	}

	$sql = "INSERT INTO ".$table." (kapacita, kp, dp_bez_rezervace, dp_rezervace, volno, 
		volno_bez_prepoctu, datum_aktualizace) VALUES (?, ?, ?, ?, ?, ?, ?)";
	$stmt = $conn->prepare($sql);
	if (!$stmt) {
		die("Pri priprave dotazu do databaze nastala chyba: ".$conn->error);
	}

	$stmt->bind_param("iiiiiis", $xml->kapacita, $xml->kp, $xml->dp_bez_rezervace,
		$xml->dp_rezervace, $xml->volno, $xml->volno_bez_prepoctu, $xml->datum_aktualizace);

	$result = $stmt->execute();
	if (!$result) {
		die("Ulozeni do databaze se nezdarilo: ".$conn->error);
	}

	$stmt->close();
	$conn->close();
}

// Kontrola vstupního hash
$hash = filter_input(INPUT_GET, "hash", FILTER_SANITIZE_STRING);
if ($hash !== HASH) {
	die ("Nesouhlasi hash. Neni spusteno z webu?");
}

// Rychtářka
$content = simplexml_load_file(PARKING_RYCHTARKA);
if ($content === FALSE) {
	return;
} else {
	recordData("rychtarka", $content);
}

// Jízdecká
$content = simplexml_load_file(PARKING_JIZDECKA);
if ($content === FALSE) {
	return;
} else {
	recordData("jizdecka", $content);
}

