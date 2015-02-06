class Owasp6Controller < ApplicationController
  def index
    @users = User.all
  end

  def admin

  end
end