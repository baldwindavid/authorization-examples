class WelcomeController < ApplicationController

  before_filter :require_admin, only: :secret

  def index
  end

  def secret
  end

end
