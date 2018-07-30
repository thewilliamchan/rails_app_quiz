class JobsController < ApplicationController
  def create
    job = Job.create(job_params)
    render json: { job: job }
  end

  def index
    render json: Job.all
  end

  def show
    job = Job.find(params[:id])
    render json: { job: job }
  end

  private

    def job_params
      params.require(:job).permit(:url, :employer_name, :employer_description, :job_title, :job_description, :year_of_experience, :education_requirement, :industry, :base_salary, :employment_type_id)
    end
end
