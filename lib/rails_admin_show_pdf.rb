require "rails_admin_show_pdf/engine"

module RailsAdminShowPdf
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class ShowPdf < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :controller do
          Proc.new do
            render :action => @action.template_name, :layout => false
          end
        end

        register_instance_option :object_level do
          true
        end
      end
    end
  end
end

