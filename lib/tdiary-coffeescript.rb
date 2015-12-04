require 'tdiary'
require 'tdiary/rack/assets/precompile'
load 'tdiary/tasks/assets/compile.rake'

TDiary::Application::configuration.assets_precompile = true
