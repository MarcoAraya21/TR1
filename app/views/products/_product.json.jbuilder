json.extract! product, :id, :Nombre, :Descripcion, :Precio, :Stock, :Imagen, :Ptype_id, :Pcategory_id, :Status_id, :Trademark_id, :created_at, :updated_at
json.url product_url(product, format: :json)
