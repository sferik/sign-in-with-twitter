class SessionsController < ApplicationController
  def create
    redirect_to root_path, notice: "Signed in to Twitter!"
  end

  def error
    redirect_to root_path, error: "Sign in failed!"
  end
end
