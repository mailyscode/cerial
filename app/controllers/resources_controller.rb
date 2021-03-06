class ResourcesController < ApplicationController
  def index
    @resources = Resource.all

    @resources = @resources.where(resource_type: params[:resource_type]) if params[:resource_type].present?
  end

  private

  def resource_params
    params.require(:resource).permit(:title, :author, :language, :url, :resource_type)
  end
end
