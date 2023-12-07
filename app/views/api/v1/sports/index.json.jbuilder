json.array! @sports do |sport|
  json.extract! sport, :id, :name, :overview, :equipment_need, :history, :positions, :terminology, :rule
end
