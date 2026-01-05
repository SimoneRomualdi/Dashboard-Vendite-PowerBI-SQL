-- Elimino la tabella se esiste già (per reimportazioni)
DROP TABLE IF EXISTS dati_vendite;

-- Creo tabella unica con tutti i dati. Operazione possibile in quanto ogni tabella ha lo stesso numero di colonne e tipo di dato
CREATE TABLE dati_vendite AS
SELECT * FROM vendite_canada
UNION ALL
SELECT * FROM vendite_cina
UNION ALL
SELECT * FROM vendite_india
UNION ALL
SELECT * FROM vendite_nigeria
UNION ALL
SELECT * FROM vendite_uk
UNION ALL
SELECT * FROM vendite_us;

-- Verifico il risultato
SELECT 
    Paese,
    COUNT(*) as Numero_Transazioni
FROM dati_vendite
GROUP BY Paese
ORDER BY Paese;