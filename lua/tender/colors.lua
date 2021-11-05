local lush = require("lush")
local hsl = lush.hsl

local colors = {}

colors = {
  bg = hsl("#282828"),
  blue = hsl("#b3deef"),
  blue1 = hsl("#b3deef"),
  blue2 = hsl("#73cef4"),
  blue3 = hsl("#44778d"),
  blue4 = hsl("#335261"),
  cyan = hsl("#7dcfff"),
  darker = hsl("#1d1d1d"),
  darkest = hsl("#040404"),
  gandalf = hsl("#bbbbbb"),
  green = hsl("#c9d05c"),
  green1 = hsl("#c9d05c"),
  green2 = hsl("#9faa00"),
  green3 = hsl("#6a6b3f"),
  green4 = hsl("#464632"),
  grey = hsl("#999999"),
  grey1 = hsl("#999999"),
  grey2 = hsl("#666666"),
  grey3 = hsl("#444444"),
  highlighted = hsl("#ffffff"),
  red = hsl("#f43753"),
  red1 = hsl("#f43753"),
  red2 = hsl("#c5152f"),
  red3 = hsl("#79313c"),
  shadow = hsl("#323232"),
  teal = hsl("#1abc9c"),
  fg = hsl("#eeeeee"),
  normal = hsl("#eeeeee"),
  orange = hsl("#ff8000"),
  yellow = hsl("#d3b987"),
  yellow1 = hsl("#d3b987"),
  yellow2 = hsl("#ffc24b"),
  yellow3 = hsl("#715b2f"),
  purple = hsl("#a866ff"),
  purple1 = hsl("#a866ff"),
  purple2 = hsl("#6e00ff"),
  purple3 = hsl("#400094"),
  magenta = hsl("#bb9af7"),
  magenta2 = hsl("#ff007c"),
  diff = {
    add = hsl("#c9d05c"),
    change = hsl("#ff8000"),
    delete = hsl("#f43753"),
  },
}

return colors
