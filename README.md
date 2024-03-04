# Assignment-2

Assignment =2 has starter files.

Qsys is generated.

This was a Microcomputers and Embedded Systems (COMPSYS 303) course assignment to implement an embedded system on DE2-115 board using a Nios II processor, some video processing IP cores, and a few other peripherals. The implemented system can apply simple image processing filters on a video stream and output the results through the VGA output on the board. 

# Contributors
- Rachel Nataatmadja - [rnat697](https://github.com/rnat697)
- Shou Miyamoto - [sm43576](https://github.com/sm43576)

# How To Run 
1. Download this zip file
2. Open Quartus Prime and press open project. Search for assignment2.qpf project file for Quartus located in video-processing-group-10/Quartus/ folder and open the project.
3. Compile the design if it hasn't been compiled already
4. Go to Tools --> Nios II Software Build Tools for Eclipse and choose the workspace to the default
5. The files for the code is located in `video-processing-group-10/Quartus/software/software` and the bsp code is located in `video-processing-group-10/Quartus/software/software_bsp`. The main code is located in  `video-processing-group-10/Quartus/software/software/hello_world.c`.

# How To Use
- Flipping switch 0 up and every other switch is flipped down will show the smoothing filter on the VGA monitor (connected by HDMI cable from DE2-115 board to monitor), it will also display "Smooth" on the LCD screen on the DE2-115 board
- Flipping switch 1 up and every other switch is flipped down will show the Sobel X filter on the VGA monitor and will display "SobelX" on the LCD sreen on the DE2-115 board.
- Flipping switch 2 up and every other switch is flipped down will show the Sobel Y filter on the VGA monitor and will display "SobelY" on the LCD sreen on the DE2-115 board.
- Flipping any other switch up (that is not 0, 1 or 2) and every other switch is flipped down will show the Identity filter on the VGA monitor and will display "Identity" on the LCD sreen on the DE2-115 board. Having no switches up will also have the same effect.
