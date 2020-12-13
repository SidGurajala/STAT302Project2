my_df <- my_penguins
my_df <- my_df %>%
  dplyr::select(c(species, bill_length_mm, bill_depth_mm,
           flipper_length_mm, body_mass_g))
my_df$species <- as.character(my_df$species)
my_df <- na.omit(my_df)
my_df_class <- my_df %>% dplyr::pull(species)
one_knn <- my_knn_cv(train = my_df, cl = "species", k_nn = 1, k_cv = 5)
five_knn <- my_knn_cv(train = my_df, cl = "species", k_nn = 5, k_cv = 5)

test_that("output classes are correct type", {
  expect_is(one_knn, "list")
  expect_is(one_knn$cv_error, "numeric")
  expect_is(one_knn$class, "factor")
})

test_that("wrong inputs throw errors", {
  expect_error(my_knn_cv(train = my_df, cl = "bad", k_nn = 1, k_cv = 5))
  expect_error(my_knn_cv(train = my_df, cl = "species", k_nn = "one", k_cv = 5))
  expect_error(my_knn_cv(train = my_df, cl = "species", k_nn = 1, k_cv = "two"))
  expect_error(my_knn_cv(train = my_df[[1]], cl = "species",
                         k_nn = 1, k_cv = 5))
})
