/**

Write and Apex code that store opportunityStage as String and probabilityPercentage as Decimal
   - if the stage is 'Prospecting', assign the value of probabilityPercentage to 0.1
   - if the stage is 'Qualificationn', assign the value of probabilityPercentage to 0.2
   - if the stage is 'Need Analysis', assign the value of probabilityPercentage to 0.3
   - if the stage is 'Closed Won', assign the value of probabilityPercentage to 1.0
   - if the stage is 'Closed Lost', assign the value of probabilityPercentage to 0

 */



//  String opportunityStage = 'Closed Won';
// Decimal probabilityPercentage;

// if (opportunityStage == 'Prospecting'){
//     probabilityPercentage = 0.1;
// }else if (opportunityStage == 'Qualification'){
//     probabilityPercentage = 0.2;
// }else if (opportunityStage == 'Need Analysis'){
//     probabilityPercentage = 0.3;
// }else if (opportunityStage == 'Closed Won'){
//     probabilityPercentage = 1.0;
// }else if (opportunityStage == 'Closed Lost'){
//     probabilityPercentage = 0;
// }
// system.debug('State is ' + '"'+ opportunityStage +'"'+ '  and probability Percentage is '+ probabilityPercentage +' %');

String opportunityStage = 'Need Analysis';
Decimal probabilityPercentage ;

switch on (opportunityStage){
    when 'Prospecting'{
        probabilityPercentage = 0.1;
    }
    when 'Qualification'{
        probabilityPercentage = 0.2;
    }
    when 'Need Analysis'{
        probabilityPercentage = 0.3;        
    }
    when 'Closed Won'{
        probabilityPercentage = 1.0;
    }
    when 'Closed Lost'{
        probabilityPercentage = 0;
    }
}
System.debug('Stage is '+ opportunityStage + ' and probability Percentage is '+ probabilityPercentage +'%');
