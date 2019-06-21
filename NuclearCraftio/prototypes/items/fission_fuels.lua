local fuels = { --fuels.name / raw_tint / depleted_tint / energy / subgroup / order
 {
  name = "thorium_tbu",
  raw_tint = {r=0.197,g=0.197,b=0.197}, -- Todo: Change outline color to gray
  energy = "5MJ"
 },{
  name = "uranium_he_233",
  raw_tint = {r=0.091,g=0.276,b=0.114},
  energy = "5MJ"
 },{
  name = "uranium_he_235",
  raw_tint = {r=0.052,g=0.25,b=0.065},
  energy = "5MJ"
 },{
  name = "uranium_le_233",
  raw_tint = {r=0.132,g=0.236,b=0.145},
  energy = "5MJ"
 },{
  name = "uranium_le_235",
  raw_tint = {r=0.135,g=0.244,b=0.14},
  energy = "5MJ"
 },{
  name = "plutonium_he_239",
  raw_tint = {r=0.609,g=0.601,b=0.601}, -- Todo: Color black lining into an light grey color
  energy = "5MJ"
 },{
  name = "plutonium_he_241",
  raw_tint = {r=0.635,g=0.632,b=0.64}, -- Todo: Same as plutonium_hep_239
  energy = "5MJ"
 },{
  name = "plutonium_le_239",
  raw_tint = {r=0.763,g=0.768,b=0.776}, -- Todo: The whole texture needs to be grayed out more,including the lining
  energy = "5MJ"
 },{
  name = "plutonium_le_241",
  raw_tint = {r=0.726,g=0.726,b=0.726}, -- Todo: Same as plutonium_lep_239
  energy = "5MJ"
 },{
  name = "neptunium_he_236",
  raw_tint = {r=0.065,g=0.325,b=0.354},
  energy = "5MJ"
 },{
  name = "neptunium_le_236",
  raw_tint = {r=0.096,g=0.208,b=0.218},
  energy = "5MJ"
 },{
  name = "berkelium_he_248",
  raw_tint = {r=0.478,g=0.153,b=0},
  energy = "5MJ"
 },{
  name = "berkelium_le_248",
  raw_tint = {r=0.341,g=0.14,b=0.075},
  energy = "5MJ"
 },{
  name = "curium_he_243",
  raw_tint = {r=0.26,g=0.098,b=0.273},
  energy = "5MJ"
 },{
  name = "curium_he_245",
  raw_tint = {r=0.263,g=0.057,b=0.273},
  energy = "5MJ"
 },{
  name = "curium_he_247",
  raw_tint = {r=0.244,g=0.078,b=0.234},
  energy = "5MJ"
 },{
  name = "curium_le_243",
  raw_tint = {r=0.231,g=0.132,b=0.234},
  energy = "5MJ"
 },{
  name = "curium_le_245",
  raw_tint = {r=0.221,g=0.14,b=0.234},
  energy = "5MJ"
 },{
  name = "curium_le_247",
  raw_tint = {r=0.223,g=0.127,b=0.234},
  energy = "5MJ"
 },{
  name = "americium_he_242",
  raw_tint = {r=0.302,g=0.229,b=0.046},
  energy = "5MJ"
 },{
  name = "americium_le_242",
  raw_tint = {r=0.268,g=0.216,b=0.148},
  energy = "5MJ"
 },{
  name = "californium_he_249",
  raw_tint = {r=0.304,g=0.007,b=0.075},
  energy = "5MJ"
 },{
  name = "californium_he_251",
  raw_tint = {r=0.304,g=0.031,b=0.111},
  energy = "5MJ"
 },{
  name = "californium_le_249",
  raw_tint = {r=0.283,g=0.031,b=0.096},
  energy = "5MJ"
 },{
  name = "californium_le_251",
  raw_tint = {r=0.283,g=0.026,b=0.028},
  energy = "5MJ"
 },

 {
 name = "mixed_239_oxide",
  raw_tint = {r=0.369,g=0.432,b=0.36}, -- Todo : add MOX specific textures and coloring Implies better fuel adder code
  energy = "5MJ"
 },{
  name = "mixed_241_oxide",
  raw_tint = {r=0.395,g=0.463,b=0.4}, -- Todo : same as  MOX 239
  energy = "5MJ"
 }


}

for i = 1,#fuels do
  fuels[i].subgroup = string.match(fuels[i].name,"%a+").."_fuels"
  fuels[i].order = i*2
end

-- Todo change for a better adding system
-- oxydizing
for i = 1,#fuels-2 do -- -2 to not target moxes
 local info = fuels[i]
 fuels[#fuels+1] = {
  name = info.name.."_oxide",
  raw_tint = {r=info.raw_tint.r*1.2,g=info.raw_tint.g*1.2,b=info.raw_tint.b*1.2},
  energy = (tonumber(string.match(info.energy,"%d+"))*2)..string.match(info.energy,"%a+"),
  subgroup = info.subgroup,
  order = info.order+1,
 }
end

local data_extention = {}

local function register_template(data)

  data_extention[#data_extention+1] = {
    type = "item",
	  name = data.name,
  	icons =
    {{
      icon = data.icon or "__NuclearCraftio__/graphics/icons/fuel.png",
      tint = data.raw_tint
    }},
    icon_size = 32,
    subgroup = data.subgroup,
    order = data.order,
    fuel_category = "nuclear_solid_fission",
    burnt_result = "depleted_"..data.name,
    fuel_value = data.energy,
    stack_size = 15
  }

  data_extention[#data_extention+1] = {
    type = "item",
  	name = "depleted_"..data.name,
    icons =
    {{
      icon = data.depleted_icon or "__NuclearCraftio__/graphics/icons/depleted_fuel.png",
      tint = data.depleted_tint or {data.raw_tint.r*0.7,data.raw_tint.g*0.7,data.raw_tint.b*0.7}
    }},
    icon_size = 32,
    subgroup = data.subgroup,
    order = data.order,
    stack_size = 15
  }

end

for _,data in ipairs(fuels) do
  register_template(data)
end

data:extend(data_extention)