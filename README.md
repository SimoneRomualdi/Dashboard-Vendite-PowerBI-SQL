# 📊 Dashboard Vendite - Power BI & PostgreSQL

Dashboard interattiva per l'analisi delle vendite globali realizzata con Power BI e PostgreSQL. Il progetto analizza oltre 3.000 transazioni provenienti da 6 paesi con visualizzazioni geografiche, trend temporali e metriche di performance.

![Dashboard Preview](Dashboard_Screenshot.png)

## 🎯 Obiettivi del Progetto

Creare una soluzione completa di Business Intelligence che permetta di:
- Analizzare le performance di vendita per paese, categoria e periodo
- Monitorare KPI chiave (fatturato, profitto, valore medio ordine)
- Identificare i prodotti e rappresentanti più performanti
- Visualizzare trend temporali e distribuzioni geografiche

## 📈 Risultati Principali

- **Vendite Totali**: 4,14M €
- **Profitto Totale**: 959K €
- **Ordini Totali**: 3.000+
- **Valore Medio Ordine**: 1,38K €
- **Paesi Analizzati**: Canada, Cina, India, Nigeria, UK, US

## 🛠️ Tecnologie Utilizzate

- **Database**: PostgreSQL
- **Visualizzazione**: Power BI Desktop
- **Linguaggi**: SQL, DAX

## 📁 Struttura del Progetto
```
├── scripts/
│   ├── 00_creazione_tabelle.sql      # Creazione schema database
│   ├── 01_inserimento_dati.sql       # Import dati CSV
│   ├── 02_creazione_tabella_unica.sql # Consolidamento dati
│   ├── 03_data_cleaning.sql          # Pulizia e trasformazione
│   └── 04_business_insights.sql      # Query di analisi
├── Dashboard_Vendite.pbix            # File Power BI Dashboard
├── dashboard_preview.png             # Screenshot dashboard
├── Formule_DAX.md                    # Documentazione misure DAX
└── README.md                         # Questo file
```

## 🔑 Funzionalità Dashboard

### KPI Cards
- Vendite totali, profitto, sconti e numero ordini
- Valore medio per ordine

### Visualizzazioni
- **Mappa Interattiva**: Distribuzione vendite per località
- **Grafico Temporale**: Trend mensile delle vendite
- **Scatter Plot**: Correlazione sconto-profitto per negozio
- **Grafici a Torta**: Distribuzione per metodo di pagamento
- **Grafici a Barre**: Top categorie e analisi giornaliera

### Filtri Dinamici
- Paese
- Località negozio
- Categoria prodotto
- Metodo di pagamento
- Periodo temporale

## 💡 Competenze Dimostrate

- **SQL**: Query complesse, aggregazioni, window functions
- **Business Intelligence**: Creazione dashboard, storytelling con i dati
- **Data Analysis**: Identificazione insight e pattern nei dati
- **DAX**: Creazione misure calcolate per analisi avanzate
