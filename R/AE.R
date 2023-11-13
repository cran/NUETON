#' Calculate Agronomic Efficiency
#' @description
#' The contribution of fertilizer N towards yield, compared to a non-fertilized control
#' Calculate AE using the formula: AE = (YieldF-Yield0)/FertN
#' @param YieldF A numeric vector for yield in fertilized Conditions.
#' @param Yield0 A numeric vector of non-fertilized control yield values.
#' @param FertN The value of inorganic N contained in any form of N input (from synthetic or organic sources)
#' @param PE Physiological Efficiency numeric value
#' @param RE Recovery Efficiency numeric value
#' @returns The calculated AE value.
#' @examples
#' YieldF <- c(2.92, 3.78, 4.68, 4.21)
#' Yield0 <- c(1.98, 2.66, 4.26, 3.78)
#' FertN <- 15
#' AE(YieldF, Yield0, FertN)
#' PE<-10
#' RE<-5
#' AE(PE=PE, RE=RE)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Dobermann, A. (2007). “Nutrient use efficiency–measurement and management,”
#' in Proceedings of the International Fertilizer Industry Association (IFA) Workshop on Fertilizer Best Management Practices, 7–9 March 2007, Brussels, 1–28.
#' @export


AE <- function(YieldF=NULL, Yield0=NULL, FertN=NULL, PE=NULL, RE=NULL) {
  if (!is.null(YieldF) && !is.null(Yield0) && !is.null(FertN)) {
    if (length(Yield0) == 0) {
      stop("The 'Yield0' vector should not be empty.")
    }
    if (length(YieldF) == 0) {
      stop("The 'YieldF' vector should not be empty.")
    }
    if (FertN == 0) {
      stop("The 'FertN' value should not be zero.")
    }
    AE <- (mean(YieldF)-mean(Yield0)) / FertN
  } else if (!is.null(PE) && !is.null(RE)) {
    AE <- PE * RE
  } else {
    stop("Please provide either YieldF, Yield0 and FertN or PE and RE.")
  }
  return(AE)
}
