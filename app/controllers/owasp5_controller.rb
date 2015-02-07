class Owasp5Controller < ApplicationController
  def index
    @users = FakeUser.all
  end

  def show
    @user = FakeUser.find(params[:id])
  end
end
