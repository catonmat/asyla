class TasksController < ApplicationController
  def index
    @tasks = Task.where(user: current_user)
    # where(user: current_user)

    if params[:date].nil?
      @date = Time.now
    else
      @date = Time.parse(params[:date])
    end
  end

  def calendar
    @tasks = Task.where(user: current_user)
  end

  def map
    # @tasks = Task.where.not(latitude: nil, longitude: nil)

    # Used for 'show single task on map'
    @tasks = []
    @tasks << Task.find(params[:task_id])

    if params[:date].nil?
      @date = Time.now
    else
      @date = Time.parse(params[:date])
    end
    @markers = @tasks.map do |task|
      {
        lng: task.longitude,
        lat: task.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { task: task })
      }
    end
  end
end
