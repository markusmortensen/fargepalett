## code to prepare `pwc_palettes` dataset goes here

pwc_palettes <- list(
  pwc_palette = pwc_cols("orange", "rose", "red", "tangerine", "yellow"),
  pwc_neutral_palette = pwc_cols("black", "dark_grey", "medium_grey", "grey", "light_grey", "white"),

  orange_palette = pwc_cols("orange1", "orange2", "orange3", "orange4", "orange5"),
  tangerine_palette = pwc_cols("tangerine1", "tangerine2", "tangerine3", "tangerine4", "tangerine5"),
  yellow_palette = pwc_cols("yellow1", "yellow2", "yellow3", "yellow4", "yellow5"),
  rose_palette = pwc_cols("rose1", "rose2", "rose3", "rose4", "rose5"),
  purple_palette = pwc_cols("purple1", "purple2", "purple3", "purple4", "purple5"),
  blue_palette = pwc_cols("blue1", "blue2", "blue3", "blue4", "blue5"),
  green_palette = pwc_cols("green1", "green2", "green3", "green4", "green5"),

  status_palette = pwc_cols("status_green", "status_yellow", "status_red"),

  pal1 = pwc_cols("orange", "tangerine", "yellow", "medium_grey"),
  pal2 = pwc_cols("red", "dark_grey", "grey", "yellow"),
  pal3 = pwc_cols("tangerine", "yellow", "rose", "light_grey"),
  pal4 = pwc_cols("black", "grey", "red", "light_grey"),
  pal5 = pwc_cols("medium_grey", "dark_grey", "orange", "yellow"),
  pal6 = pwc_cols("white", "light_grey", "tangerine", "orange"),

  pal7 = pwc_cols("rose", "orange", "red", "grey"),
  pal8 = pwc_cols("black", "dark_grey", "medium_grey", "grey")
)



usethis::use_data(pwc_palettes, overwrite = TRUE, internal = TRUE)
