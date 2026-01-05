CREATE TABLE IF NOT EXISTS vendite_Canada (
	id_transazione VARCHAR(50) PRIMARY KEY,
	data DATE,
	paese VARCHAR(50),
	id_prodotto VARCHAR(50),
	nome_prodotto VARCHAR(50),
	categoria VARCHAR(50),
	prezzo_per_unita DECIMAL(10,2),
	quantita_acquistata INT,
	prezzo_di_costo  DECIMAL(10,2),
	sconto_applicato  DECIMAL(10,2),
	metodo_di_pagamento VARCHAR(50),
	fascia_eta_cliente VARCHAR(50),
	genere_cliente VARCHAR(50),
	localita_negozio VARCHAR(50),
	rappresentante_vendite VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS vendite_Cina (
	id_transazione VARCHAR(50)  PRIMARY KEY,
	data DATE,
	paese VARCHAR(50),
	id_prodotto VARCHAR(50),
	nome_prodotto VARCHAR(50),
	categoria VARCHAR(50),
	prezzo_per_unita DECIMAL(10,2),
	quantita_acquistata INT,
	prezzo_di_costo  DECIMAL(10,2),
	sconto_applicato  DECIMAL(10,2),
	metodo_di_pagamento VARCHAR(50),
	fascia_eta_cliente VARCHAR(50),
	genere_cliente VARCHAR(50),
	localita_negozio VARCHAR(50),
	rappresentante_vendite VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS vendite_India (
	id_transazione VARCHAR(50) PRIMARY KEY,
	data DATE,
	paese VARCHAR(50),
	id_prodotto VARCHAR(50),
	nome_prodotto VARCHAR(50),
	categoria VARCHAR(50),
	prezzo_per_unita DECIMAL(10,2),
	quantita_acquistata INT,
	prezzo_di_costo  DECIMAL(10,2),
	sconto_applicato  DECIMAL(10,2),
	metodo_di_pagamento VARCHAR(50),
	fascia_eta_cliente VARCHAR(50),
	genere_cliente VARCHAR(50),
	localita_negozio VARCHAR(50),
	rappresentante_vendite VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS vendite_Nigeria (
	id_transazione VARCHAR(50) PRIMARY KEY,
	data DATE,
	paese VARCHAR(50),
	id_prodotto VARCHAR(50),
	nome_prodotto VARCHAR(50),
	categoria VARCHAR(50),
	prezzo_per_unita DECIMAL(10,2),
	quantita_acquistata INT,
	prezzo_di_costo  DECIMAL(10,2),
	sconto_applicato  DECIMAL(10,2),
	metodo_di_pagamento VARCHAR(50),
	fascia_eta_cliente VARCHAR(50),
	genere_cliente VARCHAR(50),
	localita_negozio VARCHAR(50),
	rappresentante_vendite VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS vendite_UK (
	id_transazione VARCHAR(50) PRIMARY KEY,
	data DATE,
	paese VARCHAR(50),
	id_prodotto VARCHAR(50),
	nome_prodotto VARCHAR(50),
	categoria VARCHAR(50),
	prezzo_per_unita DECIMAL(10,2),
	quantita_acquistata INT,
	prezzo_di_costo  DECIMAL(10,2),
	sconto_applicato  DECIMAL(10,2),
	metodo_di_pagamento VARCHAR(50),
	fascia_eta_cliente VARCHAR(50),
	genere_cliente VARCHAR(50),
	localita_negozio VARCHAR(50),
	rappresentante_vendite VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS vendite_US (
	id_transazione VARCHAR(50) PRIMARY KEY,
	data DATE,
	paese VARCHAR(50),
	id_prodotto VARCHAR(50),
	nome_prodotto VARCHAR(50),
	categoria VARCHAR(50),
	prezzo_per_unita DECIMAL(10,2),
	quantita_acquistata INT,
	prezzo_di_costo  DECIMAL(10,2),
	sconto_applicato  DECIMAL(10,2),
	metodo_di_pagamento VARCHAR(50),
	fascia_eta_cliente VARCHAR(50),
	genere_cliente VARCHAR(50),
	localita_negozio VARCHAR(50),
	rappresentante_vendite VARCHAR(50)
);