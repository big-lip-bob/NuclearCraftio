local items = {
  {
    type = "capsule",
    name = "Smore",
    icon = "__NuclearCraftio__/graphics/icons/smore.png",
    icon_size = 32,
    subgroup = "raw-resource",
	order = "z",
    stack_size = 3,
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -200}
              }
            }
          }
        }
      }
    }
  },{
    type = "item",
    name = "Dummy",
    icon = "__NuclearCraftio__/graphics/icons/smore.png",
    icon_size = 32,
    group = "nuclear_goodies",
    order = "zzz",
    -- place_result = "",
    stack_size = 100
  },
}

data:extend(items)