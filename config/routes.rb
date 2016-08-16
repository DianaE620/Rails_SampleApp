Rails.application.routes.draw do
	
	root 'static_pages#home'	
  get 'static_pages/home'

  get 'static_pages/help'

  get  'static_pages/about'
  get  'static_pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#Notas - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

# rails undoing things models controllers db
# https://www.railstutorial.org/book/static_pages#aside-undoing_things
# shortcur creando un nuevo archivo
# touch app/views/static_pages/about.html.erb
=begin
As mentioned in Learn Enough Command Line to Be Dangerous, touch is designed to update the modification 
timestamp of a file or directory without otherwise affecting it, but as a side-effect it creates a new 
(blank) file if one doesn’t already exist. (If using the cloud IDE, you may have to refresh the file tree 
as described in Section 1.3.1. This is a good example of technical sophistication (Box 1.1).)9	
=end