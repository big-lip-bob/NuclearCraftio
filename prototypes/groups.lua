local groups = {
 {
  type = "item-group",
  name = "nuclear_goodies",
  order = "y",
  icon = "__NuclearCraftio__/graphics/item-group/missingno.png",
  icon_size = 32,
 }, {
  type = "item-group",
  name = "nuclear_pellets",
  order = "zx",
  icon = "__NuclearCraftio__/graphics/item-group/missingno.png",
  icon_size = 32,
 },

 {
  type = "item-group",
  name = "nuclear_fuels",
  order = "zy",
  icon = "__NuclearCraftio__/graphics/item-group/fuels.png",
  icon_size = 128,
 },
 {
  type = "item-group",
  name = "depleted_nuclear_fuels",
  order = "zz",
  icon = "__NuclearCraftio__/graphics/item-group/depleted_fuels.png",
  icon_size = 128,
 }
}

local fuels = {thorium="a",uranium="b",plutonium="c",neptunium="d",berkelium="e",curium="f",americium="g",californium="h",mixed="z"}

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