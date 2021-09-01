#' Fargepaletter for pwc
#'
#' #' Returns a color or a palette
#'
#' @param palette Navn på palette fra listen pwc_pal
#' @param rev Logisk variabel som indikerer om paletten skal reverseres eller ikke
#' @param ... Ytterlige variabler som sendes til colorRampPalette()
#'
#' @return Objekt med en palett
#' @importFrom grDevices colorRampPalette
pwc_pal <- function(palette = "pwc_palette", rev = FALSE, for_print = FALSE, discrete = TRUE,...) {
  pal <- pwc_palettes[[palette]]

  n <- length(pal)


  if (rev) pal <- rev(pal)

  out <- colorRampPalette(pal,...)

  if (for_print) {
    structure(out(n), class = "palette", name = palette)
  } else {
    out
  }
}


#' Funksjon for å printe paletter
#'
#' TODO: Gjør nødv tilpasninger for å eksportere!
#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}
