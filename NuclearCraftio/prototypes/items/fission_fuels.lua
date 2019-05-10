local fission_fuels = require("__Nucleario__/scripts/fission_fuels_data")
local data_extention = {}

local function register_template(data)

  fission_fuels[#fission_fuels+1] = {
    type = "item",
	name = data.name,
	icons =
    {{
      icon = "__Nucleario__/graphics/icons/fuel_white.png",
      tint = data.raw_tint
    }},
    icon_size = 32,
    subgroup = data.subgroup,
    order = data.order,
    fuel_category = "nuclear_solid_fission",
    burnt_result = depleted..data.name,
    fuel_value = data.energy,
    stack_size = 15
  }

  fission_fuels[#fission_fuels+1] = {
    type = "item",
	name = depleted..data.name,
    icons =
    {{
      icon = "__Nucleario__/graphics/icons/fuel_white.png",
      tint = data.deplted_tint
    }},
    icon_size = 32,
    subgroup = data.subgroup,
    order = data.order,
    fuel_value = data.energy,
    stack_size = 15
  }

end

for _,data in ipairs(fission_fuels) do
  register_template(data)
end

data:extend(data_extention)