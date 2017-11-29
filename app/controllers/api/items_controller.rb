class Api::ItemsController < ApiController
  before_action :authenticated?

  def create
    list = List.find_by_id(params[:list_id])
    item = list.items.new(item_params)
    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    list = List.find_by_id(params[:list_id])
    item = list.items.find_by_id(params[:id])
    if item.update(item_params)
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:body, :completed)
  end

end
