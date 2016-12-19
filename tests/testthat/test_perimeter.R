context("Calculates the correct hypotenuse")

test_that("Only accepts 'rtriangle' class objects", {

	x <- rtriangle(3, 4)
	class(x) <- "Not rtriangle"

	expect_error(perimeter(c(1,2)), "The class of this object is not compatible: cannot compute perimeter")
	expect_error(perimeter(x), "The class of this object is not compatible: cannot compute perimeter")

})

test_that("Calculates the correct perimeter", {

	a <- rtriangle(3, 4)
	b <- rtriangle(1, 2)
	c <- rtriangle(100, 100)
	d <- rtriangle(1.5, 3.2)

	expect_equal(perimeter(a), 12)
	expect_equal(perimeter(b), 5.236068)
	expect_equal(perimeter(c), 341.4213562)
	expect_equal(perimeter(d), 8.234119409)

})
