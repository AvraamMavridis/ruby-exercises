require "date"

def driver((forename, mname, surname, date, gender))
  s5 = surname.upcase.slice(0..4).ljust(5, '9')
  s6 = date[-2]
  s11 = date[-1]
  date = Date.parse(date)
  month = date.strftime("%m")
  seventh = month[0].to_i
  seventh += 5 if gender === "F"
  s78 = seventh.to_s + month[1]
  s910 = date.strftime("%d")
  s13 = mname[0] || ""
  s1213 = (forename[0]+s13).ljust(2, '9')
  s5 + s6 + s78 + s910 + s11 + s1213 + "9AA"
end
