RailsAdmin.config do |config|
  config.model Term do
    edit do
      # For RailsAdmin >= 0.5.0
      field :title, :ck_editor
      field :terms_and_conditions, :ck_editor

      # For RailsAdmin < 0.5.0
      # field :description do
      #   ckeditor true
      # end
    end
  end
  config.model Story do
    edit do
      # For RailsAdmin >= 0.5.0
      field :title, :ck_editor
      field :content, :ck_editor
      field :year
      field :owner, :ck_editor
      # For RailsAdmin < 0.5.0
      # field :description do
      #   ckeditor true
      # end
    end
  end
  config.model Home do
    edit do
      field :bike_name
      field :bike_year
      field :owner_name
      field :city
      field :content, :ck_editor
      field :image1
      field :image2
      field :image
      field :title, :ck_editor
      field :main_content, :ck_editor
      field :covers
    end
  end


  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

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
