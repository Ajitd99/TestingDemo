*** Settings ***



*** Test Cases ***
TC1 User Registration
       [Tags]      regression
       log to console   This is user reg test
       log to console   user reg test end

TC2 LoginTest
        [Tags]      sanity
        log to console      This is login Test
        log to console      Login test is over

TC3 Forgot Password Test
         [Tags]     regression
         log to console     This is forgot password test
         log to console     Forgot Password test is over

TC4 Logout Test
          [Tags]     sanity
         log to console     This is logout test
         log to console     logout test is over




