#' Funksjon for å hente hex-kode til farger
#'
#' @param ... Navn på farger i listen pwc_colors
#'
pwc_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (pwc_colors)

  pwc_colors[cols]
}

