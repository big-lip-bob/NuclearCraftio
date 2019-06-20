local repices = {
  thorium_tbu = {{"th-232",9}},
  uranium_leu_233 = {{"u-233",1},{"u-238",8}},
  uranium_heu_233 = {{"u-233",4},{"u-238",5}},
  uranium_leu_235 = {{"u-235",1},{"u-238",8}},
  uranium_heu_235 = {{"u-235",4},{"u-238",5}},
  neptunium_len_236 = {{"np-236",1},{"np-237",8}},
  neptunium_hen_236 = {{"np-236",4},{"np-237",5}},
  plutonium_lep_239 = {{"pu-239",1},{"pu-242",8}},
  plutonium_hep_239 = {{"pu-239",4},{"pu-242",5}},
  plutonium_lep_241 = {{"pu-241",1},{"pu-242",8}},
  plutonium_hep_241 = {{"pu-241",4},{"pu-242",5}},
  americium_lea_242 = {{"am-242",1},{"am-243",8}},
  americium_hea_242 = {{"am-242",4},{"am-243",5}},
  curium_lecm_243 = {{"cm-243",1},{"cm-246",8}},
  curium_hecm_243 = {{"cm-243",4},{"cm-246",5}},
  curium_lecm_245 = {{"cm-245",1},{"cm-246",8}},
  curium_hecm_245 = {{"cm-245",4},{"cm-246",5}},
  curium_lecm_247 = {{"cm-247",1},{"cm-246",8}},
  curium_hecm_247 = {{"cm-247",4},{"cm-246",5}},
  berkelium_leb_248 = {{"bk-248",1},{"bk-247",8}},
  berkelium_heb_248 = {{"bk-248",4},{"bk-247",5}},
  californium_lecf_249 = {{"cf-249",1},{"cf-252",8}},
  californium_hecf_249 = {{"cf-249",4},{"cf-252",5}},
  californium_lecf_251 = {{"cf-251",1},{"cf-252",8}},
  californium_hecf_251 = {{"cf-251",4},{"cf-252",5}},
  mixed_mox_239 = {{"pu-239",1},{"u-238",8}},
  mixed_mox_241 = {{"pu-241",1},{"u-238",8}}
}

-- le is 1 8 and he is 4 5 (low enrichement and high enrichement)
-- fuel_name (from fission fuels) = {{pellet1,ammount/9},{pellet2,ammount/9}}, ...

local data_extension = {}
for fuel,repice in pairs(repices) do
  data_extension[#data_extension+1] = {
    type = "repice",
    name = fuel.."_repice",
    enabled = true,
    energy_required = 10,
    ingredients = repice,
    result = fuel
  }
end

data:extend(data_extension)