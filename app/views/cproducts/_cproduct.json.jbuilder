json.extract! cproduct, :id, :Nombre, :Descripcion, :Imagen, :User_id, :Pcategory_id, :Status_id, :Trademark_id, :created_at, :updated_at
json.url cproduct_url(cproduct, format: :json)
