json.array!(@admins_pages) do |admins_page|
  json.extract! admins_page, :id
  json.url admins_page_url(admins_page, format: :json)
end
