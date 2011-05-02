module ApplicationHelper
   def title
      # Esto es un helper que se usa en application.html.erb (layout)
      my_title = "Tienda LaFanca"
      my_title = "#{my_title}: #{@title} " if @title
      my_title
   end
end
