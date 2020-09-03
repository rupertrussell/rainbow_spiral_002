/**
* Based on:  rainbow spin
*
* @author aa_debdeb
* @date 2016/07/07 
"rainbow spin" by aa_debdeb
http://www.openprocessing.org/sketch/376325
Licensed under Creative Commons Attribution ShareAlike
https://creativecommons.org/licenses/by-sa/3.0
https://creativecommons.org/licenses/GPL/2.0/

*/

float R = 9144 / 1.3;


void setup(){
  size(9144, 9144);
  noStroke();
  //strokeWeight(6);
  noLoop();

}

void draw(){
  colorMode(RGB, 255);
  background(255);
  colorMode(HSB, 360, 100, 100);
  translate(width / 2, height / 2);
  rotate(frameCount * 0.03);
   
  float angleStep = 24;
  
  for(float rot = -0.6 ; rot <= 1; rot = rot + 0.1){
   println("rot = " + rot);
  
  for(float angle = 0; angle < 360; angle += angleStep){
    fill(angle, 500, 500);
    beginShape();
    for(float r = 0; r < R; r += 1){
      float x = r * cos(radians(angle + r * rot));
      float y = r * sin(radians(angle + r * rot));
      vertex(x, y);
    }
    for(float a = angle; a < angle + angleStep; a += 1){
      float x = R * cos(radians(a + R * rot));
      float y = R * sin(radians(a + R * rot));
      vertex(x, y);      
    }
    for(float r = R; r > 0; r -= 1){
      float x = r * cos(radians(angle + angleStep + r * rot));
      float y = r * sin(radians(angle + angleStep + r * rot));
      vertex(x, y);
    }
    endShape();
  }
   save("d-spiral-rot=" + rot + ".png");
  }
  
  // exit();
  
 // fill(0, 0, 100);
 // ellipse(0, 0, 2 * R * 0.2, 2 * R * 0.2);
}
