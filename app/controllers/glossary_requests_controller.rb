class GlossaryRequestsController < ApplicationController
  before_action :set_glossary_request, only: [:show, :edit, :update, :destroy]

  # GET /glossary_requests
  # GET /glossary_requests.json
  def index
    @glossary_requests = GlossaryRequest.all
  end

  # GET /glossary_requests/1
  # GET /glossary_requests/1.json
  def show
  end

  # GET /glossary_requests/new
  def new
    @glossary_request = GlossaryRequest.new
  end

  # GET /glossary_requests/1/edit
  def edit
  end

  # POST /glossary_requests
  # POST /glossary_requests.json
  def create
    unlocked_glossary_request_params = ActiveSupport::HashWithIndifferentAccess.new(glossary_request_params)
    @glossary_request = GlossaryRequest.new(unlocked_glossary_request_params)

    respond_to do |format|
      if @glossary_request.save
        format.html { redirect_to @glossary_request, notice: 'Glossary request was successfully created.' }
        format.json { render :show, status: :created, location: @glossary_request }
      else
        format.html { render :new }
        format.json { render json: @glossary_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glossary_requests/1
  # PATCH/PUT /glossary_requests/1.json
  def update
    respond_to do |format|
      if @glossary_request.update(glossary_request_params)
        format.html { redirect_to @glossary_request, notice: 'Glossary request was successfully updated.' }
        format.json { render :show, status: :ok, location: @glossary_request }
      else
        format.html { render :edit }
        format.json { render json: @glossary_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glossary_requests/1
  # DELETE /glossary_requests/1.json
  def destroy
    @glossary_request.destroy
    respond_to do |format|
      format.html { redirect_to glossary_requests_url, notice: 'Glossary request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glossary_request
      @glossary_request = GlossaryRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glossary_request_params
      params.fetch(:glossary_request, {})
    end
end
