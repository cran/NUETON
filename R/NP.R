#' Calculate Nitrogen Productivity (NP)
#' @description
#' The ratio of the relative growth rate to the concentration of N in plant tissues.
#' Calculate Nitrogen Productivity using the formula: NP = GR/PlantN
#' @param GR Plant relative growth rate value
#' @param PlantN A numeric vector of values for plant N concentration.
#' @returns The calculated NP value.
#' @examples
#' GR <- 15
#' PlantN <- c(12.1, 8.99, 12.89, 13.11)
#' NP(GR, PlantN)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Berendse, F., and Aerts, R. (1987).
#' Nitrogen-use-efficiency: a biologically meaningful definition? Funct. Ecol. 1, 293–296.
#' @export


NP <- function(GR, PlantN) {
  if (GR == 0 || length(PlantN) == 0) {
    stop("GR should not be zero and PlantN vector should not be empty.")
  }

  NP <- GR / mean(PlantN)
  return(NP)
}
