# Skate-Park-2D-Animation
Skate Park 2D Animation in Processing 4.

The animation is a couple of skaters skating in a halfpipe with a thunder storm rolling by.

The classes that were created for this assignment were: Arms, Clouds, Skater, Wheels, Board, and Swings.

To fully run the project:

1. Create this file structure.
2. Download the following files and put them in a "data" folder inside the project directory.

<img width="204" alt="Screenshot 2023-03-13 at 11 14 50 AM" src="https://user-images.githubusercontent.com/113384816/224762660-78d666b5-cb68-4c04-9898-0433652398fe.png">

[data.zip](https://github.com/cyberkatrina/Skate-Park-2D-Animation/files/10959384/data.zip)

The Swings class sets up the frame of reference for the objects that move like a pendulum (i.e. the board, wheels, skater, and arms). The swings class also has all the fun math stuff for gravity and drag modulation.
The Skater class sets up the skater person to jump up and down and face the direction of motion.
The Arms class sets up the arms for the skaters to move with the skater and swing around in a childlike fashion implying they are having fun and enjoy life.
The Clouds class has fields of starting x and y position, x velocity, and a scale for how large and small it can grow. The lightning has a random chance to spawn every time the draw() loop is run. In addition the colors of the clouds change as they change their position.
The Board class sets up both skateboards to move side to side on the half-pipes in the scene.
The Wheels class sets up 2 wheels on each skateboard to rotate along with the movement of the board, once the board reaches the edge of the half-pipe and switches directions, the wheels start rotating the other way which is indicated by the striped pattern on them.

Katsiaryna Aliashkevich created the board and wheels class. She also drew all the vector objects inside of Illustrator so they could be imported as SVG files inside of Processing.

Rami Awada created the swings, skater, and arms class. He also completed the halfpipe placements. 

Ethan Rose created the clouds class and lightning effect. 
