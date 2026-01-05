-- Calcola il fatturato totale e il profitto totale per ogni paese
-- nel periodo selezionato
SELECT
    paese,
    SUM(quantita_totale) AS reddito_totale,
    SUM(profitto) AS profitto_totale
FROM dati_vendite
WHERE data BETWEEN '2025-01-31' AND '2025-02-28'
GROUP BY paese
ORDER BY reddito_totale DESC;

-- Individua i 5 prodotti con il maggior numero di unità vendute

SELECT
    nome_prodotto,
	categoria,
    SUM(quantita_totale) AS reddito_totale
FROM dati_vendite
GROUP BY nome_prodotto, categoria
ORDER BY reddito_totale DESC
LIMIT 5;

-- Mostra i 5 rappresentanti con il fatturato più alto

SELECT
    rappresentante_vendite,
    SUM(quantita_totale) AS vendite_totali
FROM dati_vendite
GROUP BY rappresentante_vendite
ORDER BY vendite_totali DESC
LIMIT 5;

-- Analizza quali località di negozio hanno generato il maggior fatturato e profitto

SELECT
    localita_negozio,
    SUM(quantita_totale) AS vendite_totali,
    SUM(profitto) AS profitto_totale
FROM dati_vendite
GROUP BY localita_negozio
ORDER BY vendite_totali DESC
LIMIT 5;

-- Fornisce statistiche chiave (min, max, media, totale) su fatturato e profitto nel periodo selezionato
SELECT
    ROUND(MIN(quantita_totale), 0) AS quantita_minima,
    ROUND(MAX(quantita_totale), 0) AS quantita_massima,
    ROUND(AVG(quantita_totale), 2) AS quantita_media,
    ROUND(SUM(quantita_totale), 0) AS quantita_totale,
    ROUND(MIN(profitto), 0) AS profitto_minimo,
    ROUND(MAX(profitto), 0) AS profitto_massimo,
    ROUND(AVG(profitto), 2) AS profitto_medio,
    ROUND(SUM(profitto), 0) AS profitto_totale
FROM dati_vendite;






