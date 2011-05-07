class SessionsController < ApplicationController
  def create
    redirect_to root_path, notice: "Signed in to Twitter!"
  end
end
