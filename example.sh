#!/usr/local/bin/Rscript

# generate dataset with certain seed
set.seed(1)
data <- dyntoy::generate_dataset(
  id = "specific_example/merlot",
  num_cells = 500,
  num_features = 200,
  model = "tree",
  normalise = FALSE
)

# add method specific args (if needed)
data$params <- list()
data$seed <- 1

# write example dataset to file
file <- commandArgs(trailingOnly = TRUE)[[1]]
dynutils::write_h5(data, file)
