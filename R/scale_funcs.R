#' Scale-funksjon for pwc-farger
#'
#' @param palette Navn på palett fra listen pwc_pal
#' @param discrete Logisk variabel som indikerer om farge-aestichen er diskret eller ikke
#' @param reverse Logisk variabel som indikerer om paletten skal reverseres eller ikke.
#' @param ... Flere argumenter som sendes til hhv discrete_scale og scale_fill_gradientn for diskret TRUE/FALSE
#'
#' @export
scale_color_pwc <- function(palette = "pwc_palette", discrete = TRUE, reverse = FALSE, ...) {
  pal <- pwc_pal(palette = palette, rev = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("pwc: ", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' scale_color_pwc_d
#'
#' @inherit scale_color_pwc
#'
#' @return
#' @export
#'
#' @examples
scale_color_pwc_d <- function(palette = "pwc_palette", reverse = FALSE, ...) {
  pal <- pwc_pal(palette = palette, rev = reverse, discrete = TRUE)
  ggplot2::discrete_scale("colour", paste0("pwc: ", palette), palette = pal, ...)
}

#' scale_color_pwc_c
#'
#' @inherit scale_color_pwc
#'
#' @return
#' @export
#'
#' @examples
scale_color_pwc_c <- function(palette = "orange_palette", reverse = FALSE, ...) {
  pal <- pwc_pal(palette = palette, rev = reverse)
  ggplot2::scale_color_gradientn(colours = pal(256), ...)
}

#' Scale-funksjon for pwc-farger
#'
#' @param palette Navn på palett fra listen pwc_pal
#' @param discrete Logisk variabel som indikerer om farge-aestichen er diskret eller ikke
#' @param reverse Logisk variabel som indikerer om paletten skal reverseres eller ikke.
#' @param ... Flere argumenter som sendes til hhv discrete_scale og scale_fill_gradientn for diskret TRUE/FALSE
#'
#' @export
scale_fill_pwc <- function(palette = "pwc_palette", discrete = TRUE, reverse = FALSE, ...) {
  pal <- pwc_pal(palette = palette, rev = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("pwc: ", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}

#' scale_fill_pwc_d
#'
#' @inherit scale_fill_pwc
#'
#' @return
#' @export
#'
#' @examples
scale_fill_pwc_d <- function(palette = "pwc_palette", reverse = FALSE, ...) {
  pal <- pwc_pal(palette = palette, rev = reverse, discrete = TRUE)
  ggplot2::discrete_scale("fill", paste0("pwc: ", palette), palette = pal, ...)
}

#' scale_fill_pwc_c
#'
#' @inherit scale_fill_pwc
#'
#' @return
#' @export
#'
#' @examples
scale_fill_pwc_c <- function(palette = "orange_palette", reverse = FALSE, ...) {
  pal <- pwc_pal(palette = palette, rev = reverse)
  ggplot2::scale_fill_gradientn(colours = pal(256), ...)
}

