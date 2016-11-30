# Přehled využití parkovacích domů v Plzni
Skript sbírající informace o obsazenosti parkovacích domů ve správě Parking Plzeň (od 1. 1. 2017 PMDP). Pravidelně získá aktuální informace a uloží do databáze. Vizualizace bude doplněna časem.

## Instalace
- Nakopírujte obsah repozitory na server s podporou PHP a MySQL
- Vytvořte novou databázi v MySQL a spusťte nad ní skript na přípravu tabulek (*sql/structure.sql*)
- Přejmenujte *config-default.php* na *config.php*. Upravte v něm přístupové údaje k databázi a nastavte unikátní hash, který bude parametrem spuštění skriptu *download.php*, který se stará o stahování dat.
- Nastavte pravidelné spouštění tohoto skriptu. Např. v Linuxu přes *cron*. Hash je prvním parametrem na příkazové řádce nebo jako proměnná *hash* v URL, pokud chcete ke sběru přistupovat přes URL.

## Data
V databázi budou dvě tabulky, do kterých se ukládají data. Jedna pro parkovací dům Rychtářka, druhá pro Jízdeckou. Jednotlivé sloupce v tabulkách odpovídají hodnotám ve stahovaném XML.

## Jak to funguje
Stejně jako mobilní aplikace města si i my stahujeme XML s informacemi o využití parkovacích domů. XML jsou na následujících adresách:
- Rychtářka: [http://parking.parkingplzen.cz/rychtarka.xml](http://parking.parkingplzen.cz/rychtarka.xml)
- Jízdecká: [http://parking.parkingplzen.cz/jizdecka.xml](http://parking.parkingplzen.cz/jizdecka.xml)
