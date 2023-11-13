#' Calculate Physiological Efficiency
#' @description
#' The contribution of fertilizer N from the plant tissues towards the yield component.
#' Calculate PE using the formula: PE = (YieldF-Yield0)/(PlantNf-PlantN0)
#'
#' @param YieldF A numeric vector of final yield values.
#' @param Yield0 A numeric vector of non-fertilized control yield values.
#' @param PlantNf A numeric vector of values for plant N at the end of the experiment.
#' @param PlantN0 A numeric vector of values for plant N at the beginning of the experiment.
#' @returns The calculated PE value.
#'
#' @examples
#' YieldF <- c(2.92, 3.78, 4.68, 4.21)
#' Yield0 <- c(1.98, 2.66, 4.26, 3.78)
#' PlantNf <- c(2.89, 3.66, 4.73, 4.16)
#' PlantN0 <- c(1.22, 2.66, 3.99, 2.58)
#' PE(YieldF, Yield0, PlantNf, PlantN0)
#'
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Dobermann, A. (2007). “Nutrient use efficiency–measurement and management,”
#' in Proceedings of the International Fertilizer Industry Association (IFA) Workshop on Fertilizer Best Management Practices, 7–9 March 2007, Brussels, 1–28.
#' @export


PE <- function(YieldF, Yield0, PlantNf, PlantN0) {
  if (length(PlantNf) == 0 || length(PlantN0) == 0 || length(YieldF) == 0 || length(Yield0) == 0) {
    stop("Inputs should not be empty.")
  }
  if (any(mean(PlantNf) < mean(PlantN0))) {
    stop("The mean of PlantNf should be greater than or equal to the mean of PlantN0.")
  }
  if (any(mean(YieldF) < mean(Yield0))) {
    stop("The mean of YieldF should be greater than or equal to the mean of Yield0.")
  }
  PE <- (mean(YieldF) - mean(Yield0)) / (mean(PlantNf) - mean(PlantN0))
  return(PE)
}
