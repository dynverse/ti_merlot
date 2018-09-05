set.seed(1)
data <- dyntoy::generate_dataset(
  id = "specific_example/merlot",
  num_cells = 500,
  num_features = 200,
  model = "tree"
)
params <- list(
  N_yk = 20
)
