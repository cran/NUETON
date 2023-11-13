#' Calculate NUE of a System (sNUE)
#' @description
#' The fraction of system N outputs that are captured as N yield rather than lost to the environment
#' Calculate sNUE using the formula: sNUE = (YieldN / (YieldN + Nloss))
#' @param YieldN Observed crop yield vector that is attributed to the nitrogen inputs in the system
#' @param Nloss The value of nitrogen that is lost from the system and not utilized by the crops.
#' @returns The calculated sNUE value.
#' @examples
#' YieldN <- c(5.4, 6.3, 4.8, 7.2)
#' Nloss <- 3.574
#' sNUE(YieldN, Nloss)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Martinez-Feria, R. A., Castellano, M. J., Dietzel, R. N., Helmers, M. J., Liebman, M., Huber, I., et al. (2018).
#' Linking crop- and soil-based approaches to evaluate system nitrogen-use efficiency and tradeoffs.
#' Agric. Ecosyst. Environ. 256, 131– 143. doi: 10.1016/j.agee.2018.01.002
#' @export


sNUE <- function(YieldN, Nloss) {
  if (length(YieldN) == 0 || any(YieldN + Nloss == 0)) {
    stop("YieldN vector should not be empty, the sum of YieldN and Nloss should not be zero.")
  }
  sNUE <- (mean(YieldN) / (mean(YieldN) + Nloss))
  return(sNUE)
}
