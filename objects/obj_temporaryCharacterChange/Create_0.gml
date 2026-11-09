depth = 4;
touchedByPlayer = false;
targetX = xstart;
targetY = ystart;

if (instance_exists(destinationSign))
{
    targetX = destinationSign.xstart;
    targetY = destinationSign.ystart;
}
