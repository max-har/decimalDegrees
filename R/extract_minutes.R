#' Extract minutes from latitude / longitude string
#'
#' @param dms_string The DMS string
#'
#' @return The numeric minutes value
#' @export
#'
#' @examples extract_minutes("11° 34 \' 19\"")
extract_minutes <- function(dms_string) {
  minutes <- as.numeric(sub(".*°\\s(\\d+).*", "\\1", dms_string))
  return(minutes)
}
