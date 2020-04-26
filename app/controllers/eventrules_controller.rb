class EventrulesController < ApplicationController
  before_action :set_eventrule, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  # GET /eventrules
  def index
    @eventrules = Eventrule.all

    render json: @eventrules
  end

  # GET /eventrules/1
  def show
    render json: @eventrule
  end

  # POST /eventrules
  def create
    @eventrule = Eventrule.new(eventrule_params)

    if @eventrule.save
      render json: @eventrule, status: :created, location: @eventrule
    else
      render json: @eventrule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /eventrules/1
  def update
    if @eventrule.update(eventrule_params)
      render json: @eventrule
    else
      render json: @eventrule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /eventrules/1
  def destroy
    @eventrule.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventrule
      @eventrule = Eventrule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def eventrule_params
      params.require(:eventrule).permit(:name, :rule)
    end

    def authenticate_action 
	if request.headers["authtoken"].present?
		#if User.where()
	end
    end

end
