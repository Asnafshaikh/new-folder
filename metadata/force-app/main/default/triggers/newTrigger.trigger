trigger newTrigger on X12_4_prod__c (before insert, before update) {
  for (X12_4_prod__c a : Trigger.new) {
    a.addError('Blocked by trigger');
  }
}