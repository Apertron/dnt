class Time
  def getall
    { year: self.year,
      month: self.month,
      day: self.day,
      wday: self.wday,
      yday: self.yday,
      hour: self.hour,
      min: self.min,
      sec: self.sec,
      usec: self.usec,
      zone: self.zone }
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
