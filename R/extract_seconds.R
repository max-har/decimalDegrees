#' Extract seconds from latitude / longitude string
#'
#' @param dms_string The DMS string
#'
#' @return The numeric seconds value
#' @export
#'
#' @examples extract_seconds("11° 34 \' 19\"")
extract_seconds <- function(dms_string) {
  seconds <- as.numeric(sub(".*'\\s(\\d+).*", "\\1", dms_string))
  return(seconds)
}
