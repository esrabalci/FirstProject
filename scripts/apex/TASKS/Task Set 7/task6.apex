/**

6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}

 */

 List<String> characters = new List<String>{'Yoda', 'Masha', 'Volf','Squirell', 'Rabbit'};

for(Integer i=0; i<5 ;i++) {
    characters.set(i, characters.get(i)+ ' sf' + (i+1));
}
   System.debug('characters value is : ' + characters); 


   /**
   
   String[] starWars = new String[]{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};
String[] indexOfSW = new String[0];
Integer i=1;
for(String each : starWars) {
String listSW= each + ' sf' +  i;
indexOfSW.add(listSW);
i++;
}
System.debug('Th result is: ' + indexOfSW); 
   
    */