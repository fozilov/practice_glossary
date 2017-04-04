class LabelRequestsController < ApplicationController
  before_action :set_label_request, only: [:show, :edit, :update, :destroy]

  # GET /label_requests
  # GET /label_requests.json
  def index
    @label_requests = LabelRequest.all
  end

  # GET /label_requests/1
  # GET /label_requests/1.json
  def show
  end

  # GET /label_requests/new
  def new
    @label_request = LabelRequest.new
  end

  # GET /label_requests/1/edit
  def edit
  end

  # POST /label_requests
  # POST /label_requests.json
  def create
    @label_request = LabelRequest.new(label_request_params)

    respond_to do |format|
      if @label_request.save
        format.html { redirect_to @label_request, notice: 'Label request was successfully created.' }
        format.json { render :show, status: :created, location: @label_request }
      else
        format.html { render :new }
        format.json { render json: @label_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /label_requests/1
  # PATCH/PUT /label_requests/1.json
  def update
    respond_to do |format|
      if @label_request.update(label_request_params)
        format.html { redirect_to @label_request, notice: 'Label request was successfully updated.' }
        format.json { render :show, status: :ok, location: @label_request }
      else
        format.html { render :edit }
        format.json { render json: @label_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /label_requests/1
  # DELETE /label_requests/1.json
  def destroy
    @label_request.destroy
    respond_to do |format|
      format.html { redirect_to label_requests_url, notice: 'Label request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_label_request
      @label_request = LabelRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def label_request_params
      params.fetch(:label_request, {})
    end
end
