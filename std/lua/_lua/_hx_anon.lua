local function _hx_anon(...)
  local ret = {};
  local tab = {...};
  local max = #tab;
  for cur = 1, max, 2 do
    local v = tab[cur];
    ret[v] = tab[cur+1];
  end
  return ret
end

local function _hx_empty()
  return {}
end

local function _hx_o(obj)
  return obj
end

local function _hx_new(prototype)
  return setmetatable({}, {__index=prototype})
end
