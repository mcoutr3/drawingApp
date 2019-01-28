//At least one example of mouse interaction (DONE) - mousePressed
//At least one for loop (for(int i; i < 10; i++)….) (DONE) - "bubbles"
//At least one conditional statement (if/then) (DONE) - in the mousePressed setup
//Post code and one image from your sketch to the blog 
//email your Processing sketch file (located in your sketch folder)to instructor
int value = 0;
boolean blue = false;
void setup (){
  size (displayWidth, displayHeight);
  background (0);
  
 //At least one for loop (for(int i; i < 10; i++)….)
  for (int i = 0; i < 60; i++) {
    fill(66, 209, 244);
    ellipse(random(width), random(height), i*2, i*2);
    stroke (0,109,226);
    line(0, i*20, width, mouseY);
    fill(225);
    textSize(30);
    text("Click to Reveal",60,60);
  }
}

void draw (){
  noStroke();
  //At least one conditional statement (if/then)
  //At least one example of mouse interaction
   if (mousePressed) {
     fill(247,181,0); //fish color control
  } else {
    fill(0);
  }
  quad(400,500 , 400,440 , 500,540 , 500,400);  //(FISH BODY)
  triangle(500,400 , 500,540, 570,470);      //(FISH HEAD)
 quad(100,200 , 100,140 , 200,240 , 200,100);  //(FISH BODY)
  triangle(200,100 , 200,240, 270,170);
 
  if(mousePressed){
    strokeWeight(10);
    stroke(9, 160,37);
    fill(0, 188, 34);
  } else {
    fill(0);
    stroke(0);
    strokeWeight(10);
  }
  quad(1200,400 , 1100,600 , 1130,820 , 1180,300); //(SEAWEED RIGHT)
  quad(1000, 500, 900, 700, 930, 920, 980, 400); //(SEAWEED LEFT)

}
 
 
 void keyPressed(){
   println("pressed");
    if(key == 's' || key == 'S'){
      //saves an image of sketch
      saveFrame("underdac-######.png");
    }
 }
    
