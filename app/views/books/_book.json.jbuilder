json.extract! book, :id, :title, :author, :genre, :publisher, :description, :created_at, :updated_at
json.url book_url(book, format: :json)
json.description book.description.to_s
