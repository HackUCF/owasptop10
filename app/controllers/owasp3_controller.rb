class Owasp3Controller < ApplicationController
  def index
    @comments = Comment.where(cat: "XSS")
  end

  def add
    comm = Comment.create(comment_params)
    comm.username = "Alice"
    comm.cat = "XSS"
    comm.save()
    redirect_to(controller: "owasp3", action: "index")
  end

  def clear
    Comment.delete_all
    redirect_to(controller: "owasp3", action: "index")
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end
end