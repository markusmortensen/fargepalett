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
    for(i in seq(cols)){
      if (!(cols[i] %in% names(pwc_colors))){
        warning(paste0("color: [", cols[i],
                       "] is not found in collection of PwC colors. Using orange color"))
        cols[[i]] <- "orange"
      }

    }

  pwc_colors[cols]
}

