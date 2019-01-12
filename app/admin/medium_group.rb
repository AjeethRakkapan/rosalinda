ActiveAdmin.register MediumGroup do
  permit_params :name, :season, :description

  index do
    selectable_column
    id_column
    column :name
    column :season
    column :description
    actions
  end

  filter :name
  filter :season

  form do |f|
    f.inputs do
      f.input :name
      f.input :season
      f.input :description
    end
    f.actions
  end

end
