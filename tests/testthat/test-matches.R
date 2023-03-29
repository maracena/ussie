test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})


test_that("uss_make_matches works", {

  # use the function
  italy <- uss_make_matches(engsoccerdata::italy, "Italy")

  expect_true(tibble::is_tibble(italy))
  expect_identical(unique(italy$country),"Italy")
  expect_s3_class(italy$tier, "factor")
  expect_named(
    italy,
    c("country", "tier", "season", "date", "home", "visitor",
      "goals_home", "goals_visitor")
  )


})



