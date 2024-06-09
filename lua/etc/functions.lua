Base30ColorsDef = {
  white = "white",
  darker_black = "darker_black",
  black = "black",
  black2 = "black2",
  one_bg = "one_bg",
  one_bg2 = "one_bg2",
  one_bg3 = "one_bg3",
  grey = "grey",
  grey_fg = "grey_fg",
  grey_fg2 = "grey_fg2",
  light_grey = "light_grey",
  red = "red",
  baby_pink = "baby_pink",
  pink = "pink",
  line = "line",
  green = "green",
  vibrant_green = "vibrant_green",
  blue = "blue",
  nord_blue = "nord_blue",
  yellow = "yellow",
  sun = "sun",
  purple = "purple",
  dark_purple = "dark_purple",
  teal = "teal",
  orange = "orange",
  cyan = "cyan",
  statusline_bg = "statusline_bg",
  lightbg = "lightbg",
  pmenu_bg = "pmenu_bg",
  folder_bg = "folder_bg",
}

-- Function to enumerate the variables and pick a random one
function Pick_random_variable_pairs(variable_table)
  -- Create an array to hold the keys
  local keys = {}

  -- Collect all the keys in the table
  for key in pairs(variable_table) do
    table.insert(keys, key)
  end
  -- Get the total number of keys
  local count = #keys
  if count == 0 then
    return nil -- Return nil if the table is empty
  end

  -- Generate a random index
  local random_index = math.random(count)
  -- Get the random key
  local random_key = keys[random_index]

  -- Return the variable at the random key
  return variable_table[random_key]
end

function Split_string_by_newline(input_string)
  local lines = {}

  for line in string.gmatch(input_string, "[^\n]+") do
    table.insert(lines, line)
  end

  return lines
end
