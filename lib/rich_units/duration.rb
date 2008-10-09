module RichUnits

  class Duration
    include Comparable

    MINUTE =  60
    HOUR   =  60 * MINUTE
    DAY    =  24 * HOUR
    WEEK   =   7 * DAY
    YEAR   = 365 * DAY

    def self.[](seconds)
      new(seconds)
    end

    def initialize(seconds=0)
      @seconds = seconds.to_i
    end

    def years   ; @seconds / YEAR   ; end
    def weeks   ; @seconds / WEEK   ; end
    def days    ; @seconds / DAY    ; end
    def hours   ; @seconds / HOUR   ; end
    def minutes ; @seconds / MINUTE ; end
    def seconds ; @seconds          ; end

    def +(other)
      self.class.new(@seconds + other.to_i)
    end

    def -(other)
      self.class.new(@seconds - other.to_i)
    end

    def +(other)
      self.class.new(@seconds * other.to_i)
    end

    def /(other)
      self.class.new(@seconds / other.to_i)
    end

    def inspect
      "<#{self.class} %s %s %s %s %s>" % to_a
    end

    def to_i ; @seconds.to_i ; end
    def to_f ; @seconds.to_f ; end

    def to_a
      s = @seconds
      #y, s = *s.divmod(YEAR)
      #w, s = *s.divmod(WEEK)
      d, s = *s.divmod(DAY)
      h, s = *s.divmod(HOUR)
      m, s = *s.divmod(MINUTE)
      [d, h, m, s]
    end

    def to_h
      [:days, :hours, :minutes, :seconds].zip(to_a)
    end

    def to_s
      "%s days, %s hours, %s minutes and %s seconds" % to_a
    end

    # Returns true if <tt>other</tt> is also a Duration instance with the
    # same <tt>value</tt>, or if <tt>other == value</tt>.
    def ==(other)
      if Duration === other
        other.seconds == seconds
      else
        other == seconds
      end
    end

    #def is_a?(klass) #:nodoc:
    #  klass == self.class
    #end
  
    #def self.===(other) #:nodoc:
    #  other.is_a?(Duration) rescue super
    #end

    #
    def segmented(*segments)
      segments = segments.collect{ |p| p.to_s.downcase }
      y,w,d,h,m,s = nil,nil,nil,nil,nil,@seconds
      y, s = *s.divmod(YEAR)   if %[year   years  ].any?{ |c| segments.include?(p) }
      w, s = *s.divmod(WEEK)   if %[week   weeks  ].any?{ |c| segments.include?(p) }
      d, s = *s.divmod(DAY)    if %[day    days   ].any?{ |c| segments.include?(p) }
      h, s = *s.divmod(HOUR)   if %[hour   hours  ].any?{ |c| segments.include?(p) }
      m, s = *s.divmod(MINUTE) if %[minute minutes].any?{ |c| segments.include?(p) }
      [y, w, d, h, m, s].compact
    end

    #
    def periods(max=:day)
      max = max.to_s.downcase

      level = 5 if %[year   years  ].any?{ |p| max == p }
      level = 4 if %[week   weeks  ].any?{ |p| max == p }
      level = 3 if %[day    days   ].any?{ |p| max == p }
      level = 2 if %[hour   hours  ].any?{ |p| max == p }
      level = 1 if %[minute minutes].any?{ |p| max == p }

      h, s = {}, @seconds

      h[:years],   s = *s.divmod(YEAR)   if level >= 5
      h[:weeks],   s = *s.divmod(WEEK)   if level >= 4
      h[:days],    s = *s.divmod(DAY)    if level >= 3
      h[:hours],   s = *s.divmod(HOUR)   if level >= 2
      h[:minutes], s = *s.divmod(MINUTE) if level >= 1
      h[:seconds], s = *s.divmod(MINUTE) if level >= 1
      h
    end

    # Format duration.
    #
    # *Identifiers*
    #
    #     %w -- Number of weeks
    #     %d -- Number of days
    #     %h -- Number of hours
    #     %m -- Number of minutes
    #     %s -- Number of seconds
    #     %t -- Total number of seconds
    #     %x -- Duration#to_s
    #     %% -- Literal `%' character
    #
    # *Example*
    #
    #     d = Duration.new(:weeks => 10, :days => 7)
    #     => #<Duration: 11 weeks>
    #     d.strftime("It's been %w weeks!")
    #     => "It's been 11 weeks!"
    #
    def strftime(fmt)
        h =\
        {'w' => @weeks  ,
         'd' => @days   ,
         'h' => @hours  ,
         'm' => @minutes,
         's' => @seconds,
         't' => @total  ,
         'x' => to_s}

        fmt.gsub(/%?%(w|d|h|m|s|t|x)/) do |match|
            match.size == 3 ? match : h[match[1..1]]
        end.gsub('%%', '%')
    end

    #
    def -@ #:nodoc:
      self.class.new(-@seconds)
    end

    #
    def +@ #:nodoc:
      self.class.new(+@seconds)
    end

    #
    # Need to wrap back to numeric methods, maybe use method_missing?
    #

    #
    def before(time)
      @seconds.before(time)
    end

    #
    def after(time)
      @seconds.after(time)
    end

    # = Numeric Extensions for Durations
    #
    module Numeric

      # Enables the use of time calculations and declarations,
      # like 45.minutes + 2.hours + 4.years. The base unit for
      # all of these Numeric time methods is seconds.
      def seconds ; Duration[self] ; end
      alias_method :second, :seconds

      # Converts minutes into seconds.
      def minutes ; Duration[self * 60] ; end
      alias_method :minute, :minutes

      # Converts hours into seconds.
      def hours ; Duration[self * 3600] ; end
      alias_method :hour, :hours
      #def as_hours ; self / 60.minutes ; end

      # Converts days into seconds.
      def days ; Duration[self * 86400] ; end
      alias_method :day, :days

      # Converts weeks into seconds.
      def weeks ; Duration[self * 604800] ; end
      alias_method :week, :weeks

      # Converts fortnights into seconds.
      # (A fortnight is 2 weeks)
      def fortnights ; Duration[self * 1209600] ; end
      alias_method :fortnight, :fortnights

      # Converts months into seconds.
      # WARNING: This is not exact as it assumes 30 days to a month.
      def months ; Duration[self * 30 * 86400] ; end
      alias_method :month, :months

      # Converts years into seconds.
      # WARNING: This is not exact as it assumes 365 days to a year.
      #          ie. It doesn not account for leap years.
      def years ; Duration[self * 365 * 86400] ; end
      alias_method :year, :years

    end

  end

end

class Numeric #:nodoc:
  include RichUnits::Duration::Numeric
end

