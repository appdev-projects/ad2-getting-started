json.extract! book, :id, :title, :description, :released, :created_at, :updated_at
json.url book_url(book, format: :json)
