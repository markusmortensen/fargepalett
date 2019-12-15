#' Fargepaletter for pwc
#'
#' #' Returns a color or a palette
#'
#' @param palette Navn på palette fra listen pwc_pal
#' @param rev Logisk variabel som indikerer om paletten skal reverseres eller ikke
#' @param ...Ytterlige variabler som sendes til colorRampPalette()
#'
#' @return Objekt med en palett
#' @importFrom grDevices colorRampPalette
pwc_pal <- function(palette = "pwc_palette", rev = FALSE, ...) {
  pal <- pwc_palettes[[palette]]

  if (rev) pal <- rev(pal)

  out <- grDevices::colorRampPalette(pal, ...)

  structure(out, class = "palette", name = palette)
}
