#' Calculate N Utilization Efficiency (NUtE)
#' @description
#' The contribution of fertilizer N from the plant tissues towards the yield component.
#' Similar to PE, but does not account for background N.
#' Calculate NUtE using the formula: NUtE = Yield / PlantN
#' @param Yield A numeric vector of yield values.
#' @param PlantN A numeric value for plant tissue N.
#' @returns The calculated NUtE value.
#' @examples
#' Yield <- c(2.92, 3.78, 4.68, 4.21)
#' PlantN <- c(2.89, 3.66, 4.73, 4.16)
#' NUtE(Yield, PlantN)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Moll, R. H., Kamprath, E. J., and Jackson, W. A. (1982). Analysis and interpretation of factors which contribute to efficiency of nitrogen utilization
#' 1. Agron. J. 74, 562–564. doi: 10.2134/agronj1982.00021962007400030 037x
#' @export


NUtE <- function(Yield, PlantN) {
  if (length(Yield) == 0) {
    stop("The 'Yield' vector should not be empty.")
  }
  if (length(PlantN) == 0) {
    stop("The 'PlantN' vector should not be empty.")
  }
  NUtE <- mean(Yield) / mean(PlantN)
  return(NUtE)
}


