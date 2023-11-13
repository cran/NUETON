#' Calculate NUEyield
#' @description
#' The contribution of N supplied from the soil that is allocated to the yield N;
#' also often referred to as simply NUE.
#' Calculate NUEyield using the formula: NUEyield = NUpE * NUtE
#' @param NUpE N Uptake Efficiency
#' @param NUtE N Utilization Efficiency
#' @returns The calculated NUEyield value.
#' @examples
#' NUpE <- 33.63571
#' NUtE <- 1.009715
#' NUEyield(NUpE, NUtE)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Novoa, R., and Loomis, R. S. (1981).
#' Nitrogen and plant production. Plant Soil 58, 177–204. doi: 10.1007/BF02180053
#' @export


NUEyield <- function(NUpE, NUtE) {
  NUEyield <- NUpE * NUtE
  return(NUEyield)
}
