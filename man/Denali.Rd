% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{Denali}
\alias{Denali}
\title{Denali dataset}
\format{A list consisting of elements \code{data} (1D vector of length 2278)
    and \code{grid} (the "grid" definition).}
\source{
\url{http://seamless.usgs.gov}
}
\description{
1D elevation proile near Mt Denali.
}
\details{
This is a 1D, west-east elevation profile south of Mt McKinley
(or Denali). It can be used as synthetic 1D data.

The profile is south of Mt McKinley.
I avoided Mt McKinley because it would create a dominant peak,
making the profile less interesting.
The elevation data were downloaded from the National Map Seamless
Server, \url{http://seamless.usgs.gov},
National Elevation Dataset Alaska (NED) 2 Arc Second,
in `Grid Float' format, and read in using function \code{gridfloat}.
}
\keyword{data}
