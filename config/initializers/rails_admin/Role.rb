if Role.table_exists?
  RailsAdmin.config Role do
    list do
      field :name
      field :permissions
    end
    create do
      field :name
      field :permissions
    end
    edit do
      field :name
      field :permissions
    end
  end
end 