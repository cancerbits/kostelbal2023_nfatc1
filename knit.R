# this top-level script may be used to run (knit) the individual
# Rmd files

# set up output path for the reports
config <- yaml::read_yaml("config.yaml")
report_dir <- file.path(config$out_root)

rmarkdown::render(input = file.path(config$project_root, 'Rmd', '01_initial_look.rmd'),
                  output_dir = report_dir,
                  knit_root_dir = config$project_root,
                  envir = new.env())

rmarkdown::render(input = file.path(config$project_root, 'Rmd', '02_integration.rmd'),
                  output_dir = report_dir,
                  knit_root_dir = config$project_root,
                  envir = new.env())

rmarkdown::render(input = file.path(config$project_root, 'Rmd', '03_azimuth_annotation.rmd'),
                  output_dir = report_dir,
                  knit_root_dir = config$project_root,
                  envir = new.env())

rmarkdown::render(input = file.path(config$project_root, 'Rmd', '04_clonotypes.rmd'),
                  output_dir = report_dir,
                  knit_root_dir = config$project_root,
                  envir = new.env())

rmarkdown::render(input = file.path(config$project_root, 'Rmd', '05_DE_edgeR.rmd'),
                  output_dir = report_dir,
                  knit_root_dir = config$project_root,
                  envir = new.env())

rmarkdown::render(input = file.path(config$project_root, 'Rmd', '06_make_figures.rmd'),
                  output_dir = report_dir,
                  knit_root_dir = config$project_root,
                  envir = new.env())

rmarkdown::render(input = file.path(config$project_root, 'Rmd', '07_b_cell_analysis.rmd'),
                  output_dir = report_dir,
                  knit_root_dir = config$project_root,
                  envir = new.env())

rmarkdown::render(input = file.path(config$project_root, 'Rmd', '08_GSEA_with_selected_gene_sets.rmd'),
                  output_dir = report_dir,
                  knit_root_dir = config$project_root,
                  envir = new.env())
