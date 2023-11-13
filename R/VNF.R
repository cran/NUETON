#' Calculate Virtual N Factor (VNF)
#' @description
#' The portion of the N that is released to the environment during the food production process and is not contained in the food that is consumed
#' Calculate NUEFC using the formula: VNF = Nrec / Ncon
#' @param Ncon N in food item that is consumed
#' @param Nrec N used to produce food item that ends up recycled
#' @returns The calculated VNF value
#' @examples
#' Nrec <- 7.314
#' Ncon <- 15.574
#' VNF(Nrec, Ncon)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#' Secondary: Galloway, J. N., Winiwarter, W., Leip, A., Leach, A. M., Bleeker, A., and Erisman, J. W. (2014).
#' Nitrogen footprints: past, present and future. Environ. Res. Lett. 9:115003. doi: 10.1088/1748-9326/9/11/115003
#' @export


VNF <- function(Nrec, Ncon) {
  if (Ncon == 0 || Nrec == 0) {
    stop("Ncon and Nrec values should not be zero.")
  }
  VNF <- Nrec / Ncon
  return(VNF)
}
