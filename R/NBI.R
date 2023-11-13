#' Calculate N Balance Intensity (NBI)
#' @description
#' The difference between fertilizer N applied and the N removed as yield;
#' commonly called N surplus.
#'
#' Calculate NBI using the formula: NBI = YieldN-FertN
#' @param YieldN A numeric vector of the N removed as yield values.
#' @param FertN A numeric value for fertilizer N input.
#' @returns The calculated NBI value.
#' @examples
#' YieldN <- c(5.4, 6.3, 4.8, 7.2)
#' FertN <- 1.5
#' NBI(YieldN, FertN)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: IPNI (2014). Nutrient Performance Indicators: The Importance of Farm Scale Assessments, Linked to Soil Fertility, Productivity, Environmental Impact and the Adoption of Grower Best Management Practices.
#' Available online at: http://anz.ipni.net/ipniweb/region/anz.nsf/0/9312A2172A0B917CCA257E8E007219B4/$FILE/IssueReviewPerfInd081114.pdf
#' @export


NBI <- function(YieldN, FertN) {
  if (length(YieldN) == 0) {
    stop("The 'YieldN' vector should not be empty.")
  }
  if (FertN == 0) {
    stop("The 'FertN' value should not be zero.")
  }
  NBI <- mean(YieldN)-FertN
  return(NBI)
}
