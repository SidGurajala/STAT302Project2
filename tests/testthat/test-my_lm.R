lm_ex<- my_lm(my_penguins, bill_length_mm ~ bill_depth_mm + flipper_length_mm)

test_that("my lm output is a data frame", {
  expect_is(lm_ex,"data.frame")
})

test_that("my lm output has right components", {
  expect_is(lm_ex$Estimate, "numeric")
  expect_is(lm_ex$"Std. error", "numeric")
  expect_is(lm_ex$"t-value", "numeric")
  expect_is(lm_ex$"p-value", "NULL")
})

test_that("wrong input throws errors", {
  expect_error(my_lm("a", bill_length_mm ~ bill_depth_mm + flipper_length_mm))
  expect_error(my_lm(my_penguins, 2))
})
