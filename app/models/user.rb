class User < ApplicationRecord

  cm_admin do
    actions only: []
    cm_show do
      page_title "User show"
      page_description "To show details about the user"
      field :first_name, label: 'First Name'
      field :last_name, label: 'Last name'
    end
    cm_index do
      page_title "User lists"
      page_description "To list basic information about user 1"
      # all_db_columns exclude: [:created_at, :updated_at]
      filter 'email', 'search', placeholder: 'Search based on first name and email'
      filter [:created_at], :date
      column :first_name
      column :last_name
      column :age
    end
  end
end
