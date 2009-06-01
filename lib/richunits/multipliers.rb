# TITLE:
#
#   Multipliers
#
# DESCRIPTION:
#
#   Adds methods to Numeric to make working with
#   magnitudes (kilo, mega, giga, milli, micro, etc.)
#   as well as bits and bytes easier.
#
# COPYRIGHT:
#
#   Copyright (c) 2005 Thomas Sawyer
#
# LICENSE:
#
#   Ruby License
#
#   This module is free software. You may use, modify, and/or redistribute this
#   software under the same terms as Ruby.
#
#   This program is distributed in the hope that it will be useful, but WITHOUT
#   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
#   FOR A PARTICULAR PURPOSE.
#
# HISTORY:
#
#   Thanks to Rich Kilmer and bytes.rb which inspired this library.
#
# AUTHORS:
#
#   - Thomas Sawyer
#
# NOTES:
#
#   - This library is not compatible with STICK's units.rb (an spin-off
#     of Facets old units.rb library). Do not attempt to use both at the same time.

#
module RichUnits

  # = Multipliers
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

