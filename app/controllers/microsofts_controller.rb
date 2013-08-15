class MicrosoftsController < ApplicationController
  before_action :set_microsoft, only: [:show, :edit, :update, :destroy]

  # GET /microsofts
  # GET /microsofts.json
  def index
    @microsofts = Microsoft.all
  end

  # GET /microsofts/1
  # GET /microsofts/1.json
  def show
  end

  # GET /microsofts/new
  def new
    @microsoft = Microsoft.new
  end

  # GET /microsofts/1/edit
  def edit
  end

  # POST /microsofts
  # POST /microsofts.json
  def create
    @microsoft = Microsoft.new(microsoft_params)

    respond_to do |format|
      if @microsoft.save
        format.html { redirect_to @microsoft, notice: 'Microsoft was successfully created.' }
        format.json { render action: 'show', status: :created, location: @microsoft }
      else
        format.html { render action: 'new' }
        format.json { render json: @microsoft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microsofts/1
  # PATCH/PUT /microsofts/1.json
  def update
    respond_to do |format|
      if @microsoft.update(microsoft_params)
        format.html { redirect_to @microsoft, notice: 'Microsoft was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @microsoft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microsofts/1
  # DELETE /microsofts/1.json
  def destroy
    @microsoft.destroy
    respond_to do |format|
      format.html { redirect_to microsofts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microsoft
      @microsoft = Microsoft.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microsoft_params
      params.require(:microsoft).permit(:content, :user_id)
    end
end
