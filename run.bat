cd      C:\Users\User\PycharmProjects\TestAutomation


::pabot --processes 2 --outputdir Result TestCases\POMLogin.robot  TestCases\ART.robot
::pabot --processes 1 TestCases\Registration.robot
::robot CMS1\
  pabot --processes 9 CMS1\*.robot
