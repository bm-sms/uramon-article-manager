ActiveAdmin.register Category do
  permit_params :site_id, :name, :description, :slug
end
