% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NUEFC.R
\name{NUEFC}
\alias{NUEFC}
\title{Calculate NUE of a Food Chain (NUEFC)}
\usage{
NUEFC(Ncon, Ni)
}
\arguments{
\item{Ncon}{The value of N available for consumption}

\item{Ni}{Sum total of new N input}
}
\value{
The calculated NUEFC value.
}
\description{
The N balance of the entire food chain system, in terms of N consumed as protein relative to N inputs.
Calculate NUEFC using the formula: NUEFC = Ncon / Ni
}
\examples{
Ncon <- 15.574
Ni <- c(2.92, 3.78, 4.68, 4.21)
NUEFC(Ncon, Ni)
}
\references{
Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
https://doi.org/10.3389/fpls.2021.637108

Secondary: Erisman, J. W., Sutton, M. A., Galloway, J., Klimont, Z., and Winiwarter, W. (2008).
How a century of ammonia synthesis changed the world. Nat. Geosci. 1, 636–639. doi: 10.1038/ngeo325
}
