#' Calculate NUEsoil
#' @description
#' The biomass production per unit of available N.
#' Calculate NUEsoil using the formula: NUEsoil = PlantBM / (FertN + SoilN)
#' @param PlantBM A numeric vector of values for plant biomass.
#' @param SoilN A numeric value for soil N content.
#' @param FertN A numeric value for fertilizer N input.
#' @returns The calculated NUEsoil value.
#' @examples
#' PlantBM <- c(12.1, 8.99, 12.89, 13.11)
#' SoilN <- 20
#' FertN <- 15
#' NUEsoil(PlantBM, SoilN, FertN)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Moll, R. H., Kamprath, E. J., and Jackson, W. A. (1982). Analysis and interpretation of factors which contribute to efficiency of nitrogen utilization
#' 1. Agron. J. 74, 562–564. doi: 10.2134/agronj1982.00021962007400030 037x
#' @export


NUEsoil <- function(PlantBM, SoilN, FertN) {
  if (length(PlantBM) == 0 || SoilN + FertN == 0) {
    stop("PlantBM vector should not be empty, the sum of SoilN and FertN should not be zero.")
  }
  NUEsoil <- mean(PlantBM) / (FertN + SoilN)
  return(NUEsoil)
}
