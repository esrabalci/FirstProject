/**
 
Give a String with a sentence with one or more
Make each word title case: first letter is upper case rest of lowercase

for example: Apex Is Great


 */

String name='apex IS gReAt';

//first normalize the space so we do not have any extra spaces after then needed
//name=name.normalizeSpace();

//get a list of each words
List<String> wordList = name.normalizeSpace().split(' ');

System.debug('wordList value is : ' + wordList);

for(Integer i=0; i<wordList.size() ;i++) {

    //update each word to TitleCase by item= item.tolowercase().capitalize()
    wordList[i]=wordList[i].toLowerCase().capitalize();
    
}
System.debug('wordList value is : ' + wordList);

//now join the list items to get the string
name= String.join(wordList, ' ');
System.debug('name value is : ' + name);



    


