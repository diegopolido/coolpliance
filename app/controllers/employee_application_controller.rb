class EmployeeApplicationController < ApplicationController
  before_action :authenticate_employee!
end
