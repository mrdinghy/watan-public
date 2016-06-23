json.array!(@slides) do |slide|
  json.extract! slide, :id, :title, :body, :institute_id, :transition, :justify, :imgalt, :slotamount, :logo
  json.url slide_url(slide, format: :json)
end
