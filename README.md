# Dashboard Vendite Globali — Power BI & PostgreSQL

Sei paesi, 3.000+ transazioni, un unico problema: capire dove sta andando il business e perché. Questo progetto costruisce una dashboard interattiva che trasforma dati di vendita grezzi in una visione chiara delle performance globali, con SQL per la preparazione e Power BI per la narrazione visiva.

---

## Il Contesto

I dati arrivavano in sei file separati — uno per paese (Canada, Cina, India, Nigeria, UK, US) — con struttura identica ma caricati e gestiti in isolamento. Nessuna visione aggregata, nessun confronto cross-country, nessun KPI calcolato in modo coerente.

---

## Dal Dato Grezzo all'Insight

### Preparazione in SQL

Prima di costruire qualsiasi visualizzazione, i sei dataset vengono unificati e puliti in PostgreSQL:

- **Consolidamento** → Le sei tabelle vengono unite con `UNION ALL` in un'unica `dati_vendite`
- **Qualità dati** → Rilevati e corretti due record con valori mancanti: una quantità nulla aggiornata manualmente, un prezzo mancante imputato con la media del prodotto nella stessa categoria
- **Colonne derivate** → `quantita_totale` (prezzo × quantità − sconto) e `profitto` (ricavo − costo) calcolate e aggiunte come colonne persistenti

### La Dashboard

**4,14M € di vendite totali** analizzate lungo quattro dimensioni:

*Dove* → Mappa interattiva con distribuzione geografica delle vendite per paese e città

*Cosa* → Top 5 prodotti per fatturato, breakdown per categoria

*Chi* → Top 5 rappresentanti di vendita, performance per località negozio

*Quando* → Trend mensile delle vendite con filtro per periodo

I KPI principali — fatturato totale, profitto, ordini e valore medio ordine — sono visibili in header e aggiornati dinamicamente dai filtri.

---

## Una Scoperta Interessante

La correlazione tra sconto applicato e profitto per negozio, visualizzata nello scatter plot, mostra pattern non lineari: alcuni negozi con sconti elevati mantengono margini alti, altri con sconti bassi underperformano. Questo apre domande sul mix di prodotto e sul tipo di clientela — che richiederebbero dati aggiuntivi per essere investigate.

---

## Dashboard

![Dashboard Preview](Dashboard_Screenshot.png)

---

## Struttura della Repository

```
├── scripts/
│   ├── 00_creazione_tabelle.sql        # Creazione schema database
│   ├── 01_inserimento_dati.sql         # Import dati CSV
│   ├── 02_creazione_tabella_unica.sql  # Consolidamento dati
│   ├── 03_data_cleaning.sql            # Pulizia e trasformazione
│   └── 04_business_insights.sql        # Query di analisi
├── Dashboard_Vendite.pbix              # File Power BI
├── Dashboard_Screenshot.png            # Preview dashboard
├── Formule_DAX.md                      # Documentazione misure DAX
└── README.md
```

---

## Stack Tecnologico

- **PostgreSQL** — Consolidamento, pulizia e calcolo metriche
- **SQL** — ETL e query analitiche
- **Power BI** — Dashboard interattiva con filtri dinamici
- **DAX** — KPI cards e misure aggregate
