json.array! @sports do |sport|
  json.extract! sport, :id, :name, :overview
end
