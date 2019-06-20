data:extend({
  {
    type = "technology",
    name = "testificate",
    icon_size = 128,
    icon = "__NuclearCraftio__/graphics/technology/thorium.png",
    prerequisites = {"logistic-science-pack"},
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "uranium-science-pack"
      }
	},
    unit =
    {
      count = 50,
      ingredients = {{"thorium-pack", 1}},
      time = 30
    },
    order = "a"
  }
})
