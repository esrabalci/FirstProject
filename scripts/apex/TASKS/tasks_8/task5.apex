/**
Write an Apex code that 
//   - print 10 random Integer values 
between 1-1000 in 10 lines (loop)

 */

 for(Integer i=0; i<10 ;i++)    {
     Integer values=(Math.random()*1000).intValue();
        System.debug('Random Integer values are : ' + values); 
 }   
 