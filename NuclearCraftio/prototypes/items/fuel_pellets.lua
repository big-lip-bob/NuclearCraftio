local pellets = { --pellets.name / raw_tint / energy / subgroup / order
  ["th-232"] = false,
  ["u-233"] = false, ["u-235"] =  false,["u-238"]  = false,
  ["pu-239"] = false,["pu-241"] = false,["pu-242"] = false,
  ["np-236"] = false,["np-237"] = false,
  ["bk-247"] = false,["bk-248"] = false,
  ["cm-243"] = false,["cm-245"] = false,["cm-246"] = false,["cm-247"] = false,
  ["am-241"] = false,["am-242"] = false,["am-243"] = false,
  ["cf-249"] = false,["cf-250"] = false,["cf=251"] = false,["cf-252"] = false
}

-- order = {thorium="a",uranium="b",plutonium="c",neptunium="d",berkelium="e",curium="f",americium="g",californium="h",mixed="z"}

local data_extension = {}
for name,icon in pairs(pellets) do
  data_extension[#data_extension+1] = {
    type = "item",
    name = name,
    stack_size = 10,
    icons = icon or {{icon = ""}}
  }
end

data:extend(data_extension)