#' Funksjon for å hente hex-kode til farger
#'
#' @param ... Navn på farger i listen pwc_colors
#' @export
#'
pwc_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (pwc_colors)

  if(!is.null(cols))
    assertthat::assert_that(all(cols %in% names(pwc_colors)),
                            msg = "Color not found in collection of PwC colors")

  pwc_colors[cols]
}

