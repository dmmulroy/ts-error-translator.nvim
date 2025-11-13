local M = {}

function M.new(max_size)
  return {
    data = {},
    order = {},
    max_size = max_size or 100,
  }
end

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
