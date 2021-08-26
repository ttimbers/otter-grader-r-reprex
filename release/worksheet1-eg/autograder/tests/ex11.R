test = list(
  name = "ex11",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(nrow(penguins_csv), 344)
        })
        testthat::test_that('The penguins data set should have 8 columns', {
          testthat::expect_equal(ncol(penguins_csv), 8)
        })
        testthat::test_that('The column names of the penguins data set should be species, island, bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g, sex, and year', {
          testthat::expect_equal(paste(tolower(sort(colnames(penguins_csv))), collapse = ""), 'bill_depth_mmbill_length_mmbody_mass_gflipper_length_mmislandsexspeciesyear')
        })
        testthat::test_that('The bill_length_mm column contains incorrect values', {
          testthat::expect_equal(round(as.numeric(sum(penguins_csv$bill_length_mm, na.rm = TRUE))), 15021)
        })
      }
    )
  )
)