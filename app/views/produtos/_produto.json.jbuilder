json.extract! produto, :id, :codigo, :descricao, :valor_unitario, :created_at, :updated_at
json.url produto_url(produto, format: :json)
