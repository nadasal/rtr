context("Calculates the correct hypotenuse")

test_that("Only accepts 'rtriangle' class objects", {

	x <- rtriangle(3, 4)
	class(x) <- "Not rtriangle"

	expect_error(hypotenuse(c(1,2)), "The class of this object is not compatible: cannot compute hypotenuse")
	expect_error(hypotenuse(x), "The class of this object is not compatible: cannot compute hypotenuse")

})

test_that("Calculates the correct hypotenuse", {

	a <- rtriangle(3, 4)
	b <- rtriangle(1, 2)
	c <- rtriangle(100, 100)
	d <- rtriangle(1.5, 3.2)

	expect_equal(hypotenuse(a), 5)
	expect_equal(hypotenuse(b), 2.236068)
	expect_equal(hypotenuse(c), 141.4213562)
	expect_equal(hypotenuse(d), 3.534119409)

})
