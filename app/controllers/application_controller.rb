# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  include AuthenticatedSystem
 
end

 class Date
      silence_warnings do
    DAYNAMES = [ 'Ni', 'Pn', 'Wt', 'Śr','Cz','Pi', 'Sb' ]
    DAYNAMES_LONG = [ 'Niedziela', 'Poniedziałek', 'Wtorek', 'Środa','Czwartek','Piątek', 'Sobota' ]

    MONTHNAMES = [ nil,
      'Styczeń',
      'Luty',
      'Marzec',
      'Kwiecień',
      'Maj',
      'Czerwiec',
      'Lipiec',
      'Sierpień',
      'Wrzesień',
      'Październik',
      'Listopad',
      'Grudzień'
    ]

    MONTHNAMES_GENITIVE = [ nil,
      'stycznia',
      'lutego',
      'marca',
      'kwietnia',
      'maja',
      'czerwca',
      'lipca',
      'sierpnia',
      'września',
      'października',
      'listopada',
      'grudnia'
    ]
  end
    # Scrub sensitive parameters from your log
    # filter_parameter_logging :password
    def wday_name
      DAYNAMES_LONG[self.wday]
    end
  end