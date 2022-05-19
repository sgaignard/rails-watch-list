class ListsController < ApplicationController
  before_action :edit, :update, :show, :destroy

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def index
    @lists = List.all
  end

  def edit
  end

  def update

  end

  def show
  end

  def destroy
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
