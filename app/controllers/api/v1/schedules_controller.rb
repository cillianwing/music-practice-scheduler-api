class Api::V1::SchedulesController < ApplicationController

	def index
		@schedules = Schedule.all

		render json: @schedules, status: 200
	end

	def show
		@schedule = Schedule.find(params[:id])

		render json: @schedule, status: 200
	end

	def create
		@schedule = Schedule.create(schedule_params)

		render json: @schedule, status: 200
	end

	def update
		@schedule = Schedule.find(params[:id])
		@schedule.update(schedule_params)

		render json: @schedule, status: 200
	end

	def destroy
		@schedule = Schedule.find(params[:id])
		@schedule.delete

		render json: { scheduleId: @schedule.id }
	end

	private

	def schedule_params
		params.require(:schedule).permit(:title, :practice_days, :practice_time, :instrument, :practice_areas)
	end

end

# Need to add in errors at a future time