#' Calculate NUEecology
#' @description
#' The product of N productivity and the mean residency time (MRT) of plant N.
#' Calculate NUEecology using the formula: ecoNUE = NP * MRT
#' @param NP Nitrogen Productivity Value
#' @param MRT Mean Residency Time value
#' @returns The calculated ecoNUE value.
#' @examples
#' NP <- 33.63571
#' MRT <- 1.009715
#' ecoNUE(NP, MRT)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: Lambers, H., and Oliveira, R. S. (eds). (2019). “Mineral Nutrition,” in Plant Physiological Ecology.
#' Cham: Springer International Publishing, 301–384. doi: 10.1007/978-3-030-29639-1_9
#' @export


ecoNUE <- function(NP, MRT) {
  ecoNUE <- NP * MRT
  return(ecoNUE)
}
