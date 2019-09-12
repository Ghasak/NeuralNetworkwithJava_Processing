// call our perceptron class
Perceptron brain;


// Make an array of 100 points 
Point[] points = new Point[100];
void setup(){
         size(500,500);
         brain = new Perceptron();
         // Initialize your points 
         for (int i =0 ; i < points.length;i++){
             points[i] = new Point();
             
         }
         
         float[] inputs = {-1,0.5};
         int guess = brain.guess(inputs);
         println(guess); 
}

void draw() {
    background(255);
    line(0,0, width, height);
    for (Point p : points){
      p.show();
    }
    
    for (Point pt : points){
      float[] inputs = {pt.x, pt.y};
      int target = pt.label;
      //brain.train(inputs, pt.label);
      
      int guess = brain.guess(inputs);
      if (guess == target) {
        fill(0,255,0);
      }else {
        
        fill(255,0,0);
      }
      noStroke();
      ellipse(pt.x,pt.y, 5,5);
      
      
    }
}
