class ClassroomsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @classrooms = Classroom.all
    render json: @classrooms, each_serializer: ClassroomSerializer
  end

  def create
    @classroom = Classroom.create(name: params[:classroom][:name])
    render json: @classroom
  end

  def show
    @classroom = Classroom.find(params[:id])
    render json: @classroom, each_serializer: ClassroomSerializer
  end

  def update
    @classroom = Classroom.find(params[:id]).update(name: params[:classroom][:name])
    render json: @classroom, each_serializer: ClassroomSerializer
  end

  def destroy
    @classroom = Classroom.find(params[:id]).destroy
    render json: @classroom, each_serializer: ClassroomSerializer
  end
end
