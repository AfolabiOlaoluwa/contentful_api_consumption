class RecipesController < ApplicationController
  before_action :set_recipe

  def homepage; end

  def show; end

  private

  def set_recipe
    response ||= ContentfulService.call(ENV['SPACE_ID'], ENV['ACCESS_TOKEN'])

    if response.failure?
      flash[:notice] = 'Site under maintenance.'
    else
      @recipe = response.result
      @recipe_details = @recipe.find { |recipe| recipe.id == params[:id] }

      flash[:notice] = 'Recipe not found.' unless @recipe
    end
  end
end