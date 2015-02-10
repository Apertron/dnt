class Time
  def getall
    time = self
    { year: time.year,
      month: time.month,
      day: time.day,
      wday: time.wday,
      yday: time.yday,
      hour: time.hour,
      min: time.min,
      sec: time.sec,
      usec: time.usec,
      zone: time.zone }
  end
end

module DNT
  class APIv1 < Grape::API
    desc "Return the time"
    get :time do
      Time.now.getutc.getall
    end

    params do
      requires :zone, type: String, desc: 'The timezone'
    end
    get :timezone do
      TZInfo::Timezone.get(params[:zone]).now.getall
    end
  end
end
