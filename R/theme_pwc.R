#' Theme PwC
#'
#' @param base_size
#' @param font_fam Skrifttype, f.eks. Georgia eller Arial.
#'
#' @return
#' @export
#'
#' @examples
theme_pwc <- function(base_size = 2.0, font_fam = "Arial") {
  # Define colors
  color_background <- pwc_cols("white")
  color_axis_title <- pwc_cols("medium_grey")
  color_axis_text <- pwc_cols("medium_grey")
  color_title <- pwc_cols("medium_grey")
  color_subtitle <- pwc_cols("medium_grey")
  color_grid_major <- pwc_cols("light_grey")
  color_panel_border <- pwc_cols("dark_grey")
  color_facet_grid <- pwc_cols("dark_grey")
  color_facet_fill <- pwc_cols("orange")

  # Construct theme (from theme_bw):
  theme_bw(base_size = base_size * 9) +
    theme(
      # Chart region
      panel.background = element_rect(fill = color_background, color = color_background),
      plot.background = element_rect(fill = color_background, color = color_background),
      panel.border = element_rect(color = color_panel_border),

      # Grid
      panel.grid.major = element_line(color = color_grid_major, size = 0.25),
      panel.grid.minor = element_blank(),
      axis.ticks = element_blank(),

      # Legend
      legend.background = element_rect(fill = color_background),
      legend.text = element_text(size = base_size * 7, color = color_axis_text),

      # Facet
      strip.background = element_rect(color = color_facet_grid,
                                      fill = color_facet_fill),

      strip.text = element_text(
        color = pwc_cols("white"),
        size = base_size * 5,
        family = font_fam
      ),

      # Fonts
      plot.subtitle = element_text(
        color = color_subtitle,
        size = base_size * 7,
        vjust = 1.25,
        family = font_fam
      ),

      axis.text.x = element_text(size = base_size * 5, color = color_axis_text),
      axis.text.y = element_text(size = base_size * 5, color = color_axis_text),
      axis.title.x = element_text(
        size = base_size * 6,
        color = color_axis_title,
        vjust = 0
      ),
      axis.title.y = element_text(
        size = base_size * 6,
        color = color_axis_title,
        vjust = 1.25
      ),

      text = element_text(size = base_size * 7,
                          family = font_fam,
                          color = color_axis_text),

      plot.title = element_text(
        color = color_title,
        size = base_size * 10,
        vjust = 1.25,
        family = font_fam
      )
    )
}
