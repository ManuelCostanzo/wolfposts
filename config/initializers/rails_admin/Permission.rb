if Permission.table_exists?
  RailsAdmin.config Permission do
    list do
      field :subject_class
      field :action
      field :name
      field :description
    end
    create do
      field :subject_class
      field :action
      field :name
      field :description
    end
    edit do
      field :subject_class
      field :action
      field :name
      field :description
    end
  end
end 