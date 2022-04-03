class HomeController < ApplicationController
  def index
  end

  # Temporary using this for user admin view
  def users
    @users = User.all
  end
end
