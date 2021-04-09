x1=input("Enter x1: ");
y1=input("Enter y1: ");
x2=input("Enter x2: ");
y2=input("Enter y2: ");
x3=input("Enter x3: ");
y3=input("Enter y3: ");
x=0;y=0;
A=[(x**2)+(y**2),x,y,1;(x1**2)+(y1**2),x1,y1,1;(x2**2)+(y2**2),x2,y2,1;(x3**2)+(y3**2),x3,y3,1];
detM11=det([A(2,2),A(2,3),A(2,4);A(3,2),A(3,3),A(3,4);A(4,2),A(4,3),A(4,4)]);
detM12=det([A(2,1),A(2,3),A(2,4);A(3,1),A(3,3),A(3,4);A(4,1),A(4,3),A(4,4)]);
detM13=det([A(2,1),A(2,2),A(2,4);A(3,1),A(3,2),A(3,4);A(4,1),A(4,2),A(4,4)]);
detM14=det([A(2,1),A(2,2),A(2,3);A(3,1),A(3,2),A(3,3);A(4,1),A(4,2),A(4,3)]);
a=(detM12/detM11)/2;
b=-(detM13/detM11)/2;
r=sqrt(a**2+b**2+(detM14/detM11))
dia=2*r;
mprintf('Center :( %f ,%f ) \n',a,b);
mprintf('Diameter = %f',dia);
t=linspace(0,2*%pi,100);
x=r*cos(t)+a;
y=r*sin(t)+b;
clf()
plot(x,y,'b', a,b,'r+-', x1,y1,'ro', x2,y2,'ro', x3,y3,'ro')
title("Circle Visualization")
