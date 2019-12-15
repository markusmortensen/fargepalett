#'
#'
#' #' Returns a color or a palette
#' #' chr vector
#' #' Sendt inn som character? feil navn? sjekk input!
#' #' @importFrom grDevices colorRampPalette
pwc_color <- function(name = "pwc_palette", palette = TRUE, n = NA) {

  if(palette){
    # Returns palette
    pal <- pwc_palettes[[name]]
    npal <- length(pal)
    if(!is.na(n) & n > npal){
      out <- grDevices::colorRampPalette(pal)(n)
    } else if (!is.na(n)) {
      # warning("n is larger than number of colors in palette, a continous palette is returned")
      out <- pal[1:n]
    } else {
      out <- pal
    }
  } else{
    # Returns color(s)
    out <- colors[name]
  }
  structure(out, class = "palette", name = name)
}


#' #' @export
#' #' @importFrom graphics rect par image text
#' #' @importFrom grDevices rgb
#' print.palette <- function(x, ...) {
#'   n <- length(x)
#'   old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
#'   on.exit(par(old))
#'
#'   image(1:n, 1, as.matrix(1:n, nrow = 1), col = x,
#'         ylab = "", xaxt = "n", yaxt = "n", bty = "n")
#'
#'   rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
#'   text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
#' }
#'
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#'   geom_point(size = 4) +
#'   scale_color_manual(values = a)
