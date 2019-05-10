local data = { --data.name / raw_tint / depleted_tint / energy / subgroup / order
 {
  name = "thorium_tbu",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 }
 {
  name = "uranium_heu_233",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "uranium_heu_235",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "uranium_leu_233",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "uranium_leu_235",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "plutonium_hep_239",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "plutonium_hep_241",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "plutonium_lep_239",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "plutonium_lep_241",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "neptunium_hen_236",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "neptunium_len_236",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "berkelium_heb_248",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "berkelium_leb_248",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "curium_hec_243",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "curium_hec_245",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "curium_hec_247",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "curium_lec_243",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "curium_lec_245",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "curium_lec_247",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "americium_hea_242",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "americium_lea_242",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "californium_hec_249",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "californium_hec_251",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "californium_lec_249",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 },
 {
  name = "californium_lec_251",
  raw_tint = {r=1,g=1,b=1},
  depleted_tint = {r=1,g=1,b=1},
  energy = "5MJ"
 }
}

for i in ipairs(data) do
 data[i].subgroup = string.match(data[i].name,"%a+")
 data[i].order = i
end

for _,info in ipairs(data) do
 data[#data+1] = {
  name = info.name.."_oxide"
  raw_tint = {info.raw_tint.r/2,info.raw_tint.g/2,info.raw_tint.b/2},
  depleted_tint = {info.depleted_tint.r/2,info.depleted_tint.g/2,info.depleted_tint.b/2},
  energy = (tonumber(string.match(info.energy,"%d+"))*2)..string.match(info.energy,"%a+")
  subgroup = info.subgroup
 }
end

local function oxydize(fuel)

end

data[#data+1] = {}

return {}


--non oxide
mixed_oxide_mox_239
mixed_oxide_mox_241