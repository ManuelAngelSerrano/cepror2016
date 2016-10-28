#Pasos del ejemplo

1. rails new example
2. Añadir a .gemfile
    - rspec_rails
    - factory_girl
    - faker
    - database_cleaner
3. bundle install
4. añadimos factory_girl y database_cleaner a rails_helper
5. creamos spec/models/user_spec.rb
6. spec user_spec.rb
7. rails g migration CreateUser email:string nick:string
8. añadimos t.timestamps al archivo de migración
9. Creamos app/models/user.rb
10. Creamos una factoria que nos cree usuarios. En spec creamos carpeta factories 
    y ahí el archivo users.rb spec/factories/users.rb
11. En rails c -> Podemos crear un user: FactoryGirl.create(:user)
12. Si ponemos rails c --sandbox no guarda datos en la base de datos
13. En rails c podemos usar User.new, User.save, User.count, etc....
14. rspec spec/models/user_spec.rb y deben salir los 3 test en verde
15. En rails c hacemos u = User.new(email: "hola@hi.com, nick: nil) y no debería dejar
16. Hacemos lo mismo con  app/models/message_spec.rb
17. rails g migration CreateMessage user:references content:string
18. En la migración añadimos t.timestamps
19. rake db:migrate
20. Creamos app/models/message.rb
21. reamos spec/factories/messages.rb
22. vamos a usar slim para la iu (.html.slim)
23. = pinta y - ejecuta
24. Instalamos la gema slim en el gemfile
25. Creamos app/views/layouts/application.html.slim
26. Creamos los partials de las vistas
27. Vamos a los controladores
28. app/controllers/application_controller.rb
29. Vamos con el config/routes.rb ->   resources :users, only: :show
30. Creamos la carpeta spec/controllers
32. Creamos los archivos spec/controllers/users_controller_spec.rb
33. creamos app/controllers/user_controller.rb
34. Creamos la carpeta app/views/users
35. Creamos el archivo app/views/users/show.html.slim
36. Si es necesario instalar la gema rails-controller-testing (Sólo rails 5)
37. Vamos con devise
