# Connectivity Map/LINCS Workshop

The [Connectivity Map (CMap)](https://clue.io) project at the [Broat Institute](http://www.broadinstitute.org) is focused on generating a public resource of high-dimensional perturbational signatures of cell state that can be leveraged to accelerate functional hypothesis generation. This project is part of a larger NIH-funded effort called the Library of Integrated Network-Based Cellular Signatures [(LINCS)](https://lincsproject.org/).

This repository contains notebooks from used in the Connectivity Map/LINCS 2020 workshop, hosted virtually on December 17 & 18, 2020. The notebooks will be reviewed during the workshop, but they are also posted here for reference. This repository will serve as a public resource of code demonstrating how to interact with and access CMap data stored in [Google BigQuery](https://cloud.google.com/bigquery), as well as other common formats such as [GCTx](https://clue.io/connectopedia/gctx_format).


# Content

The content in this repository is organized into a few sections, listed below.

## Data Access

CMap has generated a dataset of over 3M gene expression profiles. These data are stored in Google BigQuery in ortder to faciliate access to arbitrary subsets of the dataset. The notebooks in this section illustrate how to query and access these data using an API, and the [CMap BQ Toolkit](https://cmapbq.readthedocs.io/en/latest/setup-guide.html), written in python. 

## Analyzing Gene Expression Data

`notebooks/gene_expression`

In addition to BigQuery, CMap data are provided in the GCTx file format. GCTx files are annotated data matrices that support access to arbitrary subsets of the data matrix. The notebooks in this section illustrate how to parse GCTx files and perform common analyses on CMap data and metadata using the packages [cmapR](https://bioconductor.org/packages/release/bioc/html/cmapR.html) and [cmapPy](https://pypi.org/project/cmapPy/).

## Analyzing Cell Fitness Data

`notebooks/cell_fitness`

Similar to gene expression, there are ongoing efforts at the Broad Institute and other LINCS centers to generate perturbational signatures of cell fitness. The notebooks in this section contain exploratory analyses of perturbational cell viability data generated using the [PRISM](https://www.theprismlab.org/) assay.

# References

* Enache, Oana M., David L. Lahr, Ted E. Natoli, Lev Litichevskiy, David Wadden, Corey Flynn, Joshua Gould, Jacob K. Asiedu, Rajiv Narayan, and Aravind Subramanian. 2019. ["The GCTx Format and cmap{Py, R, M, J} Packages: Resources for Optimized Storage and Integrated Traversal of Annotated Dense Matrices."](http://dx.doi.org/10.1093/bioinformatics/bty784) Bioinformatics  35 (8): 1427–29.

* Subramanian, Aravind, Rajiv Narayan, Steven M. Corsello, David D. Peck, Ted E. Natoli, Xiaodong Lu, Joshua Gould, et al. 2017. ["A Next Generation Connectivity Map: L1000 Platform and the First 1,000,000 Profiles."](https://www.ncbi.nlm.nih.gov/pubmed/29195078) Cell 171 (6): 1437–52.e17.

* Yu, Channing, Aristotle M. Mannan, Griselda Metta Yvone, Kenneth N. Ross, Yan-Ling Zhang, Melissa A. Marton, Bradley R. Taylor, et al. 2016. ["High-Throughput Identification of Genotype-Specific Cancer Vulnerabilities in Mixtures of Barcoded Tumor Cell Lines."](http://dx.doi.org/10.1038/nbt.3460) Nature Biotechnology 34 (4): 419–23.
