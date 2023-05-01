List<Integer> numberList = new List<Integer>{65,80,83,149,48};

Integer highNum = Helper.getHighestNumber(numberList);
System.debug('highNum value is numberList 1 : ' + highNum);

System.debug('------------------');

List<Integer> numberList2 = new List<Integer>{10,17,66,23,078};

System.debug(' Highest value in numberList 2 : ' 
                         + Helper.getHighestNumber(numberList2));


System.debug('------------------');


System.debug(numberList + ' Sum is : ' + Helper.getTotal(numberList) );
System.debug(numberList2 + ' Sum is : ' + Helper.getTotal(numberList2) );

System.debug('------------------');

System.debug(numberList + ' Average is : ' + Helper.getAverage(numberList) );
System.debug(numberList2 + ' Average is : ' + Helper.getAverage(numberList2) );

System.debug('------------------');

List<String> names = new List<String>{'Suat','Esra','Tamara','Yogut','Dzhamilya','Neslihan'};

System.debug('filteredList value is :  : ' + Helper.getLongerNames(names));
//'Tamara','Yogut','Dzhamilya','Neslihan'

    