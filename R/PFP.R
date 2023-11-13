#' Calculate Partial-factor Productivity (PFP)
#' @description
#' The expression of yield per unit of fertilizer N applied.
#'
#' Calculate PFP using the formula: PFP = YieldF / FertN
#' @param YieldF A numeric vector of final yield values.
#' @param FertN A numeric value for fertilizer N input.
#' @returns The calculated PFP value.
#' @examples
#' YieldF <- c(12.09, 11.99, 15.20, 10.33)
#' FertN <- 15
#' PFP(YieldF, FertN)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Dobermann, A. (2007). “Nutrient use efficiency–measurement and management,”
#' in Proceedings of the International Fertilizer Industry Association (IFA)
#' Workshop on Fertilizer Best Management Practices, 7–9 March 2007, Brussels, 1–28.
#' @export


PFP <- function(YieldF, FertN) {
  if (length(YieldF) == 0) {
    stop("The 'YieldF' vector should not be empty.")
  }
  if (FertN == 0) {
    stop("The 'FertN' value should not be zero.")
  }
  PFP <- mean(YieldF) / FertN
  return(PFP)
}


