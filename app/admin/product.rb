ActiveAdmin.register Product do
  permit_params :Nombre, :Descripcion, :Precio, :Stock, :Imagen, :Ptype_id, :Pcategory_id, :Status_id , :Trademark_id

  index do
    selectable_column
    id_column
    column :Nombre
    column :Descripcion
    column :Precio
    column :Stock
    column :Imagen
    column "Imagen" do |product|
        image_tag product.Imagen, class: 'my_image_size'
    end
    column :created_at
    column :Ptype do |product|
      product.Ptype.Nombre
    end
    column :Pcategory do |product|
      product.Pcategory.Nombre
    end
    column :Status do |product|
      product.Status.Nombre
    end
    column :Trademark do |product|
      product.Trademark.Nombre
    end
    actions
  end

  filter :Nombre
  filter :Descripcion
  filter :Precio
  filter :Stock
  filter :created_at
  filter :Ptype_Nombre, as: :string
  filter :Pcategory_Nombre, as: :string
  filter :Status_Nombre, as: :string
  filter :Trademark_Nombre, as: :string


  form do |f|
    f.inputs "Products Details" do
      f.input :Nombre
      f.input :Descripcion
      f.input :Precio
      f.input :Stock
      f.input :Imagen
      f.collection_select  :Ptype_id,Ptype.order(:id),:id,:Nombre
      f.collection_select  :Pcategory_id,Pcategory.order(:id),:id,:Nombre
      f.collection_select  :Status_id,Status.order(:id),:id,:Nombre
      f.collection_select  :Trademark_id,Trademark.order(:id),:id,:Nombre
    end
    f.actions
  end

end