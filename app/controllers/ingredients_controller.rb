class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
    render :new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      flash[:notice] = "Ingredient successfully added!"
      redirect_to ingredients_path
    else
      render :new
    end
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    render :show
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    render :edit
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update(ingredient_params)
      redirect_to ingredient_path(@ingredient.ingredient)
    else
        render :edit
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to ingredient_path(@ingredient.ingredient)
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name)
    end

end