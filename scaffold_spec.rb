Scaffoldhub::Specification.new do

  base_url  'https://github.com/toamitkumar/facebook_autocomplete'

  name 'facebook_autocomplete'

  # Metadata about this scaffold - this info is only used for display on scaffoldhub.org:
  metadata do

    description 'Create Facebook style JQuery autocomplete on a selected text field.'

    # 4x3 aspect ratio screen shot
    screenshot ''

    # Tag(s) to help scaffoldhub.org users find your scaffold
    tag 'jquery'
    tag 'autocomplete'
    tag 'facebook autocomplete'

  end

  # Define a model template - this ERB file will be used to generate a new
  # model class with this path & filename: app/models/NAME.rb
  model 'templates/model.rb'

  # Define an ActiveRecord migration template - this ERB file will be used to generate a new
  # migration class with this path & filename: db/migrate/TIMESTAMP_create_PLURAL_NAME.rb
  migration 'templates/migration.rb'

  # Define a controller template - this ERB file will be used to generate a new
  # controller class with this path & filename: app/controllers/PLURAL_NAME.rb
  controller 'templates/controller.rb'

  # You can use "with_options" to specify the same source folder for a series of templates:
  with_options :src => 'templates' do

    # Define a view template - this ERB file will be used to generate a new
    # view file with this path: app/views/PLURAL_NAME/...
    view '_form.html.erb'
    view 'new.html.erb'
    view 'edit.html.erb'
    view 'index.html.erb'
    view 'show.html.erb'

    # The layout file needs a different dest folder and file name
    template 'layout.erb', :dest => 'app/views/layouts', :rename => 'PLURAL_NAME.html.erb'
  end

  with_options :src => 'javascripts', :dest => 'public/javascripts' do
    file 'jquery-1.6.min.js'
    file 'jquery.fcbkcomplete.min.js'
  end

  file 'stylesheets/autocomplete.css', :dest => 'public/stylesheets'
  file 'images/close.gif', :dest => 'public/images'
end
