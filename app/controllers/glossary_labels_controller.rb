class GlossaryLabelsController < ApplicationController
  before_action :set_glossary_label, only: [:show, :edit, :update, :destroy]

  # GET /glossary_labels
  # GET /glossary_labels.json
  def index
    @glossary_labels = GlossaryLabel.all
  end

  # GET /glossary_labels/1
  # GET /glossary_labels/1.json
  def show
  end

  # GET /glossary_labels/new
  def new
    @glossary_label = GlossaryLabel.new
  end

  # GET /glossary_labels/1/edit
  def edit
  end

  # POST /glossary_labels
  # POST /glossary_labels.json
  def create
    @glossary_label = GlossaryLabel.new(glossary_label_params)

    respond_to do |format|
      if @glossary_label.save
        format.html { redirect_to @glossary_label, notice: 'Glossary label was successfully created.' }
        format.json { render :show, status: :created, location: @glossary_label }
      else
        format.html { render :new }
        format.json { render json: @glossary_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glossary_labels/1
  # PATCH/PUT /glossary_labels/1.json
  def update
    respond_to do |format|
      if @glossary_label.update(glossary_label_params)
        format.html { redirect_to @glossary_label, notice: 'Glossary label was successfully updated.' }
        format.json { render :show, status: :ok, location: @glossary_label }
      else
        format.html { render :edit }
        format.json { render json: @glossary_label.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glossary_labels/1
  # DELETE /glossary_labels/1.json
  def destroy
    @glossary_label.destroy
    respond_to do |format|
      format.html { redirect_to glossary_labels_url, notice: 'Glossary label was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glossary_label
      @glossary_label = GlossaryLabel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glossary_label_params
      params.fetch(:glossary_label, {})
    end
end
