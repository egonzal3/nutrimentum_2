class RecipesController < ApplicationController
  def index
    @recipes = Recipe.page(params[:page]).per(10)

    render("recipe_templates/index.html.erb")
  end

  def show
    @recipe = Recipe.find(params.fetch("id_to_display"))

    render("recipe_templates/show.html.erb")
  end

  def new_form
    @recipe = Recipe.new

    render("recipe_templates/new_form.html.erb")
  end

  def create_row
    @recipe = Recipe.new

    @recipe.ingredient1 = params.fetch("ingredient1")
    @recipe.ing1_quant = params.fetch("ing1_quant")
    @recipe.ing1_metr = params.fetch("ing1_metr")
    @recipe.ingredient2 = params.fetch("ingredient2")
    @recipe.ing2_quant = params.fetch("ing2_quant")
    @recipe.ing2_metr = params.fetch("ing2_metr")
    @recipe.ingredient3 = params.fetch("ingredient3")
    @recipe.ing3_quant = params.fetch("ing3_quant")
    @recipe.ing3_metr = params.fetch("ing3_metr")
    @recipe.ingredient4 = params.fetch("ingredient4")
    @recipe.ing4_quant = params.fetch("ing4_quant")
    @recipe.ing4_metr = params.fetch("ing4_metr")
    @recipe.ingredient5 = params.fetch("ingredient5")
    @recipe.ing5_quant = params.fetch("ing5_quant")
    @recipe.ing5_metr = params.fetch("ing5_metr")
    @recipe.total_calories = params.fetch("total_calories")
    @recipe.total_proteins = params.fetch("total_proteins")
    @recipe.total_fats = params.fetch("total_fats")
    @recipe.total_carbohydrates = params.fetch("total_carbohydrates")

    if @recipe.valid?
      @recipe.save

      redirect_back(:fallback_location => "/recipes", :notice => "Recipe created successfully.")
    else
      render("recipe_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @recipe = Recipe.find(params.fetch("prefill_with_id"))

    render("recipe_templates/edit_form.html.erb")
  end

  def update_row
    @recipe = Recipe.find(params.fetch("id_to_modify"))

    @recipe.ingredient1 = params.fetch("ingredient1")
    @recipe.ing1_quant = params.fetch("ing1_quant")
    @recipe.ing1_metr = params.fetch("ing1_metr")
    @recipe.ingredient2 = params.fetch("ingredient2")
    @recipe.ing2_quant = params.fetch("ing2_quant")
    @recipe.ing2_metr = params.fetch("ing2_metr")
    @recipe.ingredient3 = params.fetch("ingredient3")
    @recipe.ing3_quant = params.fetch("ing3_quant")
    @recipe.ing3_metr = params.fetch("ing3_metr")
    @recipe.ingredient4 = params.fetch("ingredient4")
    @recipe.ing4_quant = params.fetch("ing4_quant")
    @recipe.ing4_metr = params.fetch("ing4_metr")
    @recipe.ingredient5 = params.fetch("ingredient5")
    @recipe.ing5_quant = params.fetch("ing5_quant")
    @recipe.ing5_metr = params.fetch("ing5_metr")
    @recipe.total_calories = params.fetch("total_calories")
    @recipe.total_proteins = params.fetch("total_proteins")
    @recipe.total_fats = params.fetch("total_fats")
    @recipe.total_carbohydrates = params.fetch("total_carbohydrates")

    if @recipe.valid?
      @recipe.save

      redirect_to("/recipes/#{@recipe.id}", :notice => "Recipe updated successfully.")
    else
      render("recipe_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @recipe = Recipe.find(params.fetch("id_to_remove"))

    @recipe.destroy

    redirect_to("/recipes", :notice => "Recipe deleted successfully.")
  end
end
