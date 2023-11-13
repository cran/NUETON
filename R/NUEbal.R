#' Calculate NUEbalance
#' @description
#' The fraction of N inputs that are removed from the system (either as yield or N losses)
#' Calculate NUEbalance using the formula: NUEbal = No/Ni
#' @param No Sum total of N outputs (enter each value individually)
#' @param Ni Sum total of N inputs (enter each value individually)
#' @returns The calculated NUEbalance value.
#' @examples
#' No <- c(2.89, 3.66, 4.73, 4.16)
#' Ni <- c(2.92, 3.78, 4.68, 4.21)
#' NUEbal(No, Ni)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Martinez-Feria, R. A., Castellano, M. J., Dietzel, R. N., Helmers, M. J., Liebman, M., Huber, I., et al. (2018).
#' Linking crop- and soil-based approaches to evaluate system nitrogen-use efficiency and tradeoffs. Agric. Ecosyst. Environ. 256, 131– 143. doi: 10.1016/j.agee.2018.01.002
#' @export


NUEbal <- function(No, Ni) {
  if (length(No) == 0 || length(Ni) == 0) {
    stop("No and Ni vectors should not be empty.")
  }

  NUEbal <- sum(No) / sum(Ni)
  return(NUEbal)
}
