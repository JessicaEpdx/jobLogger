class JobsController < ApplicationController
  def index
    @jobs= Job.all
  end

  def new
    @job = Job.new
    @jobs = Job.all
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      @jobs = Job.all
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def job_params
      params.require(:job).permit(:company, :description, :interviewer)
    end
end
