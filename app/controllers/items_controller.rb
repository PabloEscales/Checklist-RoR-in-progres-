class ItemsController < ApplicationController
  before_action :find_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all.order("created_at DESC")
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render 'new'
    end

    def edit
    end

    def update
      if @item.update(item_params)
        redirect_to item_path(@item)
      else
        render 'edit'
      end
    end

    def destroy
    end

  end

  private
  def
    item_params
    params.required(:item).permit(:title, :description)
  end

  def find_item
    @item = Item.find(params[:id])
  end

end
