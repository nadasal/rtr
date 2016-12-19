context("Converts apropriate inputs to rtriangle class object")

test_that("Only accepts positive inputs", {

	expect_identical(class(rtriangle(3, 4)), "rtriangle")
	expect_error(rtriangle(0, 4), "Inputs must be positive")
	expect_error(rtriangle(-1, 3), "Inputs must be positive")

})

test_that("Only accepts numeric inputs", {

	expect_error(rtriangle("hello", 4), "Inputs must be numeric")
	expect_error(rtriangle(1, "hello"), "Inputs must be numeric")
	expect_error(rtriangle("hello", "goodbye"), "Inputs must be numeric")

})
