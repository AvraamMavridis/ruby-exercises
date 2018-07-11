def work_needed(project_minutes, freelances)
  freelances_time = freelances.reduce(0) { |sum, (hours, minutes)| sum + minutes + (hours* 60) }
  time_to_work = project_minutes - freelances_time
  time_to_work_hours = time_to_work / 60
  time_to_work_minutes = time_to_work - (time_to_work_hours*60) 
  
  return "Easy Money!" if time_to_work <= 0
  "I need to work #{time_to_work_hours} hour(s) and #{time_to_work_minutes} minute(s)"
end
