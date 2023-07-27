test_that("extraction works", {
  expect_type(extract_minutes("11° 34 ' 19\""), "double")
  expect_error(extract_minutes(11, 34, 19))
  expect_equal(extract_minutes("11° 34 ' 19\""), 34)
  expect_error(extract_minutes("hello", "world", "!"), regexp = "unused arguments")
  expect_warning(extract_minutes("11 34 19"), "NAs introduced by coercion")
})
