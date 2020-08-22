--TODO add settings code

-- Cooler Settings

data:extend({
  {
      type = "int-setting",
      name = "reactor_check_range",
      setting_type = "runtime-global",
      default_value = 20,
      minimum_value = 1,
      order = "a"
  }
})

local defaults = require("scripts.cooler_default_values")
local extentetion = {}
for i,name in ipairs(require("scripts.coolers")) do
  extentetion[i] = 
  {
    type = "int-setting",
    name = name.."_cooler_value",
    setting_type = "runtime-global",
    default_value = defaults[name] or error("no default value for cooler : "..name),
    minimum_value = 1,
    order = "z"
}
end

data:extend(extentetion)