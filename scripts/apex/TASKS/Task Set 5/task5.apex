/**

5. Write a program that create List of Id with 10 items and use 
2 different loop (for loop and for each loop )to print out all value for practice 

    - continue from above
     if the any ID match exactly '001xxxxxxxxxxxxxxx' 
     then break out of the loop

 */


List<ID> idList = new List<ID>();
 idList.add ('00B8W00000AJWReUAP');
 idList.add ('5008W0000107IM8QAM');
 idList.add ('5008W0000107IKvQAM'); 
 idList.add ('00B8W00000AJWNTUA5'); 
 idList.add ('00B8W00000AJWReUAP');
 idList.add ('00B8W000009ANPqUAO');
 idList.add ('a078W00008HvcHVQAZ');
 idList.add ('00B8W000009AN0MUAW'); 
 idList.add ('00B8W000009ANpPUAW');
 idList.add ('a098W00000sbgzsQAA');

 for(Id eachList : idList){
      
       if( eachList == '00B8W00000AJWNTUA5' ){
                break;
       }
          System.debug(eachList);
 }

