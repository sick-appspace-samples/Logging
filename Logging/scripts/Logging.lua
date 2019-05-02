--[[----------------------------------------------------------------------------

  Application Name:
  Logging
  
  Summary:
  Introduction to the logging API with logging to console and to file with
  different log levels.
                                                                                             
  Description:
  Introduction to the logging API with logging to console and to file with
  different log levels

  How to run:
  To demo the script, just let it run and look at the console what log statements
  are hidden by setting the level. Also take a look at the logging output file.
------------------------------------------------------------------------------]]

--Start of Global Scope---------------------------------------------------------

-- Note: instead of ".info", also  ".warning" and ".severe" can be used
-- Default is logging to the console at level WARNING.
Log.warning('This log will be shown on the console.')
Log.info('This one not because default level is WARNING.')
Log.setLevel('INFO')
Log.info("Now, also INFO's are printed out.")

-- Logging to file. To open the logged file for reading it may be necessary to
-- set the log mode back to console first
Log.setFileMode('public/log.txt', 1024)
Log.info('This will go into the file and not be displayed on the console. Check the log file for this content.')

Log.setConsoleMode()
Log.info('Now, logs are displayed on console again.')

print('App finished.')

--End of Global Scope-----------------------------------------------------------
