# Frozen-string-literal: true
# Copyright: 2015-2016 Jordon Bedwell - MIT License
# Encoding: utf-8

module Simple
  module Ansi
    extend self

    ANSI_MATCH = /#{format("%c", 27)}\[(?:\d+)(?:;\d+)*(j|k|m|s|u|A|B|G)|\e\(B\e\[m/ix.freeze
    # This tries to match the many types of Ansi's out there, there are more though.

    COLORS = {
      :red => 31,
      :green => 32,
      :black => 30,
      :magenta => 35,
      :yellow => 33,
      :white => 37,
      :blue => 34,
      :cyan => 36
    }.freeze

    #

    def strip(str)
      str.gsub ANSI_MATCH, ""
    end

    #

    def clear
      $stdout.print(format("%c[H%c[2J", 27, 27))
    end

    #

    def has?(str)
      str.match(ANSI_MATCH).is_a?(MatchData)
    end

    # Jump the cursor, moving it up and then back down to it's spot,
    # allowing you to do fancy things like multiple output (downloads) the
    # way that Docker does them in an async way without breaking term.

    def jump(str, num)
      format("%c[%dA%s%c[%dB", 27, num, \
        clear_line(str), 27, num)
    end

    #

    def reset(str = "")
      "#{format("%c[0m", 27)}#{str}"
    end

    #

    def clear_line(str = "")
      "#{format("%c[2K\r", 27)}#{str}\r"
    end

    #

    COLORS.each do |color, num|
      define_method color do |str|
        "#{format("%c", 27)}[#{num}m#{str}#{reset}"
      end; module_function color
    end
  end
end
