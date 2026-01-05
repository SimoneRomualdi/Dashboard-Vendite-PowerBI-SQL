-- Conteggio di quanti sono i NULL per colonna;

SELECT 
    COUNT(*) - COUNT(ID_Transazione) as NULL_ID_Transazione,
    COUNT(*) - COUNT(Data) as NULL_Data,
    COUNT(*) - COUNT(Paese) as NULL_Paese,
    COUNT(*) - COUNT(ID_Prodotto) as NULL_ID_Prodotto,
    COUNT(*) - COUNT(Nome_Prodotto) as NULL_Nome_Prodotto,
    COUNT(*) - COUNT(Categoria) as NULL_Categoria,
    COUNT(*) - COUNT(Prezzo_per_Unita) as NULL_Prezzo_per_Unita,
    COUNT(*) - COUNT(Quantita_Acquistata) as NULL_Quantita_Acquistata,
    COUNT(*) - COUNT(Prezzo_di_Costo) as NULL_Prezzo_di_Costo,
    COUNT(*) - COUNT(Sconto_Applicato) as NULL_Sconto_Applicato,
    COUNT(*) - COUNT(Metodo_di_Pagamento) as NULL_Metodo_di_Pagamento,
    COUNT(*) - COUNT(Fascia_Eta_Cliente) as NULL_Fascia_Eta_Cliente,
    COUNT(*) - COUNT(Genere_Cliente) as NULL_Genere_Cliente,
    COUNT(*) - COUNT(Localita_Negozio) as NULL_Localita_Negozio,
    COUNT(*) - COUNT(Rappresentante_Vendite) as NULL_Rappresentante_Vendite
FROM dati_vendite
;

-- Check più specifico dei NULL;

SELECT * 
FROM dati_vendite
WHERE 
    ID_Transazione IS NULL
    OR Data IS NULL
    OR Paese IS NULL
    OR ID_Prodotto IS NULL
    OR Nome_Prodotto IS NULL
    OR Categoria IS NULL
    OR Prezzo_per_Unita IS NULL
    OR Quantita_Acquistata IS NULL
    OR Prezzo_di_Costo IS NULL
    OR Sconto_Applicato IS NULL
    OR Metodo_di_Pagamento IS NULL
    OR Fascia_Eta_Cliente IS NULL
    OR Genere_Cliente IS NULL
    OR Localita_Negozio IS NULL
    OR Rappresentante_Vendite IS NULL;

-- Update colonne vuote

UPDATE dati_vendite 
SET quantita_acquistata = 3
WHERE id_transazione = '00a30472-89a0-4688-9d33-67ea8ccf7aea';

UPDATE dati_vendite
SET prezzo_per_unita = (
	SELECT
		AVG(prezzo_per_unita)
	FROM dati_vendite
	WHERE nome_prodotto = 'Blood' 
	AND categoria = 'Sports' 
	AND prezzo_per_unita IS NOT NULL
) WHERE id_transazione = '001898f7-b696-4356-91dc-8f2b73d09c63'; -- Usato il prezzo medio dello stesso nome_prodotto e categoria


-- Check duplicati PK

SELECT 
	id_transazione,
	COUNT(*)
FROM dati_vendite
GROUP BY id_transazione
HAVING COUNT(*) > 1;

-- Aggiungo Colonna Quantita Totale
ALTER TABLE dati_vendite
ADD COLUMN Quantita_Totale NUMERIC(10,2);

-- Inserimento Dati nella nuova colonna quantita_totale
UPDATE dati_vendite
SET quantita_totale = 
	(prezzo_per_unita * quantita_acquistata) - sconto_applicato;

-- Aggiungo colonna Profitto
ALTER TABLE dati_vendite
ADD COLUMN profitto NUMERIC(10,2);

-- Inserimento Dati nella nuova colonna profitto
UPDATE dati_vendite
SET profitto = 
	quantita_totale - (prezzo_di_costo * quantita_acquistata);