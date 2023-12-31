% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NRE.R
\name{NRE}
\alias{NRE}
\title{Calculate Fertilizer-N Recovery Efficiency}
\usage{
NRE(PlantNf, PlantN0, FertN)
}
\arguments{
\item{PlantNf}{A numeric vector of values for plant N at the end of the experiment.}

\item{PlantN0}{A numeric vector of values for plant N at the beginning of the experiment.}

\item{FertN}{A numeric value for fertilizer N input.}
}
\value{
The calculated NRE value as a percentage.
}
\description{
The percentage of fertilizer N that is taken up by the plant,
accounting for background soil N levels; also sometimes referred to as apparent recovery.
Calculate NRE using the formula: NRE = ((PlantNf - PlantN0) / FertN) * 100
}
\examples{
PlantNf <- c(2.92, 3.78, 4.68, 4.21)
PlantN0 <- c(1.22, 2.66, 3.99, 2.58)
FertN <- 15
NRE(PlantNf, PlantN0, FertN)
}
\references{
Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
https://doi.org/10.3389/fpls.2021.637108

Secondary: Dobermann, A. (2007). “Nutrient use efficiency–measurement and management,”
in Proceedings of the International Fertilizer Industry Association (IFA) Workshop on Fertilizer Best Management Practices, 7–9 March 2007, Brussels, 1–28.
}
