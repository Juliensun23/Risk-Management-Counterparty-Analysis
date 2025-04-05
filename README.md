# Risk-Management-Counterparty-Analysis (SQL + Excel)

# Présentation du projet

Ce projet a pour objectif de simuler une analyse de **risque de contrepartie**, en combinant la gestion de base de données SQL et la visualisation de données via Excel.

L'objectif est de reproduire les étapes clés du travail d'un analyste risques :
- Gestion et interrogation de bases de données MySQL,
- Analyse des contreparties risquées,
- Construction d'un dashboard de Risk Management dans Excel.

---

## Outils utilisés

- **MySQL** (gestion de base de données, requêtes SQL)
- **Microsoft Excel** (Tableaux Croisés Dynamiques, Graphiques)
- **GitHub** (documentation et partage du projet)

---

## Structure de la base de données (données fictives)

Deux tables ont été créées :

### 1. `counterparties`
| Nom de la colonne | Description |
|:------------------|:------------|
| `id_counterparty` | Identifiant unique de chaque contrepartie |
| `name` | Nom de l'entreprise |
| `sector` | Secteur économique |
| `country` | Pays de la contrepartie |

### 2. `exposures`
| Nom de la colonne | Description |
|:------------------|:------------|
| `id_counterparty` | Lien vers la contrepartie correspondante |
| `amount_due` | Montant de l'exposition (en €) |
| `amount_default` | Montant en défaut (en €) |
| `limit_authorized` | Limite de crédit autorisée (en €) |
| `date_exposure` | Date de l'exposition |
| `type_of_exposure` | Type d'exposition (Prêt, Dérivé, etc.) |


---

## Présentation du Dashboard (Excel)

Le dashboard comprend :
- **Diagramme circulaire** : Répartition des montants dus par secteur,
- **Histogramme** : Top 5+ des contreparties par montant en défaut,
- **Graphique en courbe** : Évolution mensuelle du montant des expositions,
- **Segments de filtre** : (Date d'exposition, Secteur).

---

## Principales requêtes SQL réalisées

- Identification des contreparties ayant dépassé leur limite autorisée,
- Agrégation des montants en défaut par secteur,
- Classement des contreparties les plus risquées,
- Analyse de l'évolution mensuelle des expositions.

---

## Contenu du projet

- `Counterparty_Risk.sql` ➔ Script SQL permettant de recréer la base de données et les tables utilisées dans ce projet.  
*(Le script est utile uniquement pour les utilisateurs souhaitant recréer la base sous MySQL. Les fichiers CSV sont également fournis pour une utilisation directe dans Excel.)*,
- `counterparties.csv` ➔ Données des contreparties,
- `exposures.csv` ➔ Données des expositions,
- `Counterparty_Analysis.xlsx` ➔ Fichier Excel complet avec dashboard et visualisations.

---
