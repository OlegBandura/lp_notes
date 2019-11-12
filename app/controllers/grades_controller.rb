# frozen_string_literal: true

class GradesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    binding.pry
  end

  def create
    
  end

  def moodle_save
    grades = JSON.parse(params[:grades])['userGrades']
    grades.each_value do |grade|
      grade = Grade.new(
        {
          firstname:    grade.first,
          lastname:     grade.second,
          moodle_id:    grade.third,
          email:        grade[5],
          examen_note:  grade.third_to_last,
          total_course: grade.second_to_last
        }
      )

      grade.save
    end

    render status: :ok
  end

  private

  def grades_params
    params.permit(:grades)
  end
end
