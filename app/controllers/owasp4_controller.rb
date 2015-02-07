class Owasp4Controller < ApplicationController
  def index
    @username_to_assume = "Alice"

    @passwords = Password.where(username: @username_to_assume)
  end

  def pw
    @password = Password.find(params[:id])
  end
end
