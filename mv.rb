#!/usr/bin/env ruby

require 'fileutils'

HOME = "/gazbit"

src_dir = "/gazbit/Typewriter"

def move_src_to_target
if File.exists?(src_dir)
puts "about to move this file: #{src_dir}"
FileUtils.mv(src_dir, HOME)
else
puts "cannot find source files to move"
end
end
