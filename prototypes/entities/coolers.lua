local extentetion = {}
for i,name in ipairs(require("scripts.coolers")) do
  extentetion[i] = {
    type = "simple-entity-with-owner",
    name = name.."_cooler",
    picture = {filename = "__NuclearCraftio__/graphics/entity/solid_fission/"..name..".png",size = 16,scale = 2},
    max_health = 500
  } 
end

data:extend(extentetion)