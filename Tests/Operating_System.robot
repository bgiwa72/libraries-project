*** Settings ***
Documentation  These are some file & directory tests
Resource  ../Resource/OperatingSystem/OS.robot

# Many ways to run:
# pybot -d results/operating-system tests/operating_system.robot
# pybot -d results/files -i OperatingSystem tests
# pybot -d results/files -N "Diverse Suite" tests

*** Variables ***


*** Test Cases ***
Create Some Directories
    [Tags]  OperatingSystem
    OS.Create the Base Directory
    OS.Create Directory 1
    OS.Create Directory 2
    OS.Create Directory 3

Create Some Files
    [Tags]  OperatingSystem
    OS.Create the First File
    OS.Create the Second File
    OS.Create the Third File
    OS.Create the Fourth File

Move a File
    [Tags]  OperatingSystem
    OS.Move File 3 from Directory 2 to Directory 1
    OS.Move File 4 from Directory 3 to Directory 1

Copy a File
    [Tags]  OperatingSystem
    OS.Copy File 1 from Directory 1 to Directory 2
    OS.Copy File 1 from Directory 1 to Directory 3
