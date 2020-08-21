local ip = "__NuclearCraftio__/graphics/icons/"
local c1,c2,c3,c4,c5,c6 = ip.."chunk1.png",ip.."chunk2.png",ip.."chunk3.png",ip.."chunk4.png",ip.."chunk5.png",ip.."chunk6.png"
-- ["pellet"] = {icon = c1,tint = {r=0.000,b=0.000,g=0.000}}
local pellets = {
  ["th-230"] = {icon = c2,tint = {r=0.270,g=0.270,b=0.270}},["th-232"] = {icon = c3,tint = {r=0.200,g=0.200,b=0.200}},
  ["u-233"] =  {icon = c5,tint = {r=0.157,g=0.220,b=0.157}},["u-235"]  = {icon = c4,tint = {r=0.050,g=0.222,b=0.050}},["u-238"]  = {icon = c6,tint = {r=0.214,g=0.262,b=0.215}}, 
  ["pu-239"] = {icon = c1,tint = {r=0.705,g=0.705,b=0.705}},["pu-241"] = {icon = c2,tint = {r=0.666,g=0.666,b=0.666}},["pu-242"] = {icon = c4,tint = {r=0.8  ,g=0.8  ,b=0.8  }}, -- can't be 865 cause *1.25 it goes our of range and results in black
  ["np-236"] = {icon = c6,tint = {r=0.166,g=0.281,b=0.302}},["np-237"] = {icon = c2,tint = {r=0.203,g=0.281,b=0.302}},
  ["bk-247"] = {icon = c6,tint = {r=0.380,g=0.190,b=0.000}},["bk-248"] = {icon = c1,tint = {r=0.400,g=0.170,b=0.000}},
  ["cm-243"] = {icon = c1,tint = {r=0.244,g=0.052,b=0.348}},["cm-245"] = {icon = c4,tint = {r=0.244,g=0.052,b=0.348}},["cm-246"] = {icon = c6,tint = {r=0.333,g=0.244,b=0.312}},["cm-247"] = {icon = c5,tint = {r=0.244,g=0.052,b=0.348}},
  ["am-241"] = {icon = c3,tint = {r=0.25 ,g=0.236,b=0.158}},["am-242"] = {icon = c5,tint = {r=0.25 ,g=0.236,b=0.158}},["am-243"] = {icon = c4,tint = {r=0.25 ,g=0.236,b=0.158}},
  ["cf-249"] = {icon = c2,tint = {r=0.341,g=0.091,b=0.106}},["cf-250"] = {icon = c3,tint = {r=0.341,g=0.091,b=0.106}},["cf-251"] = {icon = c5,tint = {r=0.341,g=0.091,b=0.106}},["cf-252"] = {icon = c1,tint = {r=0.341,g=0.091,b=0.106}}
}

-- order = {thorium="a",uranium="b",plutonium="c",neptunium="d",berkelium="e",curium="f",americium="g",californium="h",mixed="z"}

local data_extension = {}
local repices = {}
for name,icon in pairs(pellets) do
  icon = icon or {icon = "__NuclearCraftio__/graphics/icons/missingno.png"}
  data_extension[#data_extension+1] = {
    type = "item",
    name = name,
    stack_size = 10,
    icon_size = 32,
    icons = {icon}
  }
  repices[#repices+1] = {
    type = "recipe",
    name = name.."_combine_recipe",
    enabled = true,
    energy_required = 10,
    ingredients = {{name.."-small",9}},
    result = name
  }
  icon = {icon = icon.icon,tint = icon.tint,scale = 0.5/32}
  data_extension[#data_extension+1] = {
    type = "item",
    name = name.."-small",
    group = "nuclear_pellets",
    stack_size = 90,
    icon_size = 32,
    icons = {icon}
  }
  repices[#repices+1] = {
    type = "recipe",
    name = name.."_uncombine_recipe",
    enabled = true,
    energy_required = 10,
    ingredients = {{name,1}},
    results = {{name.."-small",9}}
  }
end

for i = 1,#data_extension do
  local cache = data_extension[i]
  local name = cache.name
  local icon_cache = {{icon = cache.icons[1].icon,tint = {r = cache.icons[1].tint.r*1.25, g = cache.icons[1].tint.g*1.25, b = cache.icons[1].tint.b * 1.25},scale = cache.icons[1].scale}}
  data_extension[#data_extension+1] = {
    type = "item",
    name = name.."-oxide",
    stack_size = (name:match("small") and 90) or 10,
    icon_size = 32,
    icons = icon_cache
  }
end

data:extend(data_extension)
data:extend(repices)

