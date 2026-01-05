-- Svuota la tabella 
TRUNCATE TABLE vendite_canada;

-- Imposta il formato data in mese/giorno/anno per non creare problemi
SET DateStyle TO 'MDY';

-- Importa i nuovi dati
COPY vendite_canada (
    ID_Transazione,
    Data,
    Paese,
    ID_Prodotto,
    Nome_Prodotto,
    Categoria,
    Prezzo_per_Unita,
    Quantita_Acquistata,
    Prezzo_di_Costo,
    Sconto_Applicato,
    Metodo_di_Pagamento,
    Fascia_Eta_Cliente,
    Genere_Cliente,
    Localita_Negozio,
    Rappresentante_Vendite
) 
FROM 'C:\PostgreSQL_Data\SQL_PBI\vendite_Canada.csv' 
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- ========================================
-- IMPORT VENDITE CINA
-- ========================================
TRUNCATE TABLE vendite_cina;
SET DateStyle TO 'MDY';

COPY vendite_cina (
    ID_Transazione,
    Data,
    Paese,
    ID_Prodotto,
    Nome_Prodotto,
    Categoria,
    Prezzo_per_Unita,
    Quantita_Acquistata,
    Prezzo_di_Costo,
    Sconto_Applicato,
    Metodo_di_Pagamento,
    Fascia_Eta_Cliente,
    Genere_Cliente,
    Localita_Negozio,
    Rappresentante_Vendite
) 
FROM 'C:\PostgreSQL_Data\SQL_PBI\vendite_Cina.csv' 
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- ========================================
-- IMPORT VENDITE INDIA
-- ========================================
TRUNCATE TABLE vendite_india;
SET DateStyle TO 'MDY';

COPY vendite_india (
    ID_Transazione,
    Data,
    Paese,
    ID_Prodotto,
    Nome_Prodotto,
    Categoria,
    Prezzo_per_Unita,
    Quantita_Acquistata,
    Prezzo_di_Costo,
    Sconto_Applicato,
    Metodo_di_Pagamento,
    Fascia_Eta_Cliente,
    Genere_Cliente,
    Localita_Negozio,
    Rappresentante_Vendite
) 
FROM 'C:\PostgreSQL_Data\SQL_PBI\vendite_India.csv' 
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- ========================================
-- IMPORT VENDITE NIGERIA
-- ========================================
TRUNCATE TABLE vendite_nigeria;
SET DateStyle TO 'MDY';

COPY vendite_nigeria (
    ID_Transazione,
    Data,
    Paese,
    ID_Prodotto,
    Nome_Prodotto,
    Categoria,
    Prezzo_per_Unita,
    Quantita_Acquistata,
    Prezzo_di_Costo,
    Sconto_Applicato,
    Metodo_di_Pagamento,
    Fascia_Eta_Cliente,
    Genere_Cliente,
    Localita_Negozio,
    Rappresentante_Vendite
) 
FROM 'C:\PostgreSQL_Data\SQL_PBI\vendite_Nigeria.csv' 
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- ========================================
-- IMPORT VENDITE UK
-- ========================================
TRUNCATE TABLE vendite_uk;
SET DateStyle TO 'MDY';

COPY vendite_uk (
    ID_Transazione,
    Data,
    Paese,
    ID_Prodotto,
    Nome_Prodotto,
    Categoria,
    Prezzo_per_Unita,
    Quantita_Acquistata,
    Prezzo_di_Costo,
    Sconto_Applicato,
    Metodo_di_Pagamento,
    Fascia_Eta_Cliente,
    Genere_Cliente,
    Localita_Negozio,
    Rappresentante_Vendite
) 
FROM 'C:\PostgreSQL_Data\SQL_PBI\vendite_UK.csv' 
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- ========================================
-- IMPORT VENDITE US
-- ========================================
TRUNCATE TABLE vendite_us;
SET DateStyle TO 'MDY';

COPY vendite_us (
    ID_Transazione,
    Data,
    Paese,
    ID_Prodotto,
    Nome_Prodotto,
    Categoria,
    Prezzo_per_Unita,
    Quantita_Acquistata,
    Prezzo_di_Costo,
    Sconto_Applicato,
    Metodo_di_Pagamento,
    Fascia_Eta_Cliente,
    Genere_Cliente,
    Localita_Negozio,
    Rappresentante_Vendite
) 
FROM 'C:\PostgreSQL_Data\SQL_PBI\vendite_US.csv' 
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',');

