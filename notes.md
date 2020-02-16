## Gemfile
- Lists gems needed to run application
- Permits `bundle install` to install all necessary dependencies
- Coupled with `Gemfile.lock` which is documentation of the specific gem versions

## `app` directory
- contains MVC directories

## `models` directory
- contains application logic (classes)
- files represent components of the application, like a User, a Post, or a Comment, or some unit of work
- files typically are different classes

## `controllers` directory
- represents interface and flow of the application ("controls")
- location of application configurations, routes, and controller actions
- typically contains a class that represents an instance of the application when running (e.g. `ApplicationController`)
- contains a `configure` block, which tells the controller where to look to find the views and the public directory, such as:
```ruby
configure do
	set :views, "app/views"
	set :public_dir, "public"
end
```
- when request is made to the server to load the application, the request is processed by the controller and a controller action, such as:
```ruby
get '/' do
	erb :index
end
```