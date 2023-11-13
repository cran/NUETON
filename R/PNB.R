#' Calculate Partial N Balance
#' @description
#' The expression of plant N content per unit of fertilizer N applied
#' Calculate PNB using the formula: PNB = PlantNf/FertN
#' @param PlantNf Plant N content in fertilized conditons.
#' @param FertN A numeric value for fertilizer N input.
#' @returns The calculated PNB value.
#' @examples
#' PlantNf <- c(2.92, 3.78, 4.68, 4.21)
#' FertN <- 15
#' PNB(PlantNf, FertN)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Dobermann, A. (2007). “Nutrient use efficiency–measurement and management,”
#' in Proceedings of the International Fertilizer Industry Association (IFA) Workshop on Fertilizer Best Management Practices, 7–9 March 2007, Brussels, 1–28.
#' @export


PNB <- function(PlantNf, FertN) {
  if (length(PlantNf) == 0) {
    stop("The 'PlantNf' vector should not be empty.")
  }
  if (FertN == 0) {
    stop("The 'FertN' value should not be zero.")
  }
  PNB <- mean(PlantNf) / FertN
  return(PNB)
}
