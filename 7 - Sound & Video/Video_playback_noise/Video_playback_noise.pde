import processing.video.*;    // Needed to display video.
 
Movie myVideo;                // Stores the video object.
 
void setup()
{
    size(1200, 800);
    background(0);
    myVideo = new Movie(this, "HelloWorldClip.mov");
    myVideo.play();
}
 
void draw()
{
    // -- Use noise() to return positions in two dimensions
    // --  that vary slightly between draw loops
    float noiseX = noise(frameCount*0.01, 1);
    float noiseY = noise(frameCount*0.01, 2);
 
    // -- Convert to screen coordinates
    float px = map(noiseX, 0, 1, 0, width-myVideo.width);
    float py = map(noiseY, 0, 1, 0, height-myVideo.height);
 
    // -- Draw transparent on screen
    tint(255, 4);      // Make the video very transparent.
    image(myVideo, px, py, 600, 380);
}
 
// This is needed to read in the movie while it is playing.
void movieEvent(Movie videoBuffer)
{
      videoBuffer.read();
}
