# Lung Cancer Biomarker Analysis

**Project Title:** Identifying Diagnostic & Prognostic Biomarker Signatures in Lung Cancer  
**Author:** Yashkirat Singh  
**Date:** August 2023 - May 2024
**Repository:** lung-cancer-biomarker-analysis  

---

## Overview

This repository contains data, analyses, figures, and scripts from a research project that analyzed gene expression in protein interaction networks in small cell lung cancer (SCLC) and non-small cell lung cancer (NSCLC) to identify diagnostic and prognostic biomarker signatures. Public microarray datasets were retrieved from the Gene Expression Omnibus (GEO) and preprocessed for normalization. Differentially expressed genes (DEGs) were identified using fold-change analysis, with the top genes being further analyzed using gene set enrichment analysis (GSEA) and protein-protein interaction networks (ClueGO, STRING). Key dysregulated genes were identified associated with cell-cycle processes. The results were presented as a conference poster and include cleaned datasets, Cytoscape network files, survival analysis, and heatmaps. 

---

## Repository Structure
```
lung-cancer-biomarker-analysis/
│
├── data/ # Raw and processed data
│ ├── NSCLC/ # NSCLC-specific data
│ ├── SCLC/ # SCLC-specific data
│ ├── shared/ # Files used for both cancer types
│ └── references/ # Gene codes and GSE IDs
│
├── analysis/ # Cytoscape, ClueGO, survival models, interactomes
│ ├── NSCLC/ # NSCLC-specific analyses
│ ├── SCLC/ # SCLC-specific analyses
│ ├── interactomes/ # ClueGO and protein network interactomes
│ └── models/ # Cox model
│
├── figures/ # Exploratory and final plots, heatmaps, and final poster PDF
│
├── scripts/ # Analysis scripts (R Source files)
│
└── README.md # Project overview, structure, and file descriptions
```
---

## Data Description

This section summarizes the key datasets used in this repository and organized under the 'data/' folder.

### SCLC (Small Cell Lung Cancer)
- `fold_change_SCLC.xlsx`: Fold change calculations for SCLC genes along with the top 100 up- and down- regulated genes
- `threshold_genes_SCLC.xlsx`: Selected genes based on a threshold criteria of +- 1.5.
- `ClueGO_SCLC.xlsx`: Biological, molecular, and cellular processes involved with associated differentially expressed genes
- `SCLC_proteins.csv`: Protein interaction network data using combined scores
- `SCLC_heatmap.csv`: Data for heatmap creation for SCLC samples
- `SCLC_survival_data.csv`: Patient survival data

### NSCLC (Non-Small Cell Lung Cancer)
- `fold_change_NSCLC.xlsx`: Fold change calculations for NSCLC genes along with the top 100 up- and down- regulated genes
- `threshold_genes_NSCLC.xlsx`: Selected genes based on a threshold criteria of +- 1.
- `ClueGO_NSCLC.xlsx`: Biological, molecular, and cellular processes involved with associated differentially expressed genes
- `NSCLC_proteins.csv`: Protein interaction network data using combined scores
- `NSCLC_heatmap.csv`: Data for heatmap creation for SCLC samples
- `NSCLC_survival_data.csv`: Patient survival data

*Additional intermediate or shared datasets used across both analyses are stored in the `shared/` folder.*

### References
- `gene_code_mapping.txt`: Mapping of gene identifiers to standard gene symbols.  
- `GSE_IDs`: GSE IDs of GEO datasets that data was pulled from.

### Notes
- Only **final datasets** used for the poster are listed; preliminary or exploratory files are included in the repo but not listed individually.  
- All datasets are stored under the `data/` folder for clarity and easy navigation.

---

## Results Summary
- Eight dysregulated genes were identified that may aid in developing a biosignature for early detection in lung cancer.
- Top dysregulated genes were associated with multiple cell-cycle processes.
- Visual results include heatmaps and interactomes as presented in the final poster.

---

*This repository contains all final data, analyses, and figures from the project.*  
*For inquiries, contact Yash Singh at yashksingh43@gmail.com.*
