
require "sinatra"

get "/" do
   <<-HTML
   <h3>Hola dime a quien saludar</h3>
   <form action="/views" method="post">
      <input type="text" name="nombre"></input>
      <input type="submit" value="submit"></input>
   </form>
   HTML
end

post "/views" do
   "¡Hola #{params[:nombre]}!"
end