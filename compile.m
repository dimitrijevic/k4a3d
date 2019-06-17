function compile
% compile_cpp_files compiles the k4a3d mex MATLAB function.
% The C++ code is located in 1 file(s):
%   K4a3d.cpp:  MexFunction fastpointcloud adaptation recordings playback.
%
% Requirements:
% - Azure Kinect SDK 1.1.0. http://download.microsoft.com/download/E/B/D/EBDBB3C1-ED3F-4236-96D6-2BCB352F3710/Azure%20Kinect%20SDK%201.1.0.msi
% - Visual Studio 2012 or newer compiler
% - Matlab 2013a or newer (in order to support Visual Studio 2012)
%
% Usage:
%   1) Set the compiler using mex -setup C++ (note it doesn't work with
%   compilers older than VS2012.
%   2) Set the IncludePath and LibPath variables in this file to the correct locations 
%   (see example below)
%   3) Add to the windows path the bin directory containing the 
%      k4a.dll and k4arecord.dll 
%      For example: C:\Program Files\Azure Kinect SDK\sdk\windows-desktop\amd64\release\bin
%   4) Close Matlab and open it again.
%   5) Run this function.
%
% Author: Juan R. Terven, jrterven@hotmail.com
IncludePath = 'C:\Program Files\Azure Kinect SDK\sdk\include';
LibPath = 'C:\Program Files\Azure Kinect SDK\sdk\windows-desktop\amd64\release\lib';

mex ('-R2018a', '-v', 'k4a3d.cpp', ...
    ['-L' LibPath], '-lk4a', '-lk4arecord',['-I' IncludePath]);