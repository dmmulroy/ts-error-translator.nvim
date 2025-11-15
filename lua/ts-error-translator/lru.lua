local M = {}

---@class LRUCache
---@field data table<string, any> Map of keys to cached values
---@field order string[] List of keys in LRU order (most recent first)
---@field max_size number Maximum cache size

---Create new LRU cache
---@param max_size? number Max entries (default: 100)
---@return LRUCache
function M.new(max_size)
  return {
    data = {},
    order = {},
    max_size = max_size or 100,
  }
end

---Get value from cache, updates LRU position
---@param lru LRUCache
---@param key string
---@return any|nil Cached value or nil if not found
function M.get(lru, key)
  if not lru.data[key] then
    return nil
  end

  -- Move to front (most recent)
  for i, k in ipairs(lru.order) do
    if k == key then
      table.remove(lru.order, i)
      break
    end
  end
  table.insert(lru.order, 1, key)

  return lru.data[key]
end

---Set value in cache, evicts LRU entry if over capacity
---@param lru LRUCache
---@param key string
---@param value any
function M.set(lru, key, value)
  if lru.data[key] then
    -- Update existing
    lru.data[key] = value
    return M.get(lru, key) -- refresh position
  end

  -- Add new
  lru.data[key] = value
  table.insert(lru.order, 1, key)

  -- Evict if over capacity
  if #lru.order > lru.max_size then
    local old_key = table.remove(lru.order)
    lru.data[old_key] = nil
  end
end

return M
