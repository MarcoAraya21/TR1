ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :usertype_id, :Nombre

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :usertype do |user|
      user.usertype.Nombre
    end
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :usertype_Nombre, as: :string
  filter :created_at

  form do |f|
    f.inputs "Users Details" do
      f.input :email
      f.input :Nombre
      f.collection_select  :usertype_id,Usertype.order(:id),:id,:Nombre
    end
    f.actions
  end

end