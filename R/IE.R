#' Calculate Internal Efficiency (IE)
#' @description
#' The fraction of plant tissue N that is contained in the yield component.
#' Calculate IE using the formula: IE = YieldNF / PlantNf
#' @param YieldNF A numeric vector for yield N in fertilized Conditions.
#' @param PlantNf A numeric vector of non-fertilized control yield values.
#' @returns The calculated IE value.
#' @examples
#' YieldNF <- c(2.92, 3.78, 4.68, 4.21)
#' PlantNf <- c(2.89, 3.66, 4.73, 4.16)
#' IE(YieldNF, PlantNf)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Dobermann, A. (2007). “Nutrient use efficiency–measurement and management,”
#' in Proceedings of the International Fertilizer Industry Association (IFA)
#' Workshop on Fertilizer Best Management Practices, 7–9 March 2007, Brussels, 1–28.
#' @export


IE <- function(YieldNF, PlantNf) {
  if (length(YieldNF) == 0) {
    stop("The 'YieldNF' vector should not be empty.")
  }
  if (length(PlantNf) == 0) {
    stop("The 'PlantNf' vector should not be empty.")
  }
  IE <- mean(YieldNF) / mean(PlantNf)
  return(IE)
}


