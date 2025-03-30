class PizzasController < ApplicationController
  before_action :set_pizza, only: %i[show edit update destroy ]
  before_action :check_admin, only: [ :new, :edit, :destroy, :update, :create ]

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
        format.html { redirect_to @pizza, notice: "Pizza criada com sucesso." }
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
      render html: { message: "Pizza não encontrada" }, status: :not_found
    end
  end

  def update
    respond_to do |format|
      if @pizza.update(pizza_params)
        format.html { redirect_to @pizza, notice: "Pizza editada com sucesso" }
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
      format.html { redirect_to pizzas_path, status: :see_other, notice: "Pizza deletada com sucesso" }
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

  def check_admin
    unless current_user.is_admin?
      redirect_to root_path
    end
  end
end
