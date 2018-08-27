## --------------------------- parameter values ----------------------------- ##
df_all_parameter_settings_v1 <- data.frame(
  Title = "duo_clustering_all_parameter_settings_v1",
  Description = "Hyperparameter values used for all clustering algorithms and data sets in v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = NA,
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = NA,
  TaxonomyId = NA,
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "list",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/parameter_settings/all_parameter_settings_v1.rds",
  stringsAsFactors = FALSE
)
df_all_parameter_settings_v2 <- data.frame(
  Title = "duo_clustering_all_parameter_settings_v2",
  Description = "Hyperparameter values used for all clustering algorithms and data sets in v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = NA,
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = NA,
  TaxonomyId = NA,
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "list",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/parameter_settings/all_parameter_settings_v2.rds",
  stringsAsFactors = FALSE
)
## ------------------------------- full_Koh --------------------------------- ##
df_sce_full_Koh <- data.frame(
  Title = "sce_full_Koh",
  Description = "Gene counts for scRNA-seq data set of in vitro cultured H7 embryonic stem cells (WiCell) and H7-derived downstream early mesoderm progenitors. All genes except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/sra?term=SRP073808",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "SRA (SRP073808), Koh et al. (2016)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_Koh.rds",
  stringsAsFactors = FALSE
)

## -------------------------- filteredExpr10_Koh ---------------------------- ##
df_sce_filteredExpr10_Koh <- data.frame(
  Title = "sce_filteredExpr10_Koh",
  Description = "Gene counts for scRNA-seq data set of in vitro cultured H7 embryonic stem cells (WiCell) and H7-derived downstream early mesoderm progenitors. The top 10% genes with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/sra?term=SRP073808",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "SRA (SRP073808), Koh et al. (2016)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_Koh.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Koh_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Koh_v1",
  Description = "Clustering results for sce_filteredExpr10_Koh, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Koh_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Koh_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Koh_v2",
  Description = "Clustering results for sce_filteredExpr10_Koh, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Koh_v2.rds",
  stringsAsFactors = FALSE
)
## -------------------------- filteredHVG10_Koh ----------------------------- ##
df_sce_filteredHVG10_Koh <- data.frame(
  Title = "sce_filteredHVG10_Koh",
  Description = "Gene counts for scRNA-seq data set of in vitro cultured H7 embryonic stem cells (WiCell) and H7-derived downstream early mesoderm progenitors. The top 10% most highly variable genes are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/sra?term=SRP073808",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "SRA (SRP073808), Koh et al. (2016)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_Koh.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Koh_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Koh_v1",
  Description = "Clustering results for sce_filteredHVG10_Koh, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Koh_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Koh_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Koh_v2",
  Description = "Clustering results for sce_filteredHVG10_Koh, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Koh_v2.rds",
  stringsAsFactors = FALSE
)
## ------------------------- filteredM3Drop10_Koh --------------------------- ##
df_sce_filteredM3Drop10_Koh <- data.frame(
  Title = "sce_filteredM3Drop10_Koh",
  Description = "Gene counts for scRNA-seq data set of in vitro cultured H7 embryonic stem cells (WiCell) and H7-derived downstream early mesoderm progenitors. The top 10% genes ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/sra?term=SRP073808",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "SRA (SRP073808), Koh et al. (2016)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_Koh.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Koh_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Koh_v1",
  Description = "Clustering results for sce_filteredM3Drop10_Koh, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Koh_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Koh_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Koh_v2",
  Description = "Clustering results for sce_filteredM3Drop10_Koh, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Koh_v2.rds",
  stringsAsFactors = FALSE
)
## ----------------------------- full_KohTCC -------------------------------- ##
df_sce_full_KohTCC <- data.frame(
  Title = "sce_full_KohTCC",
  Description = "TCC counts for scRNA-seq data set of in vitro cultured H7 embryonic stem cells (WiCell) and H7-derived downstream early mesoderm progenitors. All TCCs except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/sra?term=SRP073808",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "SRA (SRP073808), Koh et al. (2016)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_KohTCC.rds",
  stringsAsFactors = FALSE
)

## ------------------------ filteredExpr10_KohTCC --------------------------- ##
df_sce_filteredExpr10_KohTCC <- data.frame(
  Title = "sce_filteredExpr10_KohTCC",
  Description = "TCC counts for scRNA-seq data set of in vitro cultured H7 embryonic stem cells (WiCell) and H7-derived downstream early mesoderm progenitors. The top 10% TCCs with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/sra?term=SRP073808",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "SRA (SRP073808), Koh et al. (2016)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_KohTCC.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_KohTCC_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_KohTCC_v1",
  Description = "Clustering results for sce_filteredExpr10_KohTCC, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_KohTCC_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_KohTCC_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_KohTCC_v2",
  Description = "Clustering results for sce_filteredExpr10_KohTCC, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_KohTCC_v2.rds",
  stringsAsFactors = FALSE
)
## ------------------------ filteredHVG10_KohTCC ---------------------------- ##
df_sce_filteredHVG10_KohTCC <- data.frame(
  Title = "sce_filteredHVG10_KohTCC",
  Description = "TCC counts for scRNA-seq data set of in vitro cultured H7 embryonic stem cells (WiCell) and H7-derived downstream early mesoderm progenitors. The top 10% most highly variable TCCs are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/sra?term=SRP073808",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "SRA (SRP073808), Koh et al. (2016)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_KohTCC.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_KohTCC_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_KohTCC_v1",
  Description = "Clustering results for sce_filteredHVG10_KohTCC, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_KohTCC_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_KohTCC_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_KohTCC_v2",
  Description = "Clustering results for sce_filteredHVG10_KohTCC, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_KohTCC_v2.rds",
  stringsAsFactors = FALSE
)
## ----------------------- filteredM3Drop10_KohTCC -------------------------- ##
df_sce_filteredM3Drop10_KohTCC <- data.frame(
  Title = "sce_filteredM3Drop10_KohTCC",
  Description = "TCC counts for scRNA-seq data set of in vitro cultured H7 embryonic stem cells (WiCell) and H7-derived downstream early mesoderm progenitors. The top 10% TCCs ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/sra?term=SRP073808",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "SRA (SRP073808), Koh et al. (2016)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_KohTCC.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_KohTCC_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_KohTCC_v1",
  Description = "Clustering results for sce_filteredM3Drop10_KohTCC, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_KohTCC_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_KohTCC_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_KohTCC_v2",
  Description = "Clustering results for sce_filteredM3Drop10_KohTCC, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_KohTCC_v2.rds",
  stringsAsFactors = FALSE
)
## ------------------------------ full_Kumar -------------------------------- ##
df_sce_full_Kumar <- data.frame(
  Title = "sce_full_Kumar",
  Description = "Gene counts for scRNA-seq data set of mESCs with various genetic perturbations, cultured in different media. All genes except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE60749",
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE60749), Kumar et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_Kumar.rds",
  stringsAsFactors = FALSE
)

## ------------------------- filteredExpr10_Kumar --------------------------- ##
df_sce_filteredExpr10_Kumar <- data.frame(
  Title = "sce_filteredExpr10_Kumar",
  Description = "Gene counts for scRNA-seq data set of mESCs with various genetic perturbations, cultured in different media. The top 10% genes with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE60749",
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE60749), Kumar et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_Kumar.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Kumar_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Kumar_v1",
  Description = "Clustering results for sce_filteredExpr10_Kumar, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Kumar_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Kumar_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Kumar_v2",
  Description = "Clustering results for sce_filteredExpr10_Kumar, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Kumar_v2.rds",
  stringsAsFactors = FALSE
)
## ------------------------- filteredHVG10_Kumar ---------------------------- ##
df_sce_filteredHVG10_Kumar <- data.frame(
  Title = "sce_filteredHVG10_Kumar",
  Description = "Gene counts for scRNA-seq data set of mESCs with various genetic perturbations, cultured in different media. The top 10% most highly variable genes are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE60749",
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE60749), Kumar et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_Kumar.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Kumar_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Kumar_v1",
  Description = "Clustering results for sce_filteredHVG10_Kumar, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Kumar_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Kumar_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Kumar_v2",
  Description = "Clustering results for sce_filteredHVG10_Kumar, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Kumar_v2.rds",
  stringsAsFactors = FALSE
)
## ------------------------ filteredM3Drop10_Kumar -------------------------- ##
df_sce_filteredM3Drop10_Kumar <- data.frame(
  Title = "sce_filteredM3Drop10_Kumar",
  Description = "Gene counts for scRNA-seq data set of mESCs with various genetic perturbations, cultured in different media. The top 10% genes ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE60749",
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE60749), Kumar et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_Kumar.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Kumar_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Kumar_v1",
  Description = "Clustering results for sce_filteredM3Drop10_Kumar, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Kumar_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Kumar_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Kumar_v2",
  Description = "Clustering results for sce_filteredM3Drop10_Kumar, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Kumar_v2.rds",
  stringsAsFactors = FALSE
)
## ---------------------------- full_KumarTCC ------------------------------- ##
df_sce_full_KumarTCC <- data.frame(
  Title = "sce_full_KumarTCC",
  Description = "TCC counts for scRNA-seq data set of mESCs with various genetic perturbations, cultured in different media. All TCCs except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE60749",
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE60749), Kumar et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_KumarTCC.rds",
  stringsAsFactors = FALSE
)

## ----------------------- filteredExpr10_KumarTCC -------------------------- ##
df_sce_filteredExpr10_KumarTCC <- data.frame(
  Title = "sce_filteredExpr10_KumarTCC",
  Description = "TCC counts for scRNA-seq data set of mESCs with various genetic perturbations, cultured in different media. The top 10% TCCs with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE60749",
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE60749), Kumar et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_KumarTCC.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_KumarTCC_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_KumarTCC_v1",
  Description = "Clustering results for sce_filteredExpr10_KumarTCC, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_KumarTCC_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_KumarTCC_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_KumarTCC_v2",
  Description = "Clustering results for sce_filteredExpr10_KumarTCC, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_KumarTCC_v2.rds",
  stringsAsFactors = FALSE
)
## ----------------------- filteredHVG10_KumarTCC --------------------------- ##
df_sce_filteredHVG10_KumarTCC <- data.frame(
  Title = "sce_filteredHVG10_KumarTCC",
  Description = "TCC counts for scRNA-seq data set of mESCs with various genetic perturbations, cultured in different media. The top 10% most highly variable TCCs are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE60749",
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE60749), Kumar et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_KumarTCC.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_KumarTCC_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_KumarTCC_v1",
  Description = "Clustering results for sce_filteredHVG10_KumarTCC, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_KumarTCC_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_KumarTCC_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_KumarTCC_v2",
  Description = "Clustering results for sce_filteredHVG10_KumarTCC, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_KumarTCC_v2.rds",
  stringsAsFactors = FALSE
)
## ---------------------- filteredM3Drop10_KumarTCC ------------------------- ##
df_sce_filteredM3Drop10_KumarTCC <- data.frame(
  Title = "sce_filteredM3Drop10_KumarTCC",
  Description = "TCC counts for scRNA-seq data set of mESCs with various genetic perturbations, cultured in different media. The top 10% TCCs ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE60749",
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE60749), Kumar et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_KumarTCC.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_KumarTCC_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_KumarTCC_v1",
  Description = "Clustering results for sce_filteredM3Drop10_KumarTCC, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_KumarTCC_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_KumarTCC_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_KumarTCC_v2",
  Description = "Clustering results for sce_filteredM3Drop10_KumarTCC, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_KumarTCC_v2.rds",
  stringsAsFactors = FALSE
)

## ---------------------------- full_Trapnell ------------------------------- ##
df_sce_full_Trapnell <- data.frame(
  Title = "sce_full_Trapnell",
  Description = "Gene counts for scRNA-seq data set of primary myoblasts over a time course of serum-induced differentiation. All genes except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE52529",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE52529), Trapnell et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_Trapnell.rds",
  stringsAsFactors = FALSE
)

## ----------------------- filteredExpr10_Trapnell -------------------------- ##
df_sce_filteredExpr10_Trapnell <- data.frame(
  Title = "sce_filteredExpr10_Trapnell",
  Description = "Gene counts for scRNA-seq data set of primary myoblasts over a time course of serum-induced differentiation. The top 10% genes with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE52529",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE52529), Trapnell et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_Trapnell.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Trapnell_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Trapnell_v1",
  Description = "Clustering results for sce_filteredExpr10_Trapnell, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Trapnell_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Trapnell_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Trapnell_v2",
  Description = "Clustering results for sce_filteredExpr10_Trapnell, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Trapnell_v2.rds",
  stringsAsFactors = FALSE
)
## ----------------------- filteredHVG10_Trapnell --------------------------- ##
df_sce_filteredHVG10_Trapnell <- data.frame(
  Title = "sce_filteredHVG10_Trapnell",
  Description = "Gene counts for scRNA-seq data set of primary myoblasts over a time course of serum-induced differentiation. The top 10% most highly variable genes are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE52529",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE52529), Trapnell et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_Trapnell.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Trapnell_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Trapnell_v1",
  Description = "Clustering results for sce_filteredHVG10_Trapnell, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Trapnell_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Trapnell_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Trapnell_v2",
  Description = "Clustering results for sce_filteredHVG10_Trapnell, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Trapnell_v2.rds",
  stringsAsFactors = FALSE
)
## ---------------------- filteredM3Drop10_Trapnell ------------------------- ##
df_sce_filteredM3Drop10_Trapnell <- data.frame(
  Title = "sce_filteredM3Drop10_Trapnell",
  Description = "Gene counts for scRNA-seq data set of primary myoblasts over a time course of serum-induced differentiation. The top 10% genes ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE52529",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE52529), Trapnell et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_Trapnell.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Trapnell_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Trapnell_v1",
  Description = "Clustering results for sce_filteredM3Drop10_Trapnell, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Trapnell_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Trapnell_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Trapnell_v2",
  Description = "Clustering results for sce_filteredM3Drop10_Trapnell, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Trapnell_v2.rds",
  stringsAsFactors = FALSE
)
## -------------------------- full_TrapnellTCC ------------------------------ ##
df_sce_full_TrapnellTCC <- data.frame(
  Title = "sce_full_TrapnellTCC",
  Description = "TCC counts for scRNA-seq data set of primary myoblasts over a time course of serum-induced differentiation. All TCCs except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE52529",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE52529), Trapnell et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_TrapnellTCC.rds",
  stringsAsFactors = FALSE
)

## --------------------- filteredExpr10_TrapnellTCC ------------------------- ##
df_sce_filteredExpr10_TrapnellTCC <- data.frame(
  Title = "sce_filteredExpr10_TrapnellTCC",
  Description = "TCC counts for scRNA-seq data set of primary myoblasts over a time course of serum-induced differentiation. The top 10% TCCs with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE52529",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE52529), Trapnell et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_TrapnellTCC.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_TrapnellTCC_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_TrapnellTCC_v1",
  Description = "Clustering results for sce_filteredExpr10_TrapnellTCC, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_TrapnellTCC_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_TrapnellTCC_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_TrapnellTCC_v2",
  Description = "Clustering results for sce_filteredExpr10_TrapnellTCC, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_TrapnellTCC_v2.rds",
  stringsAsFactors = FALSE
)
## --------------------- filteredHVG10_TrapnellTCC -------------------------- ##
df_sce_filteredHVG10_TrapnellTCC <- data.frame(
  Title = "sce_filteredHVG10_TrapnellTCC",
  Description = "TCC counts for scRNA-seq data set of primary myoblasts over a time course of serum-induced differentiation. The top 10% most highly variable TCCs are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE52529",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE52529), Trapnell et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_TrapnellTCC.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_TrapnellTCC_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_TrapnellTCC_v1",
  Description = "Clustering results for sce_filteredHVG10_TrapnellTCC, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_TrapnellTCC_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_TrapnellTCC_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_TrapnellTCC_v2",
  Description = "Clustering results for sce_filteredHVG10_TrapnellTCC, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_TrapnellTCC_v2.rds",
  stringsAsFactors = FALSE
)
## -------------------- filteredM3Drop10_TrapnellTCC ------------------------ ##
df_sce_filteredM3Drop10_TrapnellTCC <- data.frame(
  Title = "sce_filteredM3Drop10_TrapnellTCC",
  Description = "TCC counts for scRNA-seq data set of primary myoblasts over a time course of serum-induced differentiation. The top 10% TCCs ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "FASTQ",
  SourceUrl = "https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE52529",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "GEO (GSE52529), Trapnell et al. (2014)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_TrapnellTCC.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_TrapnellTCC_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_TrapnellTCC_v1",
  Description = "Clustering results for sce_filteredM3Drop10_TrapnellTCC, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_TrapnellTCC_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_TrapnellTCC_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_TrapnellTCC_v2",
  Description = "Clustering results for sce_filteredM3Drop10_TrapnellTCC, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCh38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_TrapnellTCC_v2.rds",
  stringsAsFactors = FALSE
)
## --------------------------- full_Zhengmix4eq ----------------------------- ##
df_sce_full_Zhengmix4eq <- data.frame(
  Title = "sce_full_Zhengmix4eq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, CD14 monocytes, naive cytotoxic T-cells and regulatory T-cells in equal proportions. All genes except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_Zhengmix4eq.rds",
  stringsAsFactors = FALSE
)

## ---------------------- filteredExpr10_Zhengmix4eq ------------------------ ##
df_sce_filteredExpr10_Zhengmix4eq <- data.frame(
  Title = "sce_filteredExpr10_Zhengmix4eq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, CD14 monocytes, naive cytotoxic T-cells and regulatory T-cells in equal proportions. The top 10% genes with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_Zhengmix4eq.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Zhengmix4eq_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Zhengmix4eq_v1",
  Description = "Clustering results for sce_filteredExpr10_Zhengmix4eq, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Zhengmix4eq_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Zhengmix4eq_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Zhengmix4eq_v2",
  Description = "Clustering results for sce_filteredExpr10_Zhengmix4eq, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Zhengmix4eq_v2.rds",
  stringsAsFactors = FALSE
)
## ---------------------- filteredHVG10_Zhengmix4eq ------------------------- ##
df_sce_filteredHVG10_Zhengmix4eq <- data.frame(
  Title = "sce_filteredHVG10_Zhengmix4eq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, CD14 monocytes, naive cytotoxic T-cells and regulatory T-cells in equal proportions. The top 10% most highly variable genes are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_Zhengmix4eq.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Zhengmix4eq_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Zhengmix4eq_v1",
  Description = "Clustering results for sce_filteredHVG10_Zhengmix4eq, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Zhengmix4eq_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Zhengmix4eq_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Zhengmix4eq_v2",
  Description = "Clustering results for sce_filteredHVG10_Zhengmix4eq, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Zhengmix4eq_v2.rds",
  stringsAsFactors = FALSE
)
## --------------------- filteredM3Drop10_Zhengmix4eq ----------------------- ##
df_sce_filteredM3Drop10_Zhengmix4eq <- data.frame(
  Title = "sce_filteredM3Drop10_Zhengmix4eq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, CD14 monocytes, naive cytotoxic T-cells and regulatory T-cells in equal proportions. The top 10% genes ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_Zhengmix4eq.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Zhengmix4eq_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Zhengmix4eq_v1",
  Description = "Clustering results for sce_filteredM3Drop10_Zhengmix4eq, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Zhengmix4eq_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Zhengmix4eq_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Zhengmix4eq_v2",
  Description = "Clustering results for sce_filteredM3Drop10_Zhengmix4eq, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Zhengmix4eq_v2.rds",
  stringsAsFactors = FALSE
)
## -------------------------- full_Zhengmix4uneq ---------------------------- ##
df_sce_full_Zhengmix4uneq <- data.frame(
  Title = "sce_full_Zhengmix4uneq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, CD14 monocytes, naive cytotoxic T-cells and regulatory T-cells in unequal proportions. All genes except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_Zhengmix4uneq.rds",
  stringsAsFactors = FALSE
)

## --------------------- filteredExpr10_Zhengmix4uneq ----------------------- ##
df_sce_filteredExpr10_Zhengmix4uneq <- data.frame(
  Title = "sce_filteredExpr10_Zhengmix4uneq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, CD14 monocytes, naive cytotoxic T-cells and regulatory T-cells in unequal proportions. The top 10% genes with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_Zhengmix4uneq.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Zhengmix4uneq_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Zhengmix4uneq_v1",
  Description = "Clustering results for sce_filteredExpr10_Zhengmix4uneq, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Zhengmix4uneq_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Zhengmix4uneq_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Zhengmix4uneq_v2",
  Description = "Clustering results for sce_filteredExpr10_Zhengmix4uneq, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Zhengmix4uneq_v2.rds",
  stringsAsFactors = FALSE
)
## --------------------- filteredHVG10_Zhengmix4uneq ------------------------ ##
df_sce_filteredHVG10_Zhengmix4uneq <- data.frame(
  Title = "sce_filteredHVG10_Zhengmix4uneq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, CD14 monocytes, naive cytotoxic T-cells and regulatory T-cells in unequal proportions. The top 10% most highly variable genes are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_Zhengmix4uneq.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Zhengmix4uneq_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Zhengmix4uneq_v1",
  Description = "Clustering results for sce_filteredHVG10_Zhengmix4uneq, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Zhengmix4uneq_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Zhengmix4uneq_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Zhengmix4uneq_v2",
  Description = "Clustering results for sce_filteredHVG10_Zhengmix4uneq, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Zhengmix4uneq_v2.rds",
  stringsAsFactors = FALSE
)
## -------------------- filteredM3Drop10_Zhengmix4uneq ---------------------- ##
df_sce_filteredM3Drop10_Zhengmix4uneq <- data.frame(
  Title = "sce_filteredM3Drop10_Zhengmix4uneq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, CD14 monocytes, naive cytotoxic T-cells and regulatory T-cells in unequal proportions. The top 10% genes ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_Zhengmix4uneq.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Zhengmix4uneq_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Zhengmix4uneq_v1",
  Description = "Clustering results for sce_filteredM3Drop10_Zhengmix4uneq, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Zhengmix4uneq_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Zhengmix4uneq_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Zhengmix4uneq_v2",
  Description = "Clustering results for sce_filteredM3Drop10_Zhengmix4uneq, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Zhengmix4uneq_v2.rds",
  stringsAsFactors = FALSE
)
## --------------------------- full_Zhengmix8eq ----------------------------- ##
df_sce_full_Zhengmix8eq <- data.frame(
  Title = "sce_full_Zhengmix8eq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, naive cytotoxic T-cells, CD14 monocytes, regulatory T-cells, CD56 NK cells, memory T-cells, CD4 T-helper cells and naive T-cells in approximately equal proportions. All genes except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_Zhengmix8eq.rds",
  stringsAsFactors = FALSE
)

## ---------------------- filteredExpr10_Zhengmix8eq ------------------------ ##
df_sce_filteredExpr10_Zhengmix8eq <- data.frame(
  Title = "sce_filteredExpr10_Zhengmix8eq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, naive cytotoxic T-cells, CD14 monocytes, regulatory T-cells, CD56 NK cells, memory T-cells, CD4 T-helper cells and naive T-cells in approximately equal proportions. The top 10% genes with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_Zhengmix8eq.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Zhengmix8eq_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Zhengmix8eq_v1",
  Description = "Clustering results for sce_filteredExpr10_Zhengmix8eq, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Zhengmix8eq_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_Zhengmix8eq_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_Zhengmix8eq_v2",
  Description = "Clustering results for sce_filteredExpr10_Zhengmix8eq, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_Zhengmix8eq_v2.rds",
  stringsAsFactors = FALSE
)
## ---------------------- filteredHVG10_Zhengmix8eq ------------------------- ##
df_sce_filteredHVG10_Zhengmix8eq <- data.frame(
  Title = "sce_filteredHVG10_Zhengmix8eq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, naive cytotoxic T-cells, CD14 monocytes, regulatory T-cells, CD56 NK cells, memory T-cells, CD4 T-helper cells and naive T-cells in approximately equal proportions. The top 10% most highly variable genes are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_Zhengmix8eq.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Zhengmix8eq_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Zhengmix8eq_v1",
  Description = "Clustering results for sce_filteredHVG10_Zhengmix8eq, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Zhengmix8eq_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_Zhengmix8eq_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_Zhengmix8eq_v2",
  Description = "Clustering results for sce_filteredHVG10_Zhengmix8eq, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_Zhengmix8eq_v2.rds",
  stringsAsFactors = FALSE
)
## --------------------- filteredM3Drop10_Zhengmix8eq ----------------------- ##
df_sce_filteredM3Drop10_Zhengmix8eq <- data.frame(
  Title = "sce_filteredM3Drop10_Zhengmix8eq",
  Description = "UMI counts for scRNA-seq data set consisting of sorted B-cells, naive cytotoxic T-cells, CD14 monocytes, regulatory T-cells, CD56 NK cells, memory T-cells, CD4 T-helper cells and naive T-cells in approximately equal proportions. The top 10% genes ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "TXT",
  SourceUrl = "https://support.10xgenomics.com/single-cell-gene-expression/datasets",
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "10x Genomics, Zheng et al (2017)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_Zhengmix8eq.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Zhengmix8eq_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Zhengmix8eq_v1",
  Description = "Clustering results for sce_filteredM3Drop10_Zhengmix8eq, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Zhengmix8eq_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_Zhengmix8eq_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_Zhengmix8eq_v2",
  Description = "Clustering results for sce_filteredM3Drop10_Zhengmix8eq, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "hg19",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Homo sapiens",
  TaxonomyId = "9606",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_Zhengmix8eq_v2.rds",
  stringsAsFactors = FALSE
)
## -------------------------- full_SimKumar4easy ---------------------------- ##
df_sce_full_SimKumar4easy <- data.frame(
  Title = "sce_full_SimKumar4easy",
  Description = "Gene counts for simulated scRNA-seq data set with four subpopulations. All genes except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_SimKumar4easy.rds",
  stringsAsFactors = FALSE
)

## --------------------- filteredExpr10_SimKumar4easy ----------------------- ##
df_sce_filteredExpr10_SimKumar4easy <- data.frame(
  Title = "sce_filteredExpr10_SimKumar4easy",
  Description = "Gene counts for simulated scRNA-seq data set with four subpopulations. The top 10% genes with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_SimKumar4easy.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_SimKumar4easy_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_SimKumar4easy_v1",
  Description = "Clustering results for sce_filteredExpr10_SimKumar4easy, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_SimKumar4easy_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_SimKumar4easy_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_SimKumar4easy_v2",
  Description = "Clustering results for sce_filteredExpr10_SimKumar4easy, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_SimKumar4easy_v2.rds",
  stringsAsFactors = FALSE
)
## --------------------- filteredHVG10_SimKumar4easy ------------------------ ##
df_sce_filteredHVG10_SimKumar4easy <- data.frame(
  Title = "sce_filteredHVG10_SimKumar4easy",
  Description = "Gene counts for simulated scRNA-seq data set with four subpopulations. The top 10% most highly variable genes are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_SimKumar4easy.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_SimKumar4easy_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_SimKumar4easy_v1",
  Description = "Clustering results for sce_filteredHVG10_SimKumar4easy, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_SimKumar4easy_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_SimKumar4easy_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_SimKumar4easy_v2",
  Description = "Clustering results for sce_filteredHVG10_SimKumar4easy, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_SimKumar4easy_v2.rds",
  stringsAsFactors = FALSE
)

## -------------------- filteredM3Drop10_SimKumar4easy ---------------------- ##
df_sce_filteredM3Drop10_SimKumar4easy <- data.frame(
  Title = "sce_filteredM3Drop10_SimKumar4easy",
  Description = "Gene counts for simulated scRNA-seq data set with four subpopulations. The top 10% genes ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_SimKumar4easy.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_SimKumar4easy_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_SimKumar4easy_v1",
  Description = "Clustering results for sce_filteredM3Drop10_SimKumar4easy, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_SimKumar4easy_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_SimKumar4easy_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_SimKumar4easy_v2",
  Description = "Clustering results for sce_filteredM3Drop10_SimKumar4easy, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_SimKumar4easy_v2.rds",
  stringsAsFactors = FALSE
)

## -------------------------- full_SimKumar4hard ---------------------------- ##
df_sce_full_SimKumar4hard <- data.frame(
  Title = "sce_full_SimKumar4hard",
  Description = "Gene counts for simulated scRNA-seq data set with four subpopulations. All genes except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_SimKumar4hard.rds",
  stringsAsFactors = FALSE
)

## --------------------- filteredExpr10_SimKumar4hard ----------------------- ##
df_sce_filteredExpr10_SimKumar4hard <- data.frame(
  Title = "sce_filteredExpr10_SimKumar4hard",
  Description = "Gene counts for simulated scRNA-seq data set with four subpopulations. The top 10% genes with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_SimKumar4hard.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_SimKumar4hard_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_SimKumar4hard_v1",
  Description = "Clustering results for sce_filteredExpr10_SimKumar4hard, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_SimKumar4hard_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_SimKumar4hard_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_SimKumar4hard_v2",
  Description = "Clustering results for sce_filteredExpr10_SimKumar4hard, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_SimKumar4hard_v2.rds",
  stringsAsFactors = FALSE
)
## --------------------- filteredHVG10_SimKumar4hard ------------------------ ##
df_sce_filteredHVG10_SimKumar4hard <- data.frame(
  Title = "sce_filteredHVG10_SimKumar4hard",
  Description = "Gene counts for simulated scRNA-seq data set with four subpopulations. The top 10% most highly variable genes are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_SimKumar4hard.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_SimKumar4hard_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_SimKumar4hard_v1",
  Description = "Clustering results for sce_filteredHVG10_SimKumar4hard, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_SimKumar4hard_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_SimKumar4hard_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_SimKumar4hard_v2",
  Description = "Clustering results for sce_filteredHVG10_SimKumar4hard, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_SimKumar4hard_v2.rds",
  stringsAsFactors = FALSE
)

## -------------------- filteredM3Drop10_SimKumar4hard ---------------------- ##
df_sce_filteredM3Drop10_SimKumar4hard <- data.frame(
  Title = "sce_filteredM3Drop10_SimKumar4hard",
  Description = "Gene counts for simulated scRNA-seq data set with four subpopulations. The top 10% genes ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_SimKumar4hard.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_SimKumar4hard_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_SimKumar4hard_v1",
  Description = "Clustering results for sce_filteredM3Drop10_SimKumar4hard, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_SimKumar4hard_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_SimKumar4hard_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_SimKumar4hard_v2",
  Description = "Clustering results for sce_filteredM3Drop10_SimKumar4hard, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_SimKumar4hard_v2.rds",
  stringsAsFactors = FALSE
)

## -------------------------- full_SimKumar8hard ---------------------------- ##
df_sce_full_SimKumar8hard <- data.frame(
  Title = "sce_full_SimKumar8hard",
  Description = "Gene counts for simulated scRNA-seq data set with eight subpopulations. All genes except those with zero counts across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_full/sce_full_SimKumar8hard.rds",
  stringsAsFactors = FALSE
)

## --------------------- filteredExpr10_SimKumar8hard ----------------------- ##
df_sce_filteredExpr10_SimKumar8hard <- data.frame(
  Title = "sce_filteredExpr10_SimKumar8hard",
  Description = "Gene counts for simulated scRNA-seq data set with eight subpopulations. The top 10% genes with the highest average expression across all cells are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredExpr10/sce_filteredExpr10_SimKumar8hard.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_SimKumar8hard_v1 <- data.frame(
  Title = "clustering_summary_filteredExpr10_SimKumar8hard_v1",
  Description = "Clustering results for sce_filteredExpr10_SimKumar8hard, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_SimKumar8hard_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredExpr10_SimKumar8hard_v2 <- data.frame(
  Title = "clustering_summary_filteredExpr10_SimKumar8hard_v2",
  Description = "Clustering results for sce_filteredExpr10_SimKumar8hard, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredExpr10_SimKumar8hard_v2.rds",
  stringsAsFactors = FALSE
)

## --------------------- filteredHVG10_SimKumar8hard ------------------------ ##
df_sce_filteredHVG10_SimKumar8hard <- data.frame(
  Title = "sce_filteredHVG10_SimKumar8hard",
  Description = "Gene counts for simulated scRNA-seq data set with eight subpopulations. The top 10% most highly variable genes are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredHVG10/sce_filteredHVG10_SimKumar8hard.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_SimKumar8hard_v1 <- data.frame(
  Title = "clustering_summary_filteredHVG10_SimKumar8hard_v1",
  Description = "Clustering results for sce_filteredHVG10_SimKumar8hard, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_SimKumar8hard_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredHVG10_SimKumar8hard_v2 <- data.frame(
  Title = "clustering_summary_filteredHVG10_SimKumar8hard_v2",
  Description = "Clustering results for sce_filteredHVG10_SimKumar8hard, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredHVG10_SimKumar8hard_v2.rds",
  stringsAsFactors = FALSE
)

## -------------------- filteredM3Drop10_SimKumar8hard ---------------------- ##
df_sce_filteredM3Drop10_SimKumar8hard <- data.frame(
  Title = "sce_filteredM3Drop10_SimKumar8hard",
  Description = "Gene counts for simulated scRNA-seq data set with eight subpopulations. The top 10% genes ranked by z-scores from the M3Drop package are retained.",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "SingleCellExperiment",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/data/sce_filteredM3Drop10/sce_filteredM3Drop10_SimKumar8hard.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_SimKumar8hard_v1 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_SimKumar8hard_v1",
  Description = "Clustering results for sce_filteredM3Drop10_SimKumar8hard, corresponding to v1 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_SimKumar8hard_v1.rds",
  stringsAsFactors = FALSE
)

df_res_filteredM3Drop10_SimKumar8hard_v2 <- data.frame(
  Title = "clustering_summary_filteredM3Drop10_SimKumar8hard_v2",
  Description = "Clustering results for sce_filteredM3Drop10_SimKumar8hard, corresponding to v2 of Duo et al (F1000Research 2018)",
  BiocVersion = "3.8",
  Genome = "GRCm38",
  SourceType = "rds",
  SourceUrl = NA,
  SourceVersion = NA,
  Species = "Mus musculus",
  TaxonomyId = "10090",
  Coordinate_1_based = NA,
  DataProvider = "Robinson group (UZH)",
  Maintainer = "Angelo Duo <angelo.duo@icloud.com>",
  RDataClass = "data.frame",
  DispatchClass = "Rds",
  RDataPath = "DuoClustering2018/output/clustering_summary_filteredM3Drop10_SimKumar8hard_v2.rds",
  stringsAsFactors = FALSE
)

## Combined meta-data
df_all <- base::rbind(
  df_all_parameter_settings_v1,
  df_all_parameter_settings_v2,
  df_sce_full_Koh,
  df_sce_filteredExpr10_Koh,
  df_sce_filteredHVG10_Koh,
  df_sce_filteredM3Drop10_Koh,
  df_sce_full_KohTCC,
  df_sce_filteredExpr10_KohTCC,
  df_sce_filteredHVG10_KohTCC,
  df_sce_filteredM3Drop10_KohTCC,
  df_sce_full_Kumar,
  df_sce_filteredExpr10_Kumar,
  df_sce_filteredHVG10_Kumar,
  df_sce_filteredM3Drop10_Kumar,
  df_sce_full_KumarTCC,
  df_sce_filteredExpr10_KumarTCC,
  df_sce_filteredHVG10_KumarTCC,
  df_sce_filteredM3Drop10_KumarTCC,
  df_sce_full_Trapnell,
  df_sce_filteredExpr10_Trapnell,
  df_sce_filteredHVG10_Trapnell,
  df_sce_filteredM3Drop10_Trapnell,
  df_sce_full_TrapnellTCC,
  df_sce_filteredExpr10_TrapnellTCC,
  df_sce_filteredHVG10_TrapnellTCC,
  df_sce_filteredM3Drop10_TrapnellTCC,
  df_sce_full_Zhengmix4eq,
  df_sce_filteredExpr10_Zhengmix4eq,
  df_sce_filteredHVG10_Zhengmix4eq,
  df_sce_filteredM3Drop10_Zhengmix4eq,
  df_sce_full_Zhengmix4uneq,
  df_sce_filteredExpr10_Zhengmix4uneq,
  df_sce_filteredHVG10_Zhengmix4uneq,
  df_sce_filteredM3Drop10_Zhengmix4uneq,
  df_sce_full_Zhengmix8eq,
  df_sce_filteredExpr10_Zhengmix8eq,
  df_sce_filteredHVG10_Zhengmix8eq,
  df_sce_filteredM3Drop10_Zhengmix8eq,
  df_sce_full_SimKumar4easy,
  df_sce_filteredExpr10_SimKumar4easy,
  df_sce_filteredHVG10_SimKumar4easy,
  df_sce_filteredM3Drop10_SimKumar4easy,
  df_sce_full_SimKumar4hard,
  df_sce_filteredExpr10_SimKumar4hard,
  df_sce_filteredHVG10_SimKumar4hard,
  df_sce_filteredM3Drop10_SimKumar4hard,
  df_sce_full_SimKumar8hard,
  df_sce_filteredExpr10_SimKumar8hard,
  df_sce_filteredHVG10_SimKumar8hard,
  df_sce_filteredM3Drop10_SimKumar8hard,
  df_res_filteredExpr10_Koh_v1,
  df_res_filteredHVG10_Koh_v1,
  df_res_filteredM3Drop10_Koh_v1,
  df_res_filteredExpr10_KohTCC_v1,
  df_res_filteredHVG10_KohTCC_v1,
  df_res_filteredM3Drop10_KohTCC_v1,
  df_res_filteredExpr10_Kumar_v1,
  df_res_filteredHVG10_Kumar_v1,
  df_res_filteredM3Drop10_Kumar_v1,
  df_res_filteredExpr10_KumarTCC_v1,
  df_res_filteredHVG10_KumarTCC_v1,
  df_res_filteredM3Drop10_KumarTCC_v1,
  df_res_filteredExpr10_Trapnell_v1,
  df_res_filteredHVG10_Trapnell_v1,
  df_res_filteredM3Drop10_Trapnell_v1,
  df_res_filteredExpr10_TrapnellTCC_v1,
  df_res_filteredHVG10_TrapnellTCC_v1,
  df_res_filteredM3Drop10_TrapnellTCC_v1,
  df_res_filteredExpr10_Zhengmix4eq_v1,
  df_res_filteredHVG10_Zhengmix4eq_v1,
  df_res_filteredM3Drop10_Zhengmix4eq_v1,
  df_res_filteredExpr10_Zhengmix4uneq_v1,
  df_res_filteredHVG10_Zhengmix4uneq_v1,
  df_res_filteredM3Drop10_Zhengmix4uneq_v1,
  df_res_filteredExpr10_Zhengmix8eq_v1,
  df_res_filteredHVG10_Zhengmix8eq_v1,
  df_res_filteredM3Drop10_Zhengmix8eq_v1,
  df_res_filteredExpr10_SimKumar4easy_v1,
  df_res_filteredHVG10_SimKumar4easy_v1,
  df_res_filteredM3Drop10_SimKumar4easy_v1,
  df_res_filteredExpr10_SimKumar4hard_v1,
  df_res_filteredHVG10_SimKumar4hard_v1,
  df_res_filteredM3Drop10_SimKumar4hard_v1,
  df_res_filteredExpr10_SimKumar8hard_v1,
  df_res_filteredHVG10_SimKumar8hard_v1,
  df_res_filteredM3Drop10_SimKumar8hard_v1,
  df_res_filteredExpr10_Koh_v2,
  df_res_filteredHVG10_Koh_v2,
  df_res_filteredM3Drop10_Koh_v2,
  df_res_filteredExpr10_KohTCC_v2,
  df_res_filteredHVG10_KohTCC_v2,
  df_res_filteredM3Drop10_KohTCC_v2,
  df_res_filteredExpr10_Kumar_v2,
  df_res_filteredHVG10_Kumar_v2,
  df_res_filteredM3Drop10_Kumar_v2,
  df_res_filteredExpr10_KumarTCC_v2,
  df_res_filteredHVG10_KumarTCC_v2,
  df_res_filteredM3Drop10_KumarTCC_v2,
  df_res_filteredExpr10_Trapnell_v2,
  df_res_filteredHVG10_Trapnell_v2,
  df_res_filteredM3Drop10_Trapnell_v2,
  df_res_filteredExpr10_TrapnellTCC_v2,
  df_res_filteredHVG10_TrapnellTCC_v2,
  df_res_filteredM3Drop10_TrapnellTCC_v2,
  df_res_filteredExpr10_Zhengmix4eq_v2,
  df_res_filteredHVG10_Zhengmix4eq_v2,
  df_res_filteredM3Drop10_Zhengmix4eq_v2,
  df_res_filteredExpr10_Zhengmix4uneq_v2,
  df_res_filteredHVG10_Zhengmix4uneq_v2,
  df_res_filteredM3Drop10_Zhengmix4uneq_v2,
  df_res_filteredExpr10_Zhengmix8eq_v2,
  df_res_filteredHVG10_Zhengmix8eq_v2,
  df_res_filteredM3Drop10_Zhengmix8eq_v2,
  df_res_filteredExpr10_SimKumar4easy_v2,
  df_res_filteredHVG10_SimKumar4easy_v2,
  df_res_filteredM3Drop10_SimKumar4easy_v2,
  df_res_filteredExpr10_SimKumar4hard_v2,
  df_res_filteredHVG10_SimKumar4hard_v2,
  df_res_filteredM3Drop10_SimKumar4hard_v2,
  df_res_filteredExpr10_SimKumar8hard_v2,
  df_res_filteredHVG10_SimKumar8hard_v2,
  df_res_filteredM3Drop10_SimKumar8hard_v2
)

## Save .csv file
write.csv(df_all, file = "../extdata/metadata.csv", row.names = FALSE)
