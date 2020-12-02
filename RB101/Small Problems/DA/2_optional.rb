# my answer:

# 4712-01-01      # incorrect - it's -4712, not 4712.
# 2016-01-01      # correct.
# 2016-05-01      # correct.
# 2016-05-13      # correct.

# things to note: in the documentation 'signature' - the header line containing the method name - we see brackets in the method call example;
# these brackets indicate that any enclosed arguments are optional; ~this is only documentation convention~.
# nested brackets indicate that items in the outermost brackets may only be ommitted if every nested bracket has also been omitted. see below:


Date.civil                             # everything defaults
Date.civil(2016)                       # month, mday, start use defaults
Date.civil(2016, 5)                    # mday, start use defaults
Date.civil(2016, 5, 13)                # start uses default
Date.civil(1751, 5, 13, Date::ENGLAND) # nothing defaults