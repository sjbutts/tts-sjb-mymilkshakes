json.array!(@milkshakes) do |milkshake|
  json.extract! milkshake, :id, :shake, :ingredients, :price, :image
  json.url milkshake_url(milkshake, format: :json)
end
