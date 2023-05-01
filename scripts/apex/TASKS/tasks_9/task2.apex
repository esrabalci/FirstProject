/**

2. Create a List of 10 String
   - get the count of String with more than 5 characters
   - print them out

 */
 List<String> dessertFruit=new List<String>{'strawberry','White chocolate','blueberry','erik','raspberry',
                            'chocolate chip','baklava','souffle','rice pudding','kadayif'};


Integer count=0;

    for(String each : dessertFruit) {
        if(each.length() > 5)
        count++;
       
    }

        System.debug('more than 5 characters: ' +count); 
