class UsersController < ApplicationController
  def twitch_redirect
    params
    debugger;
    user = UserCreation.new(params[:token], Exporters::Twitch::Api).run
    render json: {}, status: :ok
  end
end