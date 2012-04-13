require "rails_admin_show_pdf/engine"

module RailsAdminShowPdf
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class ShowPdf < Base
        RailsAdmin::Config::Actions.register(self)
        RailsAdmin::Config::Actions.all
        RailsAdmin::Config::Actions.send key

        register_instance_option :controller do
          Proc.new do

            template_name = [@abstract_model.model_name.downcase, @action.template_name].join('_')
            action_name = if template_exists?("rails_admin/main/#{template_name}")
              template_name
            else
              @action.template_name
            end
            render :action => action_name, :layout => false
          end
        end

        # Is the action on an object scope (Example: /admin/team/1/edit)
        register_instance_option :member? do
          true
        end

        register_instance_option :object_level do
          true
        end
      end
    end
  end
end

