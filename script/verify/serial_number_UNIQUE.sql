-- Vérifie qu'il n'y a pas de doublons pour serial_number
SELECT serial_number, COUNT(*)
FROM package
GROUP BY serial_number
HAVING COUNT(*) > 1;
