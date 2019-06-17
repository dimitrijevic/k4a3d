C++ pointcloud wrapper for the Microsoft Kinect 4 Azure, using Microsoft Azure Kinect SDK 1.1.0.

Requirements:
- [Azure Kinect SDK 1.1.0.](http://download.microsoft.com/download/E/B/D/EBDBB3C1-ED3F-4236-96D6-2BCB352F3710/Azure%20Kinect%20SDK%201.1.0.msi) (dll files included to make it super easy to run)
- Visual Studio 2012 or newer compiler
- MATLAB 2013a or newer (for Visual Studio 2012 support)
- MATLAB 2015b or newer for demo, which uses MATLAB's built-in pointCloud object

Usage:
1) Set the compiler using mex -setup C++
2) Open compile.m and set the include and lib paths of Azure Kinect SDK (see the provided paths)
3) Add to the windows path the bin directory containing the k4a.dll and k4arecord.dll 
   For example: C:\Program Files\Azure Kinect SDK\sdk\windows-desktop\amd64\release\bin
4) If you modify Windows path, close Matlab and open it again in order to detect the changes.
3) Run compile.m

Demos:
1) demo.m: Demo using provided [Azire Kinect Offfice Sample recording](https://www.microsoft.com/en-us/download/details.aspx?id=58385&WT.mc_id=) mkv .files 
           but which can be easily updated to work with the actual sensor device
           if and when it's available in Europe and SDK's stablized enough 4 MATLAB