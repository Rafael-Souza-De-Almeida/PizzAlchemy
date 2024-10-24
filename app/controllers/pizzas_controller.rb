class PizzasController < ApplicationController
  before_action :set_pizza, only: %i[show edit update destroy ]

  def index
    @pizzas = Pizza.all
  end


  def new
    @pizza = Pizza.new
  end



  def create
    @pizza = Pizza.new(pizza_params)

    respond_to do |format|
      if @pizza.save
        format.html { redirect_to @pizza, notice: "Pizza was successfully created." }
        format.json { render :show, status: :created, location: @pizza }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  def find_by_type
    @pizzas = Pizza.where("pizza_type = ?", params[:pizza_type])

    if @pizzas.any?
      render "index"
    else
      render json: { message: "No pizza found with that type" }, status: :not_found
    end
  end

  def update
    respond_to do |format|
      if @pizza.update(pizza_params)
        format.html { redirect_to @pizza, notice: "Pizza was successfully updated." }
        format.json { render :show, status: :ok, location: @pizza }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pizza.destroy!

    respond_to do |format|
      format.html { redirect_to pizzas_path, status: :see_other, notice: "Pizza was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_pizza
    @pizza = Pizza.find(params[:id])
  end

    def pizza_params
      params.expect(pizza: [ :name, :price, :description, :photo, :pizza_type ])
    end
end

# No Rails, todas as variáveis de instância definidas no controlador (como @pizza) ficam disponíveis automaticamente
#  para as views correspondentes à ação que está sendo executada. Portanto, quando a ação show é chamada, a variável
#   @pizza está disponível para ser usada na view show.html.erb sem precisar ser explicitamente passada.
