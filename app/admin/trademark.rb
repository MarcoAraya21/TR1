ActiveAdmin.register Trademark do
  permit_params :Nombre

  index do
    selectable_column
    id_column
    column :Nombre

    actions
  end

  filter :Nombre


  form do |f|
    f.inputs "Trademarks Details" do
      f.input :Nombre
    end
    f.actions
  end

end