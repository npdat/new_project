rails new oktoboard

rails generate rspec:install

mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.scss
mv app/views/layouts/application.html.erb app/views/layouts/application.html.haml

touch app/views/layouts/_header.html.haml
touch app/views/layouts/_footer.html.haml
touch app/views/batches/create.html.haml
touch app/views/batches/list.html.haml
touch app/views/batches/approval.html.haml
touch app/views/batches/need_confirm.html.haml


