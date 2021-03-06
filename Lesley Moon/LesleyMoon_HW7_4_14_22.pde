/* Lesley Moon
 April 14, 2022
 ARTIST INSPIRED INTERACTIVE LOOP
 "Do Ho Suh" 

  Animation!
*/

float m = 0;

void setup (){
  size(600, 600, P3D);
  background(255);
  frameRate(24);
}

void draw (){  
  
  //blendMode(REPLACE); // SO COOL
  //blendMode(DARKEST); // reminds me of a laser party
  //blendMode(MULTIPLY); // red. destruction. anger.
  

  for (int w = width; w > 0; w -= 20) {
    // Camera processing reference, https://processing.org/tutorials/p3d/#camera, March 2, 2022
       camera(m, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
       translate(width/2, height/2, -100);
       stroke(250, 73, 165, 5);
       noFill();
       box(160, 80, 200 + w);
       m = m + 0.05;
      }
      
   for (int w = width; w > 0; w -= 20) {
       camera(m, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
       translate(width/2 - 200, height/2 - 300, -200);
       stroke(139, 73, 146, 2);
       noFill();
       box(100, 80 + w, 300);
       m = m + 0.05;
      }
      
    for (int w = width; w > 0; w -= 20) {
       camera(m, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
       translate(width/2 - 100, height/2, 100);
       stroke(0, 173, 226, 5);
       noFill();
       box(mouseX, 400, 300 + w);
       m = m + 0.05;
      }
      
     for (int w = width; w > 0; w -= 10) {
       camera(m, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
       translate(width/2, height/2, 100);
       stroke(254, 196, 37, 5);
       noFill();
       box(400, 200, 100 + w);
       m = m + 0.05;
      }
   
   for (int w = width; w > 0; w -= 10) {
       camera(m, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
       translate(width/2, height/2, -300);
       stroke(1, 106, 81, 3);
       noFill();
       box(230, 302, 90 + w);
       m = m + 0.05;
      }
      //saveFrame("multiply-######.png");
}
