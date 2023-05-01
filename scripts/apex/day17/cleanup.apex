// Clean up all the Opp Records created Today
delete [SELECT Id from Opportunity Where CreatedDate = TODAY];