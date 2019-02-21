module Mutations
  class CreateUser < BaseMutation

    class AuthProviderSignupData < Types::BaseInputObject
      argument :email, Types::AuthProviderEmailInput, required: false
    end

    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :auth_provider, AuthProviderSignupData, required: false
    argument :twitch_access_token, String, required: false

    type Types::UserType

    def resolve(first_name: nil, last_name: nil, twitch_access_token: nil, auth_provider: nil)
      User.create!(
        first_name: first_name,
        last_name: last_name,
        twitch_access_token: twitch_access_token,
        email: auth_provider&.[](:email)&.[](:email),
        password: auth_provider&.[](:email)&.[](:password)
      )
    end
  end
end
