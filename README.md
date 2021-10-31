# jdbc-dm

DMSQL JDBC driver allows Java programs to connect to a DM database
using standard, database independent Java code - it's a pure Java (Type 4) impl.


## Usage

To make the driver accessible to JDBC and ActiveRecord code running in JRuby :

    require 'jdbc/dm'
    Jdbc::DM.load_driver

For backwards compatibility with older (<= **9.1.903**) versions of the gem use :

    require 'jdbc/dm'
    Jdbc::DM.load_driver(:require) if Jdbc::DM.respond_to?(:load_driver)
