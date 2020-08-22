data:extend({
  {
		type = "item",
		name = "fission_controller",
		stack_size = 50,
		icon_size = 32,
    icon = "__NuclearCraftio__/graphics/entity/solid_fission/fission_brain.png",
    place_result = "fission_controller"
	},
  {
    type = "electric-energy-interface",
    name = "fission_controller",
    energy_source = {
      type = "electric",
      --buffer_capacity = 0, -- evaluated when the reactor loads
      --output_flow_limit = 0
      usage_priority = "primary-output" -- yes
    },
    picture = {filename = "__NuclearCraftio__/graphics/entity/solid_fission/fission_brain.png",size = 32},
		minable = {mining_time = 2, result = "fission_controller"},
		max_health = 1000,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		resistances = {{
      type = "physical",
		  decrease = 3,
		  percent = 20
		  },{
      type = "impact",
		  decrease = 45,
		  percent = 60
		  },{
      type = "explosion",
		  decrease = 10,
		  percent = 30
		  },{
      type = "fire",
		  percent = 100
		  },{
      type = "acid",
		  percent = 80
		  },{
      type = "laser",
		  percent = 70
		}}
	}
})