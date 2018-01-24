json.array! @contributors do |contributor|
  json.extract! contributor, :name, :description, :industry, :headline
  if contributor.type == 'Sponser'
    json.sponser_level contributor.sponser_level_color
    json.sponser_level_name contributor.sponser_level_name
  end
  if contributor.type == 'Partner'
    json.partner_level contributor.partnership_level_color
    json.sponser_level_name contributor.partnership_level_name
  end
end
