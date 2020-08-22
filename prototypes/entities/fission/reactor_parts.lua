local filler,crosssection,horizontal,vertical = {
 filename = "__NuclearCraftio__/graphics/entity/solid_fission/fission_casing.png",
 x = 0,y = 0,
 width = 16,height = 16,
 scale = 2
},{
 filename = "__NuclearCraftio__/graphics/entity/solid_fission/fission_casing.png",
 x = 16,y = 16,
 width = 16,height = 16,
 scale = 2
},{
 filename = "__NuclearCraftio__/graphics/entity/solid_fission/fission_casing.png",
 x = 0,y = 16,
 width = 16,height = 16,
 scale = 2
},{
 filename = "__NuclearCraftio__/graphics/entity/solid_fission/fission_casing.png",
 x = 16,y = 0,
 width = 16,height = 16,
 scale = 2
}

data:extend({
  {
		type = "item",
		name = "fission_casing_wall",
		stack_size = 50,
		icon_size = 32,
    icon = "__NuclearCraftio__/graphics/entity/solid_fission/fission_casing.png",
    place_result = "fission_casing_wall"
	},
  {
		type = "wall", --yea why not thats smart reusing
		-- the checking will be done by the reactor controller itself, why bother with a custom wall type
		name = "fission_casing_wall",
		--icon = "__NuclearCraftio__/graphics",
		minable = {mining_time = 2, result = "fission_casing_wall"},
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
		}},
		pictures = {
			single = crosssection,
			straight_vertical = vertical,
			straight_horizontal = horizontal,
			corner_right_down = crosssection,
			corner_left_down = crosssection,
			corner_right_up = crosssection, --
			corner_left_up = crosssection, --
			t_up = crosssection,
			t_down = crosssection, --
			ending_right = crosssection,
			ending_left = crosssection,
			ending_up = crosssection, --
			ending_down = crosssection, --
			--filling = filler --idfk how it works
		}
	}
})