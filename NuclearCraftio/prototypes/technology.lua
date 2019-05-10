--data:extend({
  {
    type = "technology",
    name = "testificate",
    icon_size = 128,
    icon = "__Nucleario__/graphics/technology/",
    prerequisites = {"fluid-handling"},
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "someitem"
      }
	},
    unit =
    {
      count = 50,
      ingredients = {{"nuclear_science_pack", 1}},
      time = 30
    },
    order = "a"
  }})
