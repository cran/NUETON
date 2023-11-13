#' Calculate Total N derived from Fertilizer (TNdfF)
#' @description
#' The total quantity of plant or soil N that is derived from fertilizer
#' Calculate TNdfF using the formula: TNdfF = (NdfF/100) * Plant N or Soil N
#' @param NdfF N derived from Fertilizer expressed as a percentage.
#' @param PlantN A numeric vector of values for plant N content.
#' @param SoilN A numeric value for soil N content.
#' @returns The calculated TNdfF value.
#' @examples
#' NdfF <- 25.98333
#' SoilN <- 20
#' PlantN <- c(12.1, 8.99, 12.89, 13.11)
#' TNdfF(NdfF, PlantN)
#' TNdfF(NdfF, SoilN)
#' @references
#' Primary: Congreves, K. A., Otchere, O., Ferland, D., Farzadfar, S., Williams, S., & Arcand, M. M. (2021, June 4).
#' Nitrogen Use Efficiency Definitions of Today and Tomorrow. Frontiers in Plant Science, 12.
#' https://doi.org/10.3389/fpls.2021.637108
#'
#' Secondary: IAEA (1983). Guide on the Use of Nitrogen-15 and Radioisotopes in Studies of Plant Nutrition:
#' Calculations and Interpretation of Data. Vienna: IAEA.
#' @export


TNdfF <- function(NdfF, PlantN = NULL, SoilN = NULL) {
  if (!is.null(PlantN) && !is.null(SoilN)) {
    stop("Provide either PlantN or SoilN, not both.")
  }

  if (is.null(PlantN) && is.null(SoilN)) {
    stop("Provide either PlantN or SoilN.")
  }

  if (!is.null(PlantN)) {
    TNdfF <- (NdfF / 100) * mean(PlantN)
  } else {
    TNdfF <- (NdfF / 100) * SoilN
  }

  return(TNdfF)
}
