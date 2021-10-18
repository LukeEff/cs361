class Student
  MAX_COURSES = 5

  def initialize(schedule)
    @schedule = schedule
  end

  def remove_from_schedule(course, quarter_id)
    @schedule.remove_course_from_quarter(course, quarter_id)
  end

  def add_to_schedule(course, quarter_id)
    if not is_max_courses_or_more
      @schedule.add_course_to_quarter(course, quarter_id)
    end
  end

  def is_max_courses_or_more(quarter_id) 
    @schedule.get_quarter(quarter_id).course_size >= MAX_COURSES
  end
end
