# Formule DAX - Dashboard Vendite

Questo documento contiene tutte le misure DAX utilizzate nella dashboard Power BI per l'analisi delle vendite.

## Misure Principali

### Vendite Totali
Calcola il valore totale delle vendite sommando tutte le quantità totali.
```dax
Vendite Totali = SUM('public dati_vendite'[quantita_totale])
```

### Profitto Totale
Calcola il profitto complessivo generato dalle vendite.
```dax
Profitto Totale = SUM('public dati_vendite'[profitto])
```

### Sconto Totale
Calcola l'importo totale degli sconti applicati alle transazioni.
```dax
Sconto Totale = SUM('public dati_vendite'[sconto_applicato])
```

### Ordini Totali
Conta il numero distinto di transazioni effettuate.
```dax
Ordini Totali = DISTINCTCOUNT('public dati_vendite'[id_transazione])
```

### Valore Medio Ordine
Calcola il valore medio per ogni ordine dividendo le vendite totali per il numero di ordini.
```dax
Valore Medio Ordine = DIVIDE([Vendite Totali], [Ordini Totali], 0)
```

## Note
- Tutte le misure sono calcolate sulla tabella `dati_vendite`
- La funzione `DIVIDE` nella misura Valore Medio Ordine include la gestione della divisione per zero (restituisce 0)
- Le misure sono sensibili ai filtri applicati nella dashboard (paese, data, categoria, etc.)
