json.array! @sports do |sport|
  json.extract! sport, :id, :name, :overview, :equipment_need, :history, :positions, :terminology, :rule
  json.positions sport.positions do |position|
    json.extract! position, :description, :famous_players
  end
end
