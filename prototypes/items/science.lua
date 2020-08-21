data:extend({
  {
    type = "tool",
    name = "thorium-pack",
    --localised_description = {"item-description.science-pack"},
    icons = {
  	{icon = "__NuclearCraftio__/graphics/icons/science_pack.png"},
  	{icon = "__NuclearCraftio__/graphics/icons/science_pack_overlay.png", tint = {r=0.2, g=0.2, b=0.2}}
  	},
    icon_size = 32,
    subgroup = "science-pack",
    order = "a",
    stack_size = 200,
    durability = 1 --,
    --durability_description_key = "description.science-pack-remaining-amount-key",
    --durability_description_value = "description.science-pack-remaining-amount-value"
  },{
    type = "tool",
    name = "uranium-pack",
    --localised_description = {"item-description.science-pack"},
    icons = {
  	{icon = "__NuclearCraftio__/graphics/icons/science_pack.png"},
  	{icon = "__NuclearCraftio__/graphics/icons/science_pack_overlay.png", tint = {r=0, g=0.8, b=0}}
  	},
    icon_size = 32,
    subgroup = "science-pack",
    order = "b",
    stack_size = 200,
    durability = 1 --,
    --durability_description_key = "description.science-pack-remaining-amount-key",
    --durability_description_value = "description.science-pack-remaining-amount-value"
  }
})