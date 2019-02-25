class BaseDeviseController < ApplicationController
  layout :layout_by_resource

  private

  def layout_by_resource
    if resource_name == :employee
      "login"
    else
      "admin"
    end
  end
end
