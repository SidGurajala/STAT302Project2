set.seed(1000)
sample_data <- rnorm(1000, 12, 5)
sample_output <- my_t_test(sample_data, "two.sided", 10)

test_that("my_t_test returns a list", {
  expect_is(sample_output, "list")
})

test_that("my_t_test output is correct", {
  expect_type(sample_output[[1]], "double")
  expect_type(sample_output[[2]], "double")
  expect_type(sample_output[[3]], "character")
  expect_type(sample_output[[4]], "double")
  expect_equal(sample_output[[3]], "two.sided")
  expect_equal(sample_output[[2]], 999)
})

test_that("wrong kind of inputs throw errors", {
  expect_error(my_t_test(sample_data, 5, 12))
  expect_error(my_t_test(sample_data, "two.sided", "character"))
})

sample_output_2 <- my_t_test(sample_data, "less", 10)

test_that("my_t_test_2 output is correct", {
  expect_type(sample_output_2[[1]], "double")
  expect_type(sample_output_2[[2]], "double")
  expect_type(sample_output_2[[3]], "character")
  expect_type(sample_output_2[[4]], "double")
  expect_equal(sample_output_2[[3]], "less")
  expect_equal(sample_output_2[[2]], 999)
})

sample_output_3 <- my_t_test(sample_data, "greater", 10)

test_that("my_t_test_3 output is correct", {
  expect_type(sample_output_3[[1]], "double")
  expect_type(sample_output_3[[2]], "double")
  expect_type(sample_output_3[[3]], "character")
  expect_type(sample_output_3[[4]], "double")
  expect_equal(sample_output_3[[3]], "greater")
  expect_equal(sample_output_3[[2]], 999)
})
