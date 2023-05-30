# Code repository for the analysis of single-cell RNA-seq data presented in Köstel Bal et al., Blood, 2023

Christoph Hafemeister and Florian Halbritter

St. Anna Children's Cancer Research Institute (CCRI), Vienna, Austria

**Abstract**

The NFAT family of transcription factors plays central roles in adaptive immunity in murine models, however, their contribution to human immune homeostasis remains poorly defined. In a multigenerational pedigree, we identified three patients carrying germline biallelic missense variants in NFATC1, presenting with recurrent infections, hypogammaglobulinemia and decreased antibody responses. The compound heterozygous NFATC1 variants identified in the patients caused decreased stability and reduced binding of DNA and interacting proteins. We observed defects in early activation and proliferation of T and B cells from these patients, amenable to reconstitution upon genetic rescue. Following stimulation, T-cell activation and proliferation were impaired, reaching that of healthy controls with delay indicative of an adaptive capacity of the cells. Assessment of the metabolic capacity of patient T cells, revealed that NFATc1-dysfunction rendered T cells unable to engage in glycolysis following stimulation, although oxidative metabolic processes were intact. We hypothesized that NFATc1-mutant T cells could compensate for the energy deficit due to defective glycolysis by enhanced lipid metabolism as an adaptation, leading to a
delayed, but not lost activation responses. Indeed, we observed increased 13C-labelled palmitate incorporation into citrate indicating higher fatty acid oxidation and we demonstrated that metformin and rosiglitazone improved patient T-cell effector functions. Collectively, enabled by our molecular dissection of NFATC1 mutations and extending the role of NFATc1 in human immunity beyond receptor signaling, and reveal evidence of metabolic plasticity in the context of impaired glycolysis observed in patient T cells to remedy delayed effector responses.

## Repository structure

* `project.Dockerfile` defines the environment used to carry out all experiments
* `config.yaml` is used to set paths 
* `R/` holds R function definitions and misc utility scripts
* `Rmd/` holds R markdown documents for the individual steps of the project
* `bash/` holds shell scripts to build and run the docker image, and to parse the config file
* `metadata/` holds custom geneset definitions

## Reproducing the results

The file `R/knit.R` calls all `Rmd/*.rmd` files in order to reproduce the analysis.

Paths in the `config.yaml` file starting with "/path/to/" will have to be set.

## Links

**Paper:** [*Blood* blood.2022018303](https://doi.org/10.1182/blood.2022018303)

**Data files:** Raw data files will be available at [The European Genome-phenome Archive (EGA)](https://ega-archive.org).
