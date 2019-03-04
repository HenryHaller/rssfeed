class ItemsController < ApplicationController
  def index
    @items = Item.all.reverse
    render layout: false
  end

  def create
    count = Item.count + 1
    @item = Item.create!(title: params[:title])
    @items = Item.last(10)
    head :created
  end
end
