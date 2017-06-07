require "activeadmin_ajax_form/version"
require "activeadmin_ajax_form/engine"
require "activeadmin_ajax_form/dsl"

# ensure that ActiveAdmin is loaded
require "active_admin"

module ActiveAdminAjaxForm
end

# Permite que los helpers estén accesibles desde los Resources de Active Admin
ActiveAdmin::ResourceDSL.send :include, ActiveAdminAjaxForm::DSL