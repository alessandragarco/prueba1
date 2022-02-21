PImage foto1;

void setup(){
  size(900, 400, P3D);
  //frameRate(60); solo para MAC
  foto1 = loadImage("foto1.jpg");
  background(0);

}

void draw(){
  
  background(0);
  image(foto1,0,0);
  for(int cuenta = 0 ; cuenta < 5; cuenta++){
    
    push();
    translate(150*cuenta +100,height/2,0);
    rotateX(mouseX*0.05);
    sphereDetail(cuenta+5);
    fill(100*cuenta,50*cuenta,200);
    stroke(200, 100*cuenta, 50*cuenta);
    //image(foto1,0,0);
    //sphere(50);
    sphere(map(mouseX, 0, width, 50, 100));
    pop();
}

}
