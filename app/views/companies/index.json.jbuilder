json.array!(@companies) do |company|
  json.extract! company, :id, :name, :manager, :status, :terms
  json.url company_url(company, format: :json)
end
