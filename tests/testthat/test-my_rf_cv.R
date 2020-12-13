test_that("output is right type", {
  expect_is(my_rf_cv(5), "numeric")
})

test_that("wrong input will throw errors", {
  expect_error(my_rf_cv(list(c("penguins"))))
  expect_error(my_rf_cv(matrix(NA, nrow = 1)))
})
