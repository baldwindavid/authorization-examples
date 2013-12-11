class CompaniesController < ApplicationController

  def index
  end

  def show
  end

  def edit
    authorize! company.publicly_traded && current_user.age > 20
    # authorize! company.editable_by?(current_user)
    # authorize! current_user.can_edit?(company)
  end

  private

    helper_method :companies
    helper_method :company

    def company
      @company ||= companies.select {|c| c.id == params[:id].to_i }.first
    end

    def companies
      @companies ||= [
        Company.new(20, "Apple", true),
        Company.new(183, "FoxtrotCo", false)
      ]
    end

end
