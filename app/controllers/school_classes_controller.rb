class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update, :destroy]

  # GET /school_classes
  # GET /school_classes.json
  def index
    @school_classes = SchoolClass.all
  end

  # GET /school_classes/1
  # GET /school_classes/1.json
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  # GET /school_classes/new
  def new
    @school_class = SchoolClass.new
  end

  # GET /school_classes/1/edit
  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  # POST /school_classes
  # POST /school_classes.json
  def create
    @school_class = SchoolClass.new(school_class_params)

    @school_class.save
  redirect_to school_class_path(@school_class)
  end

  # PATCH/PUT /school_classes/1
  # PATCH/PUT /school_classes/1.json
  def update
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def destroy
    @school_class = SchoolClass.find(params[:id])
    @school_class.destroy

    
  end

  # DELETE /school_classes/1
  # DELETE /school_classes/1.json
  # def destroy
  #   @school_class.destroy
  #   respond_to do |format|
  #     format.html { redirect_to school_classes_url, notice: 'School class was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end
end
