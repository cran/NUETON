#' Calculate Isotope-Based Recovery Efficiency of N-Fertlizer (NRE15)
#' @description
#' The percent recovery, or utilization, of fertilizer-N in plant and/or soil components
#' Calculate NRE15 using the formula: NRE15 = (TNdfF in Plant or Soil / FertN) * 100
#' @param TNdfF Total N derived from Fertilizer in plant or soil value.
#' @param FertN A numeric value for fertilizer N input.
#' @returns The calculated NRE15 value as a percentage.
#' @examples
#' TNdfF <- 3.058888
#' FertN <- 15
#' NRE15(TNdfF, FertN)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: IAEA (1983). Guide on the Use of Nitrogen-15 and Radioisotopes in Studies of Plant Nutrition:
#' Calculations and Interpretation of Data. Vienna: IAEA.
#' @export


NRE15 <- function(TNdfF, FertN) {
  if (TNdfF == 0 || FertN == 0) {
    stop("TNdfF and FertN should not be zero.")
  }
  NRE15 <- (TNdfF / FertN) * 100
  return(NRE15)
}
