json.extract! post, :id, :title, :writer, :detail, :location, :estimated_price, :created_at, :updated_at
json.url post_url(post, format: :json)
