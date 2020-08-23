local reactor = {}

local neightbour_poss = {{x=0,y=1},{x=1,y=0},{x=0,y=-1},{x=-1,y=0}} -- n e s w
local find_filter = {name = {"fission_casing_wall","fission_controller"}}
local function check_parts(entity,bindings,reactors)
  local surface = entity.surface
  local previous_occurences = {}
  local stack = {}
end