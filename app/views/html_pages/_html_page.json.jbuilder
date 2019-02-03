json.extract! html_page, :id, :title, :content, :active, :slug, :created_at, :updated_at
json.url html_page_url(html_page, format: :json)
