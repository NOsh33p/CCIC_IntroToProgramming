int [] coefficients = {1,2,-3};

int a = coefficients[0];
int b = coefficients[1];
int c = coefficients[2];
// equation 5x^2 + 3x + 3

//quadratic formula
if((b*b - 4*a*c) < 0){
  println("their are no real answers");
}else{
b = b*-1;
float x1 = (b + sqrt(b*b - (4*a*c))/(2*a)); //
float x2 = (b - sqrt(b*b - (4*a*c))/(2*a));
println("X is " + x1);
println("X is " +x2);
}
