#!rackup

lib = File.expand_path(File.join(__dir__, 'lib'))
$LOAD_PATH.unshift(lib)

require 'ane/web/api'

run Ane::Web::API
