-- Ran whenever a save is loaded
-- TODO : add reactor world boot logic

-- script.on_init(f) -- new save or mod introduced into save

-- script.on_load(f) -- save loaded or connected -- Note game or rendering is not availaible -- rly bruh

local reactors,bindings = require("scripts.helpers").init_return(global,"fission_reactors","fission_map")

script.on_event(defines.events.on_built_entity, function(event)
  local id = script.register_on_entity_destroyed(event.created_entity)
  game.print("A reactor wall was placed on tick " .. event.tick .. " with destruction ID : " .. id)
end,{{filter="name", name = "fission_casing_wall"},{filter="name", name = "fission_controller"}})

-- dismantled by a player or by force, for any reason its being removed from the world
script.on_event(defines.events.on_entity_destroyed, function(event)
  local id = event.unit_number
  game.print("A regstered entity was destroyed " .. event.registration_number)
end)

--settings.global["reactor_check_range"].value