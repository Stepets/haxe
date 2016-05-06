local _hx_array_mt = {
  __newindex = function(t,k,v)
    t.length = math.max(t.length, k + 1)
    rawset(t,k,v)
  end
}

local function _hx_tabArray(tab,length)
  tab.length = length
  return setmetatable(tab, _hx_array_mt)
end

local function _hx_enumEntry(tab)
  return tab
end