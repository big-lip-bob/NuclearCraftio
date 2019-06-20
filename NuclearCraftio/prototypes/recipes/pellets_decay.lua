local decays = {
  ["np-236"] = "th-232",
  ["np-237"] = "u-233",
  ["pu-239"] = "u-235",
  ["pu-241"] = "np-237",
  ["pu-242"] = "u-238",
  ["am-241"] = "np-237",
  ["am-243"] = "pu-239",
  ["cm-243"] = "pu-239",
  ["cm-245"] = "pu-241",
  ["cm-246"] = "pu-242",
  ["cm-247"] = "am-243",
  ["bk-247"] = "am-243",
  ["bk-248"] = "th-232",
  ["cf-249"] = "cm-245",
  ["cf-251"] = "cm-247",
  ["cf-252"] = "th-232"
}

local data_extension = {}
for inp,out in pairs(decays) do
  data_extension[#data_extension+1] = {
    type = "repice",
    name = "decay_"..inp,
    ingredients = {inp,1},
    enabled = true,
    energy_required = 2,
    result = out
  }
end
-- last commit 1 month yeet
data:extend(data_extension)