


String message = '  I    learn  Apex ';
System.debug('message value is           : ' + message); 
/**
trim() --> returns a copy of the string that no longer contains any leading
 or trailing white space characters.

VariableName.trim();
 */


System.debug('message with trim() method : ' + message.trim()); 


/**
normalizeSpace() --> Returns the current String with leading,
trailing, and repeating white space characters removed.
 */

  System.debug('message.normalizeSpace()  value is : ' + message.normalizeSpace() ); 


  /**
  deleteWhiteSpace()--> Returns a version of the current String
        with all white space characters removed.
   */
  System.debug('message.deleteWhitespace()  value is : ' + message.deleteWhitespace() );  

