ActiveAdmin.register Medium do
  permit_params :name, :media_type, :episode_number, :media_group_id, :description

  index do
    selectable_column
    id_column
    column :name
    column :media_type
    column :episode_number
    column :media_group_id
    actions
  end

  filter :name
  filter :media_type
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :media_type
      f.input :episode_number
      f.input :media_group_id
      f.input :description
    end
    f.actions
  end

end
