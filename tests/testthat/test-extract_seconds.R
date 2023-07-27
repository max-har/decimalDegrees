test_that("extraction works", {
  expect_type(extract_seconds("11° 34 ' 19\""), "double")
  expect_error(extract_seconds(11, 34, 19), regexp = "unused arguments")
  expect_equal(extract_seconds("11° 34 ' 19\""), 19)
  expect_error(extract_seconds("hello", "world", "!"), regexp = "unused arguments")
  expect_warning(extract_seconds("11 34 19"), "NAs introduced by coercion")
})
