# frozen_string_literal: true

module Admin
  class AdminController < ApplicationController
    include Admin::AuthenticationHelper

    before_action :verify_admin

  end
end
