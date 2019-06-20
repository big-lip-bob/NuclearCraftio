data:extend({
  {
    type = "recipe",
    name = "thorium-science-pack",
    enabled = true,
    energy_required = 3,
    ingredients =
    {
      {"steel-plate", 1},
      {"copper-plate", 5}
    },
    result = "thorium-pack"
  },
  {
    type = "recipe",
    name = "uranium-science-pack",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 10},
      {"uranium-238", 1}
    },
    result = "uranium-pack"
  }
})