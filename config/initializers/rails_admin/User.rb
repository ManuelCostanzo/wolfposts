if User.table_exists?
  RailsAdmin.config User do
    list do
      field :id
      field :email
      field :username
      field :role
    end
    create do
      field :email
      field :username
      field :password
      field :role
    end
    edit do
      field :email
      field :username
      field :password
      field :role
    end
  end
end 