#' Scale color - internal function
#'
#' This function uses the selected palette if length(pal) < n, where n is
#' the number of groups in fill/color used in scale_*_pwc_d/c
#'
#' If length(pal) > n, it will create new colors based on grDevices::colorRamp()
#'
#' Most of the code here is from the function grDevices::colorRampPalette, but with some tweaks
#' to fit this purpose.
#'
#'
#' @param colors palette used
#' @param ... other arguments sent to grDevices::colorRamp()
#'
#' @return a color palette compatible with ggplot
#' @importFrom grDevices colorRamp

scale_color_internal <- function(colors,...)
{
  ramp <- grDevices::colorRamp(colors,...)
    function(n) {
      if(length(colors) < n){
        x <- ramp(seq.int(0, 1, length.out = n))
        if (ncol(x) == 4L)
          rgb(x[, 1L], x[, 2L], x[, 3L], x[, 4L], maxColorValue = 255)
        else rgb(x[, 1L], x[, 2L], x[, 3L], maxColorValue = 255)
      } else {
      unname(colors[1:n])
    }
    }

}
