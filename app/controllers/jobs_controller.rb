class JobsController < ApplicationController

  skip_before_action :verify_authenticity_token
  def create
    @new_job = Job.new(user_params)
    render 'jobs/create' if @new_job.save
  end

  def show
    @job = Job.find_by(employer_type_id: params[:id])
    render 'jobs/show' if @job
  end

  def index
    @all_jobs = Job.all
    render "jobs/index" if @all_jobs
  end

  private
  def user_params
    params.permit(:url, :employer_name, :employer_description, :job_title, :job_description, :year_of_experience, :education_requirement, :industry, :base_salary, :employer_type_id)
  end
end
