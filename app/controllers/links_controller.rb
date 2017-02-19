# :reek:InstanceVariableAssumption
# :reek:TooManyStatements

# Controller to Links resource
class LinksController < ApplicationController
  include LinksHelper
  before_action :set_link, only: [:show, :edit, :update, :destroy]
  before_action :prepare_link, only: [:create]

  # GET /links
  # GET /links.json
  def index
    @links = Link.all
  end

  # GET /links/1
  # GET /links/1.json
  def show; end

  # GET /links/new
  def new
    @link = Link.new
  end

  # GET /links/1/edit
  def edit; end

  # POST /links
  # POST /links.json
  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: translation('success') }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link, notice: translation('success') }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: translation('success') }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_link
    @link = Link.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list
  # through.
  def link_params
    params.fetch(:link, {}).permit(:url, :expire_in)
  end

  def expire_param
    params[:link][:expire_in]
  end

  def create_expire
    Time.now.utc + expire_param.blank? ? 24.hours : expire_param.to_i.hour
  end

  def prepare_link
    @link.expire_in = create_expire
    @link.key = SecureRandom.hex(4)
  end
end
