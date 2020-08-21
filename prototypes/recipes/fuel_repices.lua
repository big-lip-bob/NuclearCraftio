local repices = {
  thorium_tbu =        {{"th-232",9}},
  uranium_le_233 =     {{ "u-233",1},{ "u-238",8}},
  uranium_he_233 =     {{ "u-233",4},{ "u-238",5}},
  uranium_le_235 =     {{ "u-235",1},{ "u-238",8}},
  uranium_he_235 =     {{ "u-235",4},{ "u-238",5}},
  neptunium_le_236 =   {{"np-236",1},{"np-237",8}},
  neptunium_he_236 =   {{"np-236",4},{"np-237",5}},
  plutonium_le_239 =   {{"pu-239",1},{"pu-242",8}},
  plutonium_he_239 =   {{"pu-239",4},{"pu-242",5}},
  plutonium_le_241 =   {{"pu-241",1},{"pu-242",8}},
  plutonium_he_241 =   {{"pu-241",4},{"pu-242",5}},
  americium_le_242 =   {{"am-242",1},{"am-243",8}},
  americium_he_242 =   {{"am-242",4},{"am-243",5}},
  curium_le_243 =      {{"cm-243",1},{"cm-246",8}},
  curium_he_243 =      {{"cm-243",4},{"cm-246",5}},
  curium_le_245 =      {{"cm-245",1},{"cm-246",8}},
  curium_he_245 =      {{"cm-245",4},{"cm-246",5}},
  curium_le_247 =      {{"cm-247",1},{"cm-246",8}},
  curium_he_247 =      {{"cm-247",4},{"cm-246",5}},
  berkelium_le_248 =   {{"bk-248",1},{"bk-247",8}},
  berkelium_he_248 =   {{"bk-248",4},{"bk-247",5}},
  californium_le_249 = {{"cf-249",1},{"cf-252",8}},
  californium_he_249 = {{"cf-249",4},{"cf-252",5}},
  californium_le_251 = {{"cf-251",1},{"cf-252",8}},
  californium_he_251 = {{"cf-251",4},{"cf-252",5}}
}

--[[for fuel in pairs(repices) do
  for i=1,2 do
    repices[fuel][i][1] = repices[fuel][i][1].."-small"
  end
end]]

-- le is 1 8 and he is 4 5 (low enrichement and high enrichement)
-- fuel_name (from fission fuels) = {{pellet1,ammount/9},{pellet2,ammount/9}}, ...
-- TODO : register Moxes special craft

local data_extension = {}
for fuel,repice in pairs(repices) do
  data_extension[#data_extension+1] = {
    type = "recipe",
    name = fuel.."_recipe",
    enabled = true,
    energy_required = 10,
    ingredients = repice,
    result = fuel
  }
end

data:extend(data_extension)