== OWASP Top 10 Workshop

Ruby on Rails application demonstrating some of the OWASP Top 10 vulnerabilities for presentation purposes.

Usage (rvm):

```
$ rvm install 1.9.3
$ git clone https://github.com/HackUCF/owasptop10.git
$ cd owasptop10
$ gem install bundler
$ bundle install
$ bin/rake db:create db:migrate db:seed
$ bin/rails server
```

Go to `http://localhost:3000/`

## Warning
Do not open this server to the internet. It is purposefully insecure.
