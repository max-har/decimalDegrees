test_that("conversion works", {
  expect_type(convert_dms_to_dd(11, 34, 19), "double")
  expect_type(convert_dms_to_dd("11", "34", "19"), "double")
  expect_match(as.character(convert_dms_to_dd(11, 34, 19)), "^11")
  expect_equal(convert_dms_to_dd("hello", "world", 42), NA_integer_)
  expect_warning(convert_dms_to_dd("hello", "world", 43), "NAs introduced by coercion")
})
