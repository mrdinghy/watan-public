json.array!(@watanprograms) do |watanprogram|
  json.extract! watanprogram, :id, :name
  json.url watanprogram_url(watanprogram, format: :json)
end
