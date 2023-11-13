#' Calculate N derived from Fertilizer (NdfF)
#' @description
#' The percentage of plant or soil N that is derived from the fertilizer.
#' Calculate NdfF using the formula: NdfF = Plant15N/Fert15N
#' @param Plant15N A vector of 15N atom percent excess in plant or soil values.
#' @param Fert15N 15N atom percent excess of fertilizer N.
#' @returns The calculated NdfF value expressed as a percentage.
#' @examples
#' Plant15N <- c(2.92, 3.78, 4.68, 4.21)
#' Fert15N <- 15
#' NdfF(Plant15N, Fert15N)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: IAEA (1983). Guide on the Use of Nitrogen-15 and Radioisotopes in Studies of Plant Nutrition:
#' Calculations and Interpretation of Data. Vienna: IAEA.
#' @export


NdfF <- function(Plant15N, Fert15N) {
  if (length(Plant15N) == 0) {
    stop("The 'Plant15N' vector should not be empty.")
  }
  if (Fert15N == 0) {
    stop("The 'Fert15N' value should not be zero.")
  }
  NdfF <- (mean(Plant15N) / Fert15N) * 100
  return(NdfF)
}
