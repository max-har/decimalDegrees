#' Convert Degrees Minutes Seconds (DMS) to Decimal Degrees (DD)
#'
#' @param degrees The degree value from DMS data
#' @param minutes The minutes value from DMS data
#' @param seconds The seconds value from DMS data
#'
#' @return The corresponding DD value
#' @export
#'
#' @examples convert_dms_to_dd(11, 34, 19)
convert_dms_to_dd <- function(degrees, minutes, seconds) {
  decimal <- as.numeric(degrees) + (as.numeric(minutes) / 60) + (as.numeric(seconds) / 3600)
  return(decimal)
}
