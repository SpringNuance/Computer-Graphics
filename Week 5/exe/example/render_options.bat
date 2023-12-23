@echo off

set inputfile=%1
echo %inputfile%
set scenename=%inputfile:.txt=%
rem depth must be the last argument
..\..\bin\example_x64 -input %* r1+r2_02_five_spheresdep_example.png -output r1+r2_02_five_spheres_rgb_example.png -normals r1+r2_02_five_spheres_nor_example.png
move %scenename%_rgb_example.png ..\out\
move %scenename%_dep_example.png ..\out\
move %scenename%_nor_example.png ..\out\
