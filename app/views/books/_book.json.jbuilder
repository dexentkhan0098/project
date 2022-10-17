json.extract! book, :id, :name, :title, :published_at, :created_at, :updated_at
json.url book_url(book, format: :json)
