class BaseIngredientsController < ApplicationController
  def index
    @base_ingredients = BaseIngredient.all

    render("base_ingredient_templates/index.html.erb")
  end

  def show
    @base_ingredient = BaseIngredient.find(params.fetch("id_to_display"))

    render("base_ingredient_templates/show.html.erb")
  end

  def new_form
    @base_ingredient = BaseIngredient.new

    render("base_ingredient_templates/new_form.html.erb")
  end

  def create_row
    @base_ingredient = BaseIngredient.new

    @base_ingredient.name = params.fetch("name")
    @base_ingredient.calories = params.fetch("calories")
    @base_ingredient.proteins = params.fetch("proteins")
    @base_ingredient.fats = params.fetch("fats")
    @base_ingredient.carbohydrates = params.fetch("carbohydrates")

    if @base_ingredient.valid?
      @base_ingredient.save

      redirect_back(:fallback_location => "/base_ingredients", :notice => "Base ingredient created successfully.")
    else
      render("base_ingredient_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @base_ingredient = BaseIngredient.find(params.fetch("prefill_with_id"))

    render("base_ingredient_templates/edit_form.html.erb")
  end

  def update_row
    @base_ingredient = BaseIngredient.find(params.fetch("id_to_modify"))

    @base_ingredient.name = params.fetch("name")
    @base_ingredient.calories = params.fetch("calories")
    @base_ingredient.proteins = params.fetch("proteins")
    @base_ingredient.fats = params.fetch("fats")
    @base_ingredient.carbohydrates = params.fetch("carbohydrates")

    if @base_ingredient.valid?
      @base_ingredient.save

      redirect_to("/base_ingredients/#{@base_ingredient.id}", :notice => "Base ingredient updated successfully.")
    else
      render("base_ingredient_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @base_ingredient = BaseIngredient.find(params.fetch("id_to_remove"))

    @base_ingredient.destroy

    redirect_to("/base_ingredients", :notice => "Base ingredient deleted successfully.")
  end
end
