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
