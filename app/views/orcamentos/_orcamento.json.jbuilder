json.extract! orcamento, :id, :nome, :cnpj, :descricao, :codigo, :quantidade, :valor, :created_at, :updated_at
json.url orcamento_url(orcamento, format: :json)
