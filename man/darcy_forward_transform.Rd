% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/darcy.R
\name{darcy_forward_transform}
\alias{darcy_forward_transform}
\title{Transform the forward data vector between natural and model scales}
\usage{
darcy_forward_transform(x, reverse = FALSE, ...)
}
\arguments{
\item{x}{Forward data vector.}

\item{reverse}{If \code{TRUE}, transform from model to natural scale; if \code{FALSE},
transform from natural to model scale.}
}
\value{
Transformed forward data vector.
}
\description{
Because Anchored Inversion requires the forward data vector to be
defined on the real line, i.e. \eqn{(-\infty, \infty)} (the "model scale"),
whereas the forward data in the application may reside in a different range
(the "natural scale", e.g. certain data elements may be positive by definition),
a transformation is needed between these two scales.
}
\details{
In the Darcy example application, the forward data are hydraulic heads
whose range are known because the value must lie between the two boundary
values, which are set by us (we set them to be 0 and 1).
We use a logit transformation between the natual and model scales.

In a real world application, all the forward data items may not be of the same nature.
Consequently, different elements of the forward data vector may need different
transformations. That would be an internal detail of the transformation function.

This transformation is applied on the forward data (either from actual measurement
or from running the forward model with a simulated field), which is on the natural scale,
before they are submitted to the Anchored Inversion server for model inference.
The inverse transformation can be useful for diagnostics.
On possible scenario is this: the forward model
may output the transformed forward data directly (ready to be submitted to the server),
but we want to reverse-transform them into the natual scales for comparison with
the field-measured forward data.
}
\seealso{
\code{\link{make_darcy_forward_function}}
}
