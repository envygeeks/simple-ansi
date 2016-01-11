# Frozen-string-literal: true
# Copyright: 2015-2016 Jordon Bedwell - MIT License
# Encoding: utf-8

module Simple
  module Ansi
    extend self

    ANSI_MATCH = /\x1b.*?[jkmsuABGKH]/
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
      $stdout.print "\x1b[H\x1b[2J"
    end

    #

    def has?(str)
      str.match(ANSI_MATCH).is_a?(MatchData)
    end

    # Jump the cursor, moving it up and then back down to it's spot,
    # allowing you to do fancy things like multiple output (downloads) the
    # way that Docker does them in an async way without breaking term.

    def jump(str, num)
      "\x1b[#{num}A#{clear_line(str)}\x1b[#{num}B"
    end

    #

    def reset(str = "")
      "\x1b[0m#{str}"
    end

    #

    def clear_line(str = "")
      "\x1b[2K\r#{str}\r"
    end

    #

    COLORS.each do |color, num|
      define_method color do |str|
        "\x1b[#{num}m#{str}#{reset}"
      end; module_function color
    end
  end
end
