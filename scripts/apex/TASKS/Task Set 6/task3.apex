/**

3. Write an Apex code to create an List of Strings with 6 items 
    - if this list does not contains 'jon snow'
        - then insert 'jon snow' at index 4
    - if it does
        - remove 'jon snow' and insert it again at index 4


 */

 List<String> names = new List<String> {'jon snow', 'ugur mamac', 'mel A',
                       'ryan T.', 'jasmin B','tugce A'};

        for(Integer index=0;index<names.size();index++){
            names.get(index); // each of name in the list will add into get(index)

           if( !(names.contains('jon snow') ) ){
             
             names.add(4, 'jon snow');   
         
           }else if(names.get(index)=='jon snow'){
            names.remove(names.indexOf('jon snow'));
            names.add(4, 'jon snow');

           }

 }
            System.debug(names);
 