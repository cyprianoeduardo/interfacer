RailsAdmin.config do |config|

  # title of the app
  config.main_app_name = ["INTERFACER", "Integrated Project Communication Management System"]

  # label of navigation bar
  config.navigation_static_label = "Support"

  # links of navigation bar
  config.navigation_static_links = {
    'IT Support Contractor' => 'mailto:cypriano.eduardo@gmail.com'
  }
  config.model Company do
    parent User
    navigation_icon 'fa fa-building'
  end

  config.model Discipline do
    navigation_icon 'fa fa-tags'
    list do
      exclude_fields :updated_at, :created_at
    end 
  end

  config.model Install do
    visible false
  end

  config.model Request do
    weight -2
    navigation_icon 'fa fa-file'
  end

  config.model Response do
    parent Request
    navigation_icon 'fa fa-file-text'
    list do
      exclude_fields :updated_at
    end 
  end

  config.model User do
    weight -1
    navigation_icon 'fa fa-user' 
  end

  # All columns show up on a single page. https://github.com/sferik/rails_admin/wiki/Horizontally-scrolling-table-with-frozen-columns-in-list-view
  config.total_columns_width = 9999999

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  #necessary to work with Rails 5.2. Reference: https://github.com/sferik/rails_admin/issues/3014
  config.excluded_models = ['ActiveStorage::Blob', 'ActiveStorage::Attachment']

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
