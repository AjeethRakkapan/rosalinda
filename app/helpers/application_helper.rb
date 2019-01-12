module ApplicationHelper

  def prettify_time(duration)
    milliseconds = duration % 1.second.in_milliseconds

    # duration in seconds modulus number of seconds in one minute
    seconds = (duration / 1.second) % (1.minute / 1.second)

    # duration in minutes modulus number of minutes in one hour
    minutes = (duration / 1.minute) % (1.hour / 1.minute)

    # duration in hours modulus number of hours in one day
    hours = (duration / 1.hour) % (1.day / 1.hour)

    format("%02dh:%02dm:%02ds", hours, minutes, seconds)
  end
end
