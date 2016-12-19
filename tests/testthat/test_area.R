context("Calculates the correct hypotenuse")

test_that("Only accepts 'rtriangle' class objects", {

	x <- rtriangle(3, 4)
	class(x) <- "Not rtriangle"

	expect_error(area(c(1,2)), "The class of this object is not compatible: cannot compute area")
	expect_error(area(x), "The class of this object is not compatible: cannot compute area")

})

test_that("Calculates the correct area", {

	a <- rtriangle(3, 4)
	b <- rtriangle(1, 2)
	c <- rtriangle(100, 100)
	d <- rtriangle(1.5, 3.2)

	expect_equal(area(a), 6)
	expect_equal(area(b), 1)
	expect_equal(area(c), 5000)
	expect_equal(area(d), 2.4)

})
