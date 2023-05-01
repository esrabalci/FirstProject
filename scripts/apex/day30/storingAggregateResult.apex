AggregateResult oppResult = [
  SELECT COUNT(Id) CountOfOpps, MIN(Amount) LowestAmount, MAX(CreatedDate) LatestOppCreatedDate
                FROM OPPORTUNITY
];

//COUNT(Id) CountOfOpps --> Number dataType
//MIN(Amount) LowestAmount --> Decimal dataType
//MAX(CreatedDate) LatestOppCreatedDate -->DateTime dataType

System.debug('Count of Opps is ' + oppResult.get('CountOfOpps'));
System.debug('MIN(Amount) is ' + oppResult.get('LowestAmount'));

System.debug('------------------');

Integer count = (Integer)oppResult.get('CountOfOpps');
System.debug('count value is : ' + count);

System.debug('------------------');


Decimal amount =(Decimal)oppResult.get('LowestAmount');
System.debug('count value is : ' + amount);

System.debug('------------------');


Datetime LatestDate =(Datetime)oppResult.get('LatestOppCreatedDate');
System.debug('count value is : ' + LatestDate);
