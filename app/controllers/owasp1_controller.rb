class Owasp1Controller < ApplicationController
  def index
    @connection = ActiveRecord::Base.establish_connection(
        :adapter => "sqlite3",
        :host => "localhost",
        :database => "db/development.sqlite3"
       # :username => "root",
       # :password => "root123"
    )

    if (params[:q])
      @sql = "SELECT * FROM \"fake_users\" WHERE name = '#{params[:q]}'"
    else
      @sql = "SELECT * FROM \"fake_users\""
    end

    if (params[:debug])
      @debug = true
    end
    @results = @connection.connection.execute(@sql)
  end
end


# http://localhost:3000/owasp1?q=Robert' union select 1,2,3,4,5,6,7,8-- -
# http://localhost:3000/owasp1?q=Robert' union select 1,2,3,4,5,6,7,8 FROM fake_users-- -