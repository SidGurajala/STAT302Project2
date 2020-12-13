test_that("output is right type", {
  expect_is(my_rf_cv(5), "numeric")
  expect_is(my_rf_cv(10), "numeric")
  expect_is(my_rf_cv(100), "numeric")
})

test_that("wrong input will throw errors", {
  expect_error(my_rf_cv(list(c("penguins"))))
  expect_error(my_rf_cv(matrix(NA, nrow = 1)))
  expect_error(my_rf_cv(data.frame(NA)))
})
