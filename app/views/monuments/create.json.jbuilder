# json.chave valor
if @monument.persisted?
  # se o monumento foi salvo, retornar o monumento criado + formulário vazio
  json.form render(partial: 'form', formats: :html, locals: { monument: Monument.new })
  json.inserted_item render(partial: 'monument', formats: :html, locals: { monument: @monument })
else
  # se o monumento não foi salvo (erro de validação), retornar o formulário com os erros
  json.form render(partial: 'form', formats: :html, locals: { monument: @monument })
end

# { form: <> }
