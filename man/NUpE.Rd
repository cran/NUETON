% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NUpE.R
\name{NUpE}
\alias{NUpE}
\title{Calculate N Uptake Efficiency (NUpE)}
\usage{
NUpE(PlantN, SoilN, FertN)
}
\arguments{
\item{PlantN}{A numeric vector of values for plant N content.}

\item{SoilN}{A numeric value for soil N content.}

\item{FertN}{A numeric value for fertilizer N input.}
}
\value{
The calculated NUpE value.
}
\description{
The percentage of available soil N that is utilized by the plant;
also conceptualized as apparent recovery efficiency of the N supply.
Calculate NUpE using the formula: NUpE = (PlantN / (FertN + SoilN)) * 100
}
\examples{
PlantN <- c(12.1, 8.99, 12.89, 13.11)
SoilN <- 20
FertN <- 15
NUpE(PlantN, SoilN, FertN)
}
\references{
Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
https://doi.org/10.3389/fpls.2021.637108

Secondary: Moll, R. H., Kamprath, E. J., and Jackson, W. A. (1982). Analysis and interpretation of factors which contribute to efficiency of nitrogen utilization
1. Agron. J. 74, 562–564. doi: 10.2134/agronj1982.00021962007400030 037x
}
