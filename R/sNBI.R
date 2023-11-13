#' Calculate N Balance Index of a System (sNBI)
#' @description
#' The accumulation or reduction of soil N over a set time.
#' Calculate sNBI using the formula: sNBI = Ni - No - delSoilN
#' @param Ni Sum total of N inputs (enter each value individually)
#' @param No Sum total of N outputs (enter each value individually)
#' @param delSoilN Change in total soil N value
#' @returns The calculated ecoNUE value.
#' @examples
#' Ni <- c(2.92, 3.78, 4.68, 4.21)
#' No <- c(2.89, 3.66, 4.73, 4.16)
#' delSoilN <- 0.085
#' sNBI(Ni, No, delSoilN)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Sainju, U. M. (2017). Determination of nitrogen balance in agroecosystems.
#' MethodsX 4, 199–208. doi: 10.1016/j.mex.2017.06.001
#' @export


sNBI <- function(Ni, No, delSoilN) {
  sNBI <- sum(Ni) - sum(No) - delSoilN
  return(sNBI)
}
