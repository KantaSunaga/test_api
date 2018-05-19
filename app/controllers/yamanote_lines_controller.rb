class YamanoteLinesController < ApplicationController
  before_action :set_yamanote_line, only: [:show, :edit, :update, :destroy]

  # GET /yamanote_lines
  # GET /yamanote_lines.json
  def index
    binding.pry
    @yamanote_lines = YamanoteLine.all
  end

  # GET /yamanote_lines/1
  # GET /yamanote_lines/1.json
  def show
  end

  # GET /yamanote_lines/new
  def new
    @yamanote_line = YamanoteLine.new
  end

  # GET /yamanote_lines/1/edit
  def edit
  end

  # POST /yamanote_lines
  # POST /yamanote_lines.json
  def create
    @yamanote_line = YamanoteLine.new(yamanote_line_params)

    respond_to do |format|
      if @yamanote_line.save
        format.html { redirect_to @yamanote_line, notice: 'Yamanote line was successfully created.' }
        format.json { render :show, status: :created, location: @yamanote_line }
      else
        format.html { render :new }
        format.json { render json: @yamanote_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yamanote_lines/1
  # PATCH/PUT /yamanote_lines/1.json
  def update
    respond_to do |format|
      if @yamanote_line.update(yamanote_line_params)
        format.html { redirect_to @yamanote_line, notice: 'Yamanote line was successfully updated.' }
        format.json { render :show, status: :ok, location: @yamanote_line }
      else
        format.html { render :edit }
        format.json { render json: @yamanote_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yamanote_lines/1
  # DELETE /yamanote_lines/1.json
  def destroy
    @yamanote_line.destroy
    respond_to do |format|
      format.html { redirect_to yamanote_lines_url, notice: 'Yamanote line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yamanote_line
      @yamanote_line = YamanoteLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yamanote_line_params
      params.require(:yamanote_line).permit(:station)
    end
end
