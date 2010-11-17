require 'rubygems'
require 'date'
require 'active_support'

if RUBY_VERSION > '1.9'
 require 'csv'
 unless defined? FCSV
   class Object
     FCSV = CSV
     alias_method :FCSV, :CSV
   end
 end
else
 require 'fastercsv'
end


require File.join(File.dirname(__FILE__), "adt", "globals.rb")
require File.join(File.dirname(__FILE__), "adt", "record.rb")
require File.join(File.dirname(__FILE__), "adt", "column.rb")
require File.join(File.dirname(__FILE__), "adt", "table.rb")
