# this is a customized eager load system
# after Rails has been initialized and if the `after_eager_load_paths` contains something
# we will go through the directories recursively and eager load all ruby files
# this is to avoid constant mismatch on startup with `autoload_paths` or `eager_load_paths`
# it also prevent any autoload failure dû to deep recursive folders with subclasses
# which have similar name to top level constants.
Rails.application.configure do
  if config.respond_to?(:after_eager_load_paths) && config.after_eager_load_paths.instance_of?(Array)
    config.after_initialize do
      config.after_eager_load_paths.each do |path|
        Dir["#{path}/*.rb"].each { |file| require file }
      end
    end
  end
end