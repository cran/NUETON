#' Calculate N Harvest Index (NHI)
#' @description
#' The percent of plant tissue N that is contained in the yield component.
#' Calculate NHI using the formula: NHI = YieldF / PlantNf
#' @param YieldF A numeric vector of final yield values.
#' @param PlantNf A numeric value for plant tissue N.
#' @returns The calculated NHI value.
#' @examples
#' YieldF<- c(2.89, 3.66, 4.73, 4.16)
#' PlantNf <- c(2.92, 3.78, 4.68, 4.21)
#' NHI(YieldF, PlantNf)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Moll, R. H., Kamprath, E. J., and Jackson, W. A. (1982). Analysis and interpretation of factors which contribute to efficiency of nitrogen utilization
#' 1. Agron. J. 74, 562–564. doi: 10.2134/agronj1982.00021962007400030 037x

#' @export


NHI <- function(YieldF, PlantNf) {
  if (length(YieldF) == 0) {
    stop("The 'YieldF' vector should not be empty.")
  }
  if (length(PlantNf) == 0) {
    stop("The 'PlantNf' vector should not be empty.")
  }
  NHI <- (mean(YieldF) / mean(PlantNf)) * 100
  return(NHI)
}


