ActiveAdmin.register Pcategory do
  permit_params :Nombre

  index do
    selectable_column
    id_column
    column :Nombre

    actions
  end

  filter :Nombre


  form do |f|
    f.inputs "Pcategories Details" do
      f.input :Nombre
    end
    f.actions
  end

end