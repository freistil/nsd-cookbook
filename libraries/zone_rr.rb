class ZoneResourceRecord
  def initialize(record)
    @record = record
  end

  def bind9entry
    case type
    when "A"
      "#{name} IN A #{ip_address}"
    when "MX"
      "       IN MX #{preference} #{name}"
    when "CNAME"
      "#{name} IN CNAME #{real_name}"
    end
  end

  private

  def name
    @record[:name]
  end

  def type
    @record[:type]
  end

  def preference
    @record[:preference] || 1
  end

  def ip_address
    @record[:ip_address]
  end

  def real_name
    @record[:real_name]
  end
end
