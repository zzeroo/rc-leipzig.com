model_logfile = File.open("log/model.log", 'a')
model_logfile.sync = true
MODEL_LOG = Logger.new(model_logfile)
