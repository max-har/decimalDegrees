test_that("extraction works", {
  expect_type(extract_degrees("11° 34 ' 19\""), "double")
  expect_error(extract_degrees(11, 34, 19))
  expect_equal(extract_degrees("11° 34 ' 19\""), 11)
  expect_error(extract_degrees("hello", "world", "!"), regexp = "unused arguments")
  expect_warning(extract_degrees("11 34 19"), "NAs introduced by coercion")
})
