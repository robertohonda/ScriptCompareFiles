set NAMECPP=Impossivel
set NAMEIN=inImpossivel
set NAMEOUT=outImpossivel

set DIRNAME=MyOutputs
set BEGIN=1
set END=18

g++ %NAMECPP%.cpp -o %NAMECPP% -std=c++11

mkdir %DIRNAME%

for /l %i in (%BEGIN%, 1, %END%) do (
   %NAMECPP% < ./in\%NAMEIN%%i.txt > ./%DIRNAME%\MY_OUTPUT%i.txt
   FC ./%DIRNAME%\MY_OUTPUT%i.txt ./out\%NAMEOUT%%i.txt
)
