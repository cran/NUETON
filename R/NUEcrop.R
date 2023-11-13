#' Calculate NUEcrop
#' @description
#' The fraction of fertilizer N that is utilized and allocated to yield N.
#' Calculate NUEcrop using the formula: NUEcrop = YieldN/FertN
#' @param YieldN A numeric vector of the N removed as yield values.
#' @param FertN A numeric value for fertilizer N input.
#' @returns The calculated NUEcrop value.
#' @examples
#' YieldN <- c(2.88, 4.54, 3.62, 4.21)
#' FertN <- 15
#' NUEcrop(YieldN, FertN)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Martinez-Feria, R. A., Castellano, M. J., Dietzel, R. N., Helmers, M. J., Liebman, M., Huber, I., et al. (2018).
#' Linking crop- and soil-based approaches to evaluate system nitrogen-use efficiency and tradeoffs. Agric. Ecosyst. Environ. 256, 131– 143. doi: 10.1016/j.agee.2018.01.002
#' @export


NUEcrop <- function(YieldN, FertN) {
  if (length(YieldN) == 0) {
    stop("The 'YieldN' vector should not be empty.")
  }
  if (FertN == 0) {
    stop("The 'FertN' value should not be zero.")
  }
  NUEcrop <- mean(YieldN) / FertN
  return(NUEcrop)
}
