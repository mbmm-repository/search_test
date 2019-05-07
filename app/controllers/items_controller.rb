class ItemsController < ApplicationController

  def search
    @item = Item.new
    @categories = Category.select(:category_name)
    @items = Item.all.order(classification_no: "asc")
    @items = @items.item_no_search(params[:no]) if params[:no]
    @items = @items.item_name_search(params[:name]) if params[:name]
    @items = @items.item_category1_search(params[:main_category]) if params[:main_category]
    @items = @items.item_category2_search(params[:sub_category]) if params[:sub_category]

    render "new"
  end

  def new
    @item = Item.new
    @items = Item.all.order(item_no: "asc")
    @categories = Category.select(:category_name)
  end

  # def new
  #   @item = Item.new
  #   @items = Item.all.order(item_no: "asc")
  #   # render plain: @items.inspect
  #   @categories = Category.select(:category_name)
  # end
end
