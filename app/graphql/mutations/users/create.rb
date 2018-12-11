class Mutations::Users::Create < GraphQL::Function
  argument :twitch_access_token, !types.String

  def call(obj, args, ctx)

  end
end
