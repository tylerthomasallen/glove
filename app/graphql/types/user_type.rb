module Types
  class UserType < BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :email, String, null: false
    field :twitch_access_token, String, null: true
  end
end
