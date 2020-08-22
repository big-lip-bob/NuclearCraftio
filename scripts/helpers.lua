local helpers = {}

local function init_return(t,k,...)
    if k then
      if not t[k] then t[k] = {} end
      return t[k],init_return(t,...)
    end
end

helpers.init_return = init_return

return helpers