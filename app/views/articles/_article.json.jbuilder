json.article article, :id, :title
json.author do
  json.name article.author&.name
end