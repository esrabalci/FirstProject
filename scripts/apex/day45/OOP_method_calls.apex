//you can create a variable than you can use after that
// Shape s1= new Circle('Ball',4);
// OOP_Practice.printShape(s1);

//in one shot
// OOP_Practice.printShape( new Square( 'Box',3 )  );
// OOP_Practice.printShape( new Rectangle( 'Box2',3,4 )  );

System.debug('------------------');

Shape s2 = OOP_Practice.getShape('Square');
OOP_Practice.printShape(s2);


Shape s3 = OOP_Practice.getShape('Rectangle');
OOP_Practice.printShape(s3);



Shape s4 = OOP_Practice.getShape('Circle');
OOP_Practice.printShape(s4);


Shape s5 = OOP_Practice.getShape('BLA');
OOP_Practice.printShape(s5);


