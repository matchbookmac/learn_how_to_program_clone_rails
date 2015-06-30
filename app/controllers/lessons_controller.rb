class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
    if request.path == '/lessons'
      redirect_to table_of_contents_path
    end
  end

  def new
    @lesson = Lesson.new
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      @section = Section.find(params[:lesson][:section_id])
      flash[:notice] = "Lesson added!"
      redirect_to section_path(@section)
    else
      render :new
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      flash[:notice] = "Successfully Updated!"
      redirect_to lesson_path(@lesson)
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @section = @lesson.section
    @lesson.destroy
    redirect_to section_path(@section)
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :content, :lesson_number, :section_id)
  end
end
