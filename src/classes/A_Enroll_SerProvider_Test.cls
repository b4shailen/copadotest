@isTest(SeeallData=true)
//TESTING COPEDO SFDC GITHUB INTEGRATION
private class A_Enroll_SerProvider_Test{
  public static testMethod void VMW_Test_Enroll_II()
    {

    recursive.isAtFuture = true;
    
    Test.startTest();
    
    EnrollController en1 = new EnrollController();
    System.currentPageReference().getParameters().put('program','serviceprovider');
    Form__c frm1 = en1.form;
    frm1.Digital_Signature__c = '/s/ First Last';
    frm1.Partner_Type__c = 'Global System Integrator/Outsourcer';
    frm1.Position_held_within_Company__c ='Manager';
    frm1.country__c = 'Australia';
    frm1.FirstName__c ='Fi';
    frm1.Lastname__c='Las';
    frm1.I_AGREE__c = true;
    en1.save();
    
    Test.stopTest();
    }
}