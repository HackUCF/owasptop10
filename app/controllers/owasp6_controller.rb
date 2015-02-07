class Owasp6Controller < ApplicationController
  def index
    @users = FakeUser.all
  end

  def admin
    @users = FakeUser.all
  end
end