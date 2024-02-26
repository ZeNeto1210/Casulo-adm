json.extract! cliente, :id, :nome, :endereco, :cnpj, :telefone, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
