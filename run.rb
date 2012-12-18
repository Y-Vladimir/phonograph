#!/usr/bin/env ruby
# coding: utf-8

require 'bundler/setup'
require 'RMagick'

def error(msg)
  puts msg
  exit 1
end

unless ARGV.size == 2
  error('Недостаточно аргументов: ./run.rb <src_file> <dst_dir>')
end

src_file = ARGV[0]
unless File.file?(src_file)
  error "#{src_file} не файл!"
end
unless File.readable?(src_file)
  error "Файл '#{src_file}' невозможно прочитать!"
end

dst_dir = ARGV[1]
unless File.directory?(dst_dir)
  error "'#{dst_dir}' не директория!"
end
unless File.writable?(dst_dir)
  error "'#{dst_dir}' не доступна для записи!"
end