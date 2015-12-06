require 'tdiary'
require 'tdiary/rack/assets/precompile'
load 'tdiary/tasks/assets/compile.rake'

TDiary::Application.config.assets_precompile = true
