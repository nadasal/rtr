#' rtriangle Type Converter
#'
#' This contrived function creates to 'rtriangle' class objects
#' @usage rtriangle(base, height)
#' @param base a positive numeric
#' @param height a positive numeric
#'
#' @return rtriangle class object
#' @export
#'
#' @examples x <- rtriangle(3,4); class(x)

rtriangle <- function(base, height) {
	#Only compute for numerics, otherwise return an error
	if(!is.numeric(base) | !is.numeric(height)) stop("Inputs must be numeric")
	if(base <= 0 | height <= 0) stop("Inputs must be positive")
	#Set the class of the triangle
	structure(list(base = base, height = height), class = "rtriangle")
}

#' Hypotenuse Calculator
#'
#' This contrived function computes the hypotenuse of an 'rtriangle' class object
#' @usage hypotenuse(x)
#' @param x an rtriangle type object
#'
#' @return numeric
#' @export
#'
#' @examples x <- rtriangle(3,4); hypotenuse(x)

hypotenuse <- function(x)
{
	UseMethod("hypotenuse")
}

#Hypotenuse default method
hypotenuse.default <- function(x)
{
	stop("The class of this object is not compatible: cannot compute hypotenuse")
}

hypotenuse.rtriangle <- function(x)
{
	#Calculate the hypotenuse
	return(sqrt((x$base ^ 2) + (x$height ^ 2)))
}

#' Perimeter Calculator
#'
#' This contrived function computes the perimeter of an 'rtriangle' class object
#' @usage perimeter(x)
#' @param x an rtriangle type object
#'
#' @return numeric
#' @export
#'
#' @examples x <- rtriangle(3,4); perimeter(x)

perimeter <- function(x)
{
	UseMethod("perimeter")
}

#Perimeter default method
perimeter.default <- function(x)
{
	stop("The class of this object is not compatible: cannot compute perimeter")
}

perimeter.rtriangle <- function(x)
{
	#Calculate the perimeter
	hyp = hypotenuse(x)
	return(x$base + x$height + hyp)
}

#' Area Calculator
#'
#' This contrived function computes the area of an 'rtriangle' class object
#' @usage area(x)
#' @param x an rtriangle type object
#'
#' @return numeric
#' @export
#'
#' @examples x <- rtriangle(3,4); area(x)

area <- function(x)
{
	UseMethod("area")
}

#Hypotenuse default method
area.default <- function(x)
{
	stop("The class of this object is not compatible: cannot compute area")
}

area.rtriangle <- function(x)
{
	#Calculate the area
	return(x$base * x$height * 1/2)

}
