%Machine Problem 2 (Circle in Cartesian Plane)
%Setting the First Point
x = input('X of First Point: ');
y = input('Y of First Point: ');
%Setting the Second Point
x1 = input('X of Second Point: ');
y1 = input('Y of Second Point: ');
%Setting the Third Point
x2 = input('X of Third Point: ');
y2 = input('Y of Third Point: ');
%Formulas for the Circle
%Matrix of the Points
A = [x,y,1; x1,y1,1; x2,y2,1];
D1 = [((x^2)+(y^2)),y,1; ((x1^2)+(y1^2)),y1,1; ((x2^2)+(y2^2)),y2,1];
E1 = [((x^2)+(y^2)),x,1; ((x1^2)+(y1^2)),x1,1; ((x2^2)+(y2^2)),x2,1];
F1 = [((x^2)+(y^2)),x,y; ((x1^2)+(y1^2)),x1,y1; ((x2^2)+(y2^2)),x2,y2];
%Finding the Determinants of the Formulas Stated Above 
detA = det(A);
detD = -det(D1);
detE = det(E1);
detF = -det(F1);
%Center of the Circle
h = ((-detD)/(2*detA)); 
k = ((-detE)/(2*detA));
%Calculating the Radius
radius = (sqrt(((detD^2)+(detE^2)-(4*detA*detF))/(4*(detA^2))));
%Constants in the General Equation of a Circle
D = (detD/detA);
E = (detE/detA);
F = (detF/detA);
%Shows the Center and Vector
center = [h,k];
constants = [D,E,F];
fprintf('The Center ,(h,k), of the Circle is: (%.2f , %.2f ) \n',center);
fprintf('The calculated Radius of the Circle is: %.5f \n',radius);
%Displaying Answers
if detA ~= 0
    fprintf('The Coefficient for the Equation of the Circle D, E, F, respectively: %.2f, %.2f, %.2f \n',constants)
else
    fprintf('The Coefficient for the Equation of the Circle D, E, F, respectively: %.2f, %.2f, %.2f \n',detD ,detE ,detf)
end