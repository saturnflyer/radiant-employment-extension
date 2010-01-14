# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class EmploymentExtension < Radiant::Extension
  version "1.0"
  description "Manage your company's employment opportunities from Radiant CMS"
  url "http://github.com/saturnflyer/radiant-employment-extension"
  
  extension_config do |config|
    config.gem 'will_paginate'
    # config.extension 'radiant-extension-name'
    # config.after_initialize do
    #   run_something
    # end
  end
  
  define_routes do |map|
    map.namespace :admin, :member => { :remove => :get } do |admin|
      admin.resources :positions, :collection => {:open => :get}
      admin.resources :openings
      admin.resources :interviews
    end
  end
  
  def activate
    Page.class_eval { include EmploymentTags }
    
    tab 'Employment' do
      # add_item 'Interviews', '/admin/interviews'
      # add_item 'Responses', '/admin/responses'
      # add_item 'Openings', '/admin/positions/open'
      add_item 'Positions', '/admin/positions'
    end
    
    Radiant::AdminUI.class_eval do
      attr_accessor :positions
    end
    admin.positions = load_default_positions_regions
  end
  
  private
  
  def load_default_positions_regions
    returning OpenStruct.new do |positions|
      # positions.index = Radiant::AdminUI::RegionSet.new do |index|
      #   index.top.concat %w{search}
      #   index.positions_head.concat %w{name_column_head gender_column_head}
      #   index.person.concat %w{name_column gender_column}
      # end
      positions.new = Radiant::AdminUI::RegionSet.new do |new|
        new.top.concat %w{ header }
        new.form.concat %w{ details }
      end
      positions.edit = positions.new.clone
    end
  end
end
