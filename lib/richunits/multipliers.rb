module RichUnits

  # = Multipliers
  #
  #   Adds methods to Numeric to make working with  magnitudes
  #   such as (kilo, mega, giga, milli, micro, etc.).
  #
  module Multiplers

    # = Numeric Multipliers
    #
    # Adds methods to Numeric to make working with
    # magnitudes (kilo, mega, giga, milli, micro, etc.)
    # as well as bits and bytes easier.
    #
    #   1.kilo               #=> 1000
    #   1.milli              #=> 0.001
    #   1.kibi               #=> 1024
    #
    # To display a value in a certain denomination, simply
    # perform the inverse operation by placing the
    # multiplier called on unit (1) in the denominator.
    #
    #   1000 / 1.kilo        #=> 1
    #   1024 / 1.kibi        #=> 1
    #
    module Numeric

      # SI Multipliers

      def deka  ; self * 10 ; end
      def hecto ; self * 100 ; end
      def kilo  ; self * 1000 ; end
      def mega  ; self * 1000000 ; end
      def giga  ; self * 1000000000 ; end
      def tera  ; self * 1000000000000 ; end
      def peta  ; self * 1000000000000000 ; end
      def exa   ; self * 1000000000000000000 ; end

      # SI Fractional

      def deci  ; self.to_f / 10 ; end
      def centi ; self.to_f / 100 ; end
      def milli ; self.to_f / 1000 ; end
      def micro ; self.to_f / 1000000 ; end
      def nano  ; self.to_f / 1000000000 ; end
      def pico  ; self.to_f / 1000000000000 ; end
      def femto ; self.to_f / 1000000000000000 ; end
      def atto  ; self.to_f / 1000000000000000000 ; end

      # SI Binary

      def kibi ; self * 1024 ; end
      def mebi ; self * 1024**2 ; end
      def gibi ; self * 1024**3 ; end
      def tebi ; self * 1024**4 ; end
      def pebi ; self * 1024**5 ; end
      def exbi ; self * 1024**6 ; end

      # Bits and Bytes

      def bit   ; self ; end
      def bits  ; self ; end
      def byte  ; self * 8 ; end
      def bytes ; self * 8 ; end

    end#module Numeric

  end#module Multipliers

end#module RichUnits


class Numeric #:nodoc:
  include RichUnits::Multiplers::Numeric
end

# Copyright (c) 2008 Thomas Sawyer, Rubyworks (BSD-2-Clause)
