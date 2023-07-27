#' Extract degrees from latitude / longitude string
#'
#' @param dms_string The DMS string
#'
#' @return The numeric degrees value
#' @export
#'
#' @examples extract_degrees("11° 34 \' 19\"")
extract_degrees <- function(dms_string) {
  degrees <- as.numeric(sub("(\\d+)°.*", "\\1", dms_string))
  return(degrees)
}
