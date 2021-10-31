warn "Jdbc-DM is only for use with JRuby" if (JRUBY_VERSION.nil? rescue true)
require 'jdbc/dm/version'

module Jdbc
  module DM

    def self.driver_jar
      "DmjdbcDriver#{DRIVER_VERSION}.jar"
    end

    def self.load_driver(method = :load)
      send method, driver_jar
    end

    def self.driver_name
      'dm.jdbc.driver.DmDriver'
    end

    if defined?(JRUBY_VERSION) && # enable backwards-compat behavior :
      ( Java::JavaLang::Boolean.get_boolean("jdbc.dm.autoload") ||
        Java::JavaLang::Boolean.get_boolean("jdbc.dm.autoload") )
      warn "autoloading JDBC driver on require 'jdbc/dm'" if $VERBOSE
      load_driver :require
    end
  end
end
