class ContributorsController < ApplicationController
  def index
    if params[:type].present?
      @contributors = Contributor.where type: params[:type]
    else
      @contributors = Contributor.all
      render json: @contributors
    end
  end

  def create
   contributor = Contributor.new contributor_params(params[:type])
     if contributor.save
       render json: contributor
     else
       render json: contributor.errors.full_messages, status: :unauthorized
     end
 end

 private
  def contributor_params(type)
    case type
    when "Exhibitor"
      params.permit(:name, :description, :headline , :industry)
    when "Sponser"
       params.permit(:name, :description, :headline , :industry, :sponser_level_name, :sponser_level_color)
    when "Partner"
       params.permit(:name, :description, :headline , :industry, :partnership_level_name, :partnership_level_color)
    end

  end
end
