local groups = {
 {
  type = "item-group",
  name = "nuclear_fuels",
  order = "zx",
  icon = "__Nucleario__/graphics/item-group/fuels.png",
  icon_size = 64,
 },
 {
  type = "item-group",
  name = "depleted_nuclear_fuels",
  order = "zy",
  icon = "__Nucleario__/graphics/item-group/fuels.png",
  icon_size = 64,
 }
}

local fuels = {thorium="a",uranium="b",plutonium="c",neptunium="d",berkelium="e",curcium="f",americium="g",californium="h",misc="z"}

for fuel,order in pairs(fuels) do
  groups[#groups+1] = {
    type = "item-subgroup",
    name = fuel.."_fuels",
    group = "nuclear_fuels",
    order = order
  }
  groups[#groups+1] = {
    type = "item-subgroup",
    name = fuel.."_fuels",
    group = "depleted_nuclear_fuels",
    order = order
  }
end

data:extend(groups)