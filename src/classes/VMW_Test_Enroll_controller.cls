/******************************************************************************************************************************

RS - 04/17/09 Test Class for EnrollController 
Comments: Covers the EnrollController class
Coverage as on 04/17/09 :

     Updated Date    Updated By          Comments
    ------------    ----------          --------
    04-Set-2012     Amar Sonkar        Modified for L10N Project
************************************************************************************************************************/
@isTest(SeeallData=true)
private class VMW_Test_Enroll_controller 
{
public static testMethod void VMW_Test_Enroll()
{
  
    List<Account> Acc =  new List<Account>(); 
    Acc.add( new Account( Name = 'Test Account', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'United States',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType));
    insert Acc;
    
    list<Country__c> countryList = new list<Country__c>();
    countryList.add(new Country__c(Name = Acc[0].country__c, Country_Type__c = 'Developed'));
    countryList.add(new Country__c(Name = 'Australia', Country_Type__c = 'Developed'));
    countryList.add(new Country__c(Name = 'India', Country_Type__c = 'Developing'));
    insert countryList;
    recursive.isAtFuture = true;

    EnrollController en = new EnrollController();
    System.currentPageReference().getParameters().put('accountID', Acc[0].Id);  
    //en.setTAP(1);
    en.serviceprovider();
    en.cipp();
    en.setJobfunc1('test');
    en.getJobfunc1();      
    en.getJobfunction();
    //Added by Accenture for L10N CR
    en.getFormLangPreferences();
    en.tap();
    test.starttest();
    en.getCountries1();
    en.lower('new');
    //test.stoptest(); 
    en.getJobfunction();
    en.setCountry1('India');
    en.getCountry1();
    en.setState1('Delhi');
    en.getState1();
    en.getGsiLevel();
    en.setGsiLevel('Premier');
    en.getGsiLevels();
    en.getStates1();
    en.setCountry1('United States');
    en.getStates1();
    en.getcountrystatus ();
    en.getAccountID();
    en.step1();
    en.setCountry1('India');
    Form__c frm = en.form;
    frm.Company_Name_English__c ='Test Account';
    frm.Digital_Signature__c ='/s/ FirstName LastName';
    frm.Position_held_within_Company__c ='Manager';
    frm.website__c ='www.test4.com';
    frm.email__c ='test1@test4.com';
    frm.Tap_Program_Level__c ='Test';
    frm.Country__c ='India';
    frm.State_Province__c='Delhi';
    frm.Top_5_Vertical_Mkts__c ='Arts;Entertainment;Education;Healthcare;Hospitality';
    frm.Hardware__c = 50;
    frm.Software__C =50;
    frm.If_YES_what_rental_programs__c ='Test';
    frm.License_Administrator_Email__c = 'test1@test4.com';
    frm.Sales_Reps__c =100;
    frm.City__c ='Delhi';
    frm.Partner_Type__c = 'Distributor';
    Contact contact     = new Contact(AccountId=Acc[0].Id,FirstName='Test Contact', LastName='Test Contact', Email='test1@test4.com',RecordTypeId= recursive.PartnerContactRecType);
    insert contact;
    //en.tap();
    insert frm;
    
    en.step2();
    en.serviceprovider();
    system.debug('frm---'+frm);
    en.step3();
    en.getTAPidentifier();
    en.Cancels();
    en.step4();
    en.save();
    en.step5();
    en.prevDistNeg();
    //en.saveNeg();
    en.setProgramGuideLink('Test');
    en.getProgramGuideLink();
  //  en.getTAP();
    frm.Top_5_Vertical_Mkts__c ='Test';
    frm.Hardware__c=null;
    frm.Software__c=null;
    en.solutionprovider();       
    en.step2();
    en.step3();
    en.step4();
    //en.technologyprovider();
    en.step2();
    en.step3();
    en.step4();
    //en.systembuilder();
    en.step2();
    en.step3();
    en.step4();
    en.userselfreg();
    
    
    EnrollController en1 = new EnrollController();
    System.currentPageReference().getParameters().put('accountID', Acc[0].Id); 
    System.currentPageReference().getParameters().put('program','systembuilder');
    Form__c frm1 = en1.form;
    frm1.Partner_Type__c = 'Distributor';
    frm1.Sales_Reps__c =10;
    frm1.City__c='Delhi';
    frm1.country__c ='India';
    en1.setCountry1('India');
    en1.getCountry1();
    en1.saveneg();
    frm1.website__c='www.testcom';
    frm1.Company_Name_English__c ='asdasdasd';
    en1.step5();
  //  en1.autoregister();
    en1.redirectToNewForm();
    en1.step2();
    
    // Test.startTest();
    frm1.website__c ='eee.test.com';
    //en1.step5();
   
    en1.step2();
     Test.stoptest();
    frm1.website__c ='www.inforte.com';
    //en1.step5();
    en1.step2();
    frm1.website__c ='www.gijoe.com';
    frm1.email__c='test@webc.com';
    //en1.step5();
    //en1.step2();
    frm1.email__c ='test@gmail.com';
    //en1.step5();
    //en1.step2();
    frm1.Class_of_Trade__c = 'Technology Provider';
   // en1.saveskip();
   
    EnrollController en2 = new EnrollController();
    System.currentPageReference().getParameters().put('accountID', Acc[0].Id);
    Form__c frm2 = en2.form;
    frm2.Class_of_Trade__c = 'Technology Provider';
    frm2.country__c='Canada';
    //en2.saveskip();
    frm2.Class_of_Trade__c = 'System Builder';
    //en2.save();
   // en2.autoregister();
    frm2.Digital_Signature__c = '/s';
    //en2.save();
    frm2.Digital_Signature__c = '/s/f ttt';
    frm2.I_AGREE__c = true;
    frm2.Class_of_Trade__c = 'System Builder';
    //en2.save();
    
    frm2.Digital_Signature__c = '/s/first t';
    frm2.I_AGREE__c = true;
    frm2.Class_of_Trade__c = 'System Builder';
    //en2.save();
    
    frm2.Digital_Signature__c='/s/ First Last';
    frm2.Class_of_Trade__c = 'System Builder';
    frm2.Position_held_within_Company__c =null;
    //en2.save();
    
    frm2.Digital_Signature__c='/s/First Last';
    frm2.Class_of_Trade__c = 'System Builder';
    frm2.Position_held_within_Company__c = 'test';
    frm2.I_AGREE__c = true;
    //en2.save();
    
    frm2.Digital_Signature__c='/s/First Last';
    frm2.Partner_Type__c = 'Global System Integrator/Outsourcer' ;
    frm2.Position_held_within_Company__c = 'test';
    frm2.I_AGREE__c = true;
    //en2.save();
    
    frm2.Digital_Signature__c='/s/F Last';
    frm2.Class_of_Trade__c = 'Service Provider';
    frm2.Position_held_within_Company__c ='';
    //en2.save();
    frm2.Class_of_Trade__c = 'Technology Alliance Partner';
    //en2.save();
    
    EnrollController en3 = new EnrollController();
    System.currentPageReference().getParameters().put('accountID', Acc[0].Id);
    Form__c frm3 = en3.form;
    frm3.Partner_Type__c = 'Global System Integrator/Outsourcer';
    frm3.country__c='Canada';
    //en3.saveskip();
    //en3.ster();
    
    
 }
  public static testMethod void VMW_Test_Enroll_I()
{
    List<Account> Acc =  new List<Account>(); 
    Acc.add( new Account( Name = 'Test Account', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'United States',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType));
    insert Acc;
    recursive.isAtFuture = true;
    list<Country__c> countryList = new list<Country__c>();
    countryList.add(new Country__c(Name = Acc[0].country__c, Country_Type__c = 'Developed'));
    countryList.add(new Country__c(Name = 'Australia', Country_Type__c = 'Developed'));
    countryList.add(new Country__c(Name = 'India', Country_Type__c = 'Developing'));
    insert countryList;

    EnrollController en5 = new EnrollController();
    System.currentPageReference().getParameters().put('accountID', Acc[0].Id);
    System.currentPageReference().getParameters().put('program','serviceprovider');
    Form__c frm5 = en5.form;
    frm5.Digital_Signature__c = '/s/ First Last';
    frm5.Partner_Type__c = 'Global System Integrator/Outsourcer';
    frm5.Position_held_within_Company__c ='Manager';
    frm5.country__c = 'Australia';
    frm5.FirstName__c ='Fi';
    frm5.Lastname__c='Las';
    //en5.save();
   // en5.autoregister();
   
    /*en5.setCountry1('Test');
    en5.getCountry1();
    en5.getcountrystatus();
    en5.setCountry1('Australia');
    en5.getCountry1();
    en5.getcountrystatus();
    frm5.Company_Name_English__c ='Test Account';
    en5.step2(); */
    
    frm5.country__c = 'Australia';
    //en5.setCountry1('Australia');
    //en5.getCountry1();
    //frm5.country__c = 'Australia';
    frm5.Partner_Type__c = 'Corporate Reseller';
    frm5.Class_of_Trade__c = 'Corporate Reseller';
    //system.debug('-----frm5.Partner_Type__c--' + frm5.Partner_Type__c);
    frm5.Company_Name_English__c ='Lionel messi';
    frm5.website__c='www.hotmail.com';
    frm5.email__c ='test@hotmail.com';
    //frm5.Partner_Type__c = 'Corporate Reseller';
    //en5.step2();  
    
    test.starttest();
    
    frm5.website__c='www.rapid.com';
    frm5.email__c ='test@rapid.com';
    frm5.country__c ='United States';
    en5.setCountry1('United States');
    en5.getCountry1();
    frm5.State_province__c =null;
    list<Click_Through_Agreement__c>  ctaList = new list<Click_Through_Agreement__c>();
    frm5.cta_geo__c = 'AMER';
    frm5.Class_of_Trade__c = 'System Builder';
    ctaList.add(new Click_Through_Agreement__c(CTA_Link__c= 'test link' , IS_ACTIVE__C = true, Click_Through_Agreement_Section_1__c = 'test cta 1',Click_Through_Agreement_Section_2__c = 'cta 2',Class_of_Trade__c = frm5.Partner_Type__c , geo__c =frm5.cta_geo__c));
    insert ctaList;
    system.debug('--------ctaList of test class------' + ctaList);
    en5.step2();
    
    frm5.Class_of_Trade__c = 'Technology Alliance Partner';
    frm5.Tap_Program_Level__c =null;
    en5.setCountry1('United States');
    en5.getCountry1();
    //en5.step2();
    
    //Sharmas: Commented on 06/08/2009
    
    //Sharmas: Added on 06/08/2009
    list<Contact> emailField = new list<Contact>();
    emailField.add(new Contact(AccountId=Acc[0].Id,LastName = 'Test Contact', email = 'testmswaleh1212122@test.com',RecordTypeId= recursive.PartnerContactRecType));
    insert emailField;
    System.currentPageReference().getParameters().put('program','solutionprovider');
    string em = emailField[0].email;
    frm5.email__c =em;
    //en5.step2();
    
    frm5.Top_5_Vertical_Mkts__c ='test;test;test;test;test';
    frm5.Class_of_Trade__c ='System Builder';
    en5.step3();
    //frm5.Class_of_Trade__c ='Service Provider';
    //en5.step3();
    frm5.Hardware__c =50;
    frm5.software__c =50;
    frm5.Class_of_Trade__c ='System';
    frm5.Geo__c = 'EMEA';
    en5.step3();
    //frm5.Class_of_Trade__c ='System Builder';
    //en5.step3();
    frm5.Geo__c = 'AMER';
    frm5.Build_brand_your_own_server_hardware__c ='Yes';
    en5.step3();
    //frm5.Class_of_Trade__c ='Service Provider';
    //en5.step3();
    frm5.Class_of_Trade__c ='Technology Alliance Partner';
    frm5.What_is_your_technical_objective_with_VM__c = 'Other';
    en5.step3();
    frm5.What_is_your_technical_objective_with_VM__c = 'Test';
    frm5.website__c ='www.hotmail.com';
    frm5.Primary_Business_Contact_Email__c ='test@good.com';
    en5.step3();
    frm5.Primary_Business_Contact_Email__c ='test@hotmail.com';
    en5.step3();
    frm5.website__c ='www.good.com';
    frm5.Primary_Business_Contact_Email__c ='test@good.com';
    frm5.Primary_Technical_Email__c = 'test@bad.com';
    en5.step3();
    frm5.Primary_Technical_Email__c = 'test@good.com';
    en5.step3();
    test.stoptest();
    frm5.Class_of_Trade__c ='Service Provider';
    frm5.If_YES_what_rental_programs__c ='1';
    frm5.License_Administrator_Email__c ='test@bad.com';
    en5.step3();
    frm5.License_Administrator_Email__c ='test@good.com';
    en5.step3();
    frm5.Class_of_Trade__c ='test';
    en5.step3();
    
    
    frm5.Digital_Signature__c='/w/';

    //en5.save();
    
    frm5.Class_of_Trade__c ='System Builder';
    frm5.Digital_Signature__c='/s/ First';
    frm5.Position_held_within_Company__c ='Manager';
    //en5.save();
    
    frm5.Class_of_Trade__c ='test';
    //en5.save();
} 
/*
  public static testMethod void VMW_Test_Enroll_II()
{

    recursive.isAtFuture = true;

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
}
*/
  public static testMethod void VMW_Test_Enroll_III()
{

    recursive.isAtFuture = true;
    EnrollController en2 = new EnrollController();
    System.currentPageReference().getParameters().put('program','solutionprovider');
    Form__c frm2 = en2.form;
    frm2.Digital_Signature__c = '/s/ First Last';
    frm2.Partner_Type__c = 'Global System Integrator/Outsourcer';
    frm2.Position_held_within_Company__c ='Manager';
    frm2.country__c = 'Australia';
    frm2.FirstName__c ='Fi';
    frm2.Lastname__c='Las';
    frm2.I_AGREE__c = false;
    //en2.save();
}
  public static testMethod void VMW_Test_Enroll_IV()
{

    recursive.isAtFuture = true;
    EnrollController en3 = new EnrollController();
    System.currentPageReference().getParameters().put('program','technologyprovider');
    Form__c frm3 = en3.form;
    frm3.Digital_Signature__c = '';
    frm3.Partner_Type__c = 'System Builder';
    frm3.Class_of_trade__c = 'System Builder';
    frm3.Position_held_within_Company__c ='Manager';
    frm3.country__c = 'Australia';
    frm3.FirstName__c ='Fi';
    frm3.Lastname__c='Las';
    frm3.I_AGREE__c = true;
    en3.save();
}
  public static testMethod void VMW_Test_Enroll_V()
{

    recursive.isAtFuture = true;
    EnrollController en4 = new EnrollController();
    System.currentPageReference().getParameters().put('program','systembuilder');
    Form__c frm4 = en4.form;
    frm4.Digital_Signature__c = '';
    frm4.Partner_Type__c = 'Solution Provider';
    frm4.Class_of_trade__c = 'Solution Provider';
    frm4.Position_held_within_Company__c ='Manager';
    frm4.country__c = 'Australia';
    frm4.FirstName__c ='Fi';
    frm4.Lastname__c='Las';
    frm4.I_AGREE__c = true;
    en4.save();
}
  public static testMethod void VMW_Test_Enroll_VI()
{

    recursive.isAtFuture = true;
    EnrollController en5 = new EnrollController();
    System.currentPageReference().getParameters().put('program','tap');
    Form__c frm5 = en5.form;
    frm5.Digital_Signature__c = '/s/ First Last';
    frm5.Partner_Type__c = 'Solution Provider';
    frm5.Class_of_trade__c = 'Solution Provider';
    frm5.Position_held_within_Company__c ='';
    frm5.country__c = 'Australia';
    frm5.FirstName__c ='Fi';
    frm5.Lastname__c='Las';
    frm5.I_AGREE__c = true;
    en5.save();
}
  public static testMethod void VMW_Test_Enroll_VII()
{

    recursive.isAtFuture = true;
    EnrollController en6 = new EnrollController();
    System.currentPageReference().getParameters().put('program','solutionprovider');
    Form__c frm6 = en6.form;
    frm6.Digital_Signature__c = '/s/ First Last';
    frm6.Partner_Type__c = 'System Builder';
    frm6.Class_of_trade__c = 'System Builder';
    frm6.Position_held_within_Company__c ='';
    frm6.country__c = 'Australia';
    frm6.FirstName__c ='Fi';
    frm6.Lastname__c='Las';
    frm6.I_AGREE__c = true;
    en6.save();
}
  public static testMethod void VMW_Test_Enroll_VIII()
{

    recursive.isAtFuture = true;
    EnrollController en7 = new EnrollController();
    System.currentPageReference().getParameters().put('program','tap');
    Form__c frm7 = en7.form;
    frm7.Digital_Signature__c = '/s/ First Last';
    frm7.Partner_Type__c = 'System Builder';
    frm7.Class_of_trade__c = 'System Builder';
    frm7.Position_held_within_Company__c ='Manager';
    frm7.country__c = 'Australia';
    frm7.FirstName__c ='Fi';
    frm7.Lastname__c='Las';
    frm7.I_AGREE__c = true;
    en7.save();
}
  public static testMethod void VMW_Test_Enroll_IX()
{

    recursive.isAtFuture = true;
    EnrollController en8 = new EnrollController();
    System.currentPageReference().getParameters().put('program','');
    Form__c frm8 = en8.form;
    frm8.Digital_Signature__c = '/s/ First Last';
    frm8.Partner_Type__c = 'Solution Provider';
    frm8.Class_of_trade__c = 'Solution Provider';
    frm8.Position_held_within_Company__c ='Manager';
    frm8.country__c = 'Australia';
    frm8.FirstName__c ='Fi';
    frm8.Lastname__c='Las';
    frm8.I_AGREE__c = true;
    en8.save();
}
  public static testMethod void VMW_Test_Enroll_X()
    {

    recursive.isAtFuture = true;
    EnrollController en11 = new EnrollController();
    System.currentPageReference().getParameters().put('program','tap');
    Form__c frm11 = en11.form;
    frm11.Digital_Signature__c = '/s/ First Last';
    frm11.Partner_Type__c = 'Solution Provider';
    frm11.Class_of_trade__c = 'Solution Provider';
    frm11.Position_held_within_Company__c ='Manager';
    frm11.country__c = 'Australia';
    frm11.FirstName__c ='Fi';
    frm11.Lastname__c='Las';
    frm11.I_AGREE__c = true;
    en11.save();
    }
  public static testMethod void VMW_Test_Enroll_XI()
    {

    recursive.isAtFuture = true;
    EnrollController en11 = new EnrollController();
    System.currentPageReference().getParameters().put('program','tap');
    Form__c frm11 = en11.form;
    frm11.Digital_Signature__c = '/s/ First Last';
    frm11.Partner_Type__c = 'Technology Provider';
    frm11.Class_of_trade__c = 'Technology Provider';
    frm11.Position_held_within_Company__c ='Manager';
    frm11.country__c = 'Australia';
    frm11.FirstName__c ='Fi';
    frm11.Lastname__c='Las';
    frm11.I_AGREE__c = true;
    en11.save();
    }
  public static testMethod void VMW_Test_Enroll_XII()
    {

    recursive.isAtFuture = true;
    EnrollController en = new EnrollController();
    System.currentPageReference().getParameters().put('program','tap');
    PageReference tap = en.TAP();
    en.setIsStatePicklistCreated(true);
    en.getIsStatePicklistCreated();
    Form__c frm11 = en.form;
    frm11.Country__c = 'France';
    en.getVatRequired();
    EnrollController en1 = new EnrollController();
    System.currentPageReference().getParameters().put('program','serviceprovider');
    EnrollController en2 = new EnrollController();
    System.currentPageReference().getParameters().put('program','solutionprovider');
    EnrollController en3 = new EnrollController();
    System.currentPageReference().getParameters().put('program','technologyprovider');
    EnrollController en4 = new EnrollController();
    System.currentPageReference().getParameters().put('program','technologyprovider');
    }
  public static testMethod void VMW_Test_Enroll_XIII()
    {
    recursive.isAtFuture = true;
    EnrollController en11 = new EnrollController();
    System.currentPageReference().getParameters().put('program','technologyprovider');
    Form__c frm11 = en11.form;
    frm11.Digital_Signature__c = '/s/ First Last';
    frm11.Partner_Type__c = 'Global System Integrator/Outsourcer';
    frm11.Class_of_trade__c = 'Global System Integrator/Outsourcer';
    frm11.Position_held_within_Company__c ='Manager';
    frm11.country__c = 'Australia';
    frm11.FirstName__c ='Fi';
    frm11.Lastname__c='Las';
    frm11.I_AGREE__c = true;
    // en11.autoRegister();
    en11.saveskip();
    }
    
     public static testMethod void VMW_Test_Enroll_XIV()
    {
    recursive.isAtFuture = true;
    List<Account> Acc =  new List<Account>(); 
    Acc.add( new Account( Name = 'Test Account', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType));
    insert Acc;
    recursive.isAtFuture = true;
    list<Country__c> countryList = new list<Country__c>();
    countryList.add(new Country__c(Name = Acc[0].country__c, Country_Type__c = 'Developed',State_Required__c=true));
    countryList.add(new Country__c(Name = 'Australia', Country_Type__c = 'Developed'));
    countryList.add(new Country__c(Name = 'India', Country_Type__c = 'Developing'));
    insert countryList;
   
    PageReference pageRef = Page.PartnerEnrollment_Page1;
    Test.setCurrentPage(pageRef);
    EnrollController en11 = new EnrollController();
    System.currentPageReference().getParameters().put('program','TAP');
    Form__c frm11 = new Form__c();
    frm11.Digital_Signature__c = '/s/ First Last';
    frm11.Partner_Type__c = 'Technology Alliance Partner';
    frm11.Class_of_trade__c = 'Technology Alliance Partner';
    frm11.Position_held_within_Company__c ='Manager';
    frm11.country__c = 'Germany';
    frm11.FirstName__c ='Fi';
    frm11.Company_Name_English__c =null;
    //en11.step2();
    frm11.Lastname__c='Las';
    frm11.I_AGREE__c = true;
    insert frm11;
    en11.form =  frm11;
    
    //System.currentPageReference().getParameters().put('accountID', Acc[0].Id); 
    System.currentPageReference().getParameters().put('id', frm11.Id);
    en11.country1='Germany';
    en11.getIsStatePicklistCreated();
    
    en11.setTier('Specialized');
    //en11.saveskip();
    //en11.autoRegister();
    }
    
    public static testMethod void VMW_Test_Enroll_20()
    {
    recursive.isAtFuture = true;
    List<Account> Acc =  new List<Account>(); 
    Acc.add( new Account( Name = 'Test Account', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType));
    insert Acc;
    
    recursive.isAtFuture = true;
    list<Country__c> countryList = new list<Country__c>();
    countryList.add(new Country__c(Name = Acc[0].country__c, Country_Type__c = 'Developed',State_Required__c=true));
    countryList.add(new Country__c(Name = 'Australia', Country_Type__c = 'Developed',State_Required__c=true));
    countryList.add(new Country__c(Name = 'India', Country_Type__c = 'Developing',State_Required__c=true));
    insert countryList;
       
    PageReference pageRef = Page.PartnerEnrollment_Page1;
    Test.setCurrentPage(pageRef);    
    
           
    EnrollController en11 = new EnrollController();
    System.currentPageReference().getParameters().put('program','cipp');
    Form__c frm12 = new Form__c();
    
    frm12.Digital_Signature__c = '/s/ First Last';
    frm12.Partner_Type__c = 'Consulting and Integration Partner';
    frm12.Class_of_trade__c = 'Consulting and Integration Partner';
    frm12.Position_held_within_Company__c ='Manager';
    frm12.country__c = 'Germany';
    frm12.FirstName__c ='Fi';
    frm12.website__c= 'http\\www.lionel2389.com';
    frm12.Sales_Reps__c= 199999;
    frm12.Company_Name_English__c ='Test Account';
    frm12.Email__c='test@lionel2389.com';
    frm12.Lastname__c='Las';
    frm12.City__c =null;
    frm12.I_AGREE__c = true;
    insert frm12;
    en11.form  = frm12; 
    
    System.currentPageReference().getParameters().put('accountID', Acc[0].Id); 
    //System.currentPageReference().getParameters().put('id', frm11.Id);
    en11.country1='Germany';
    en11.state1=null;
    en11.step2();
    
    en11.setTier('Specialized');
    //en11.saveskip();
    //en11.autoRegister();
    }
    
     public static testMethod void VMW_Test_Enroll_22()
    {
    recursive.isAtFuture = true;
    List<Account> Acc =  new List<Account>(); 
    Acc.add( new Account( Name = 'Test Account', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType));
    Acc.add( new Account( Name = 'Test Account1', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType));
    insert Acc;
    
    recursive.isAtFuture = true;
    list<Country__c> countryList = new list<Country__c>();
    countryList.add(new Country__c(Name = Acc[0].country__c, Country_Type__c = 'Developed',State_Required__c=true));
    countryList.add(new Country__c(Name = 'Australia', Country_Type__c = 'Developed',State_Required__c=true));
    countryList.add(new Country__c(Name = 'India', Country_Type__c = 'Developing',State_Required__c=true));
    insert countryList;
    
    Contact contact1 = new Contact(LastName='TestContact1', AccountId = Acc[0].Id ,Primary_Contact__c = true, Job_Function__c = 'test', FirstName = 'test',
        RecordTypeId= recursive.PartnerContactRecType);
    insert contact1;
    Acc[0].Contact__c= contact1.id;
    update Acc;       
    
     Profile_Name_Mapping__c prf = CustomSettingUtility.getProfileNameMapping('Partner Rep Mgr-MDF-Leads')    ;
         
    User usr3   = new User(alias = 'u152', email='newuser21@testorg.com', 
        emailencodingkey='UTF-8', lastname='Testing', languagelocalekey='en_US', 
        localesidkey='en_US', profileid = prf.Profile_Id__c,
        timezonesidkey='America/Los_Angeles', username='newuser21@inforte.com', ContactId = contact1.Id, IsActive = true);
   
   System.runas(usr3)
   {
    
      EnrollController en11 = new EnrollController();
      System.currentPageReference().getParameters().put('program','cipp');
      Form__c frm11 = en11.form;
      frm11.Digital_Signature__c = '/s/ First Last';
      frm11.Partner_Type__c = 'Consulting and Integration Partner';
      frm11.Class_of_trade__c = 'Consulting and Integration Partner';
      frm11.Position_held_within_Company__c ='Manager';
      frm11.country__c = 'Germany';
      frm11.FirstName__c ='Fi';
      frm11.Company_Name_English__c ='Test Account';
      frm11.Lastname__c='Las';
      frm11.I_AGREE__c = true;
      insert frm11;
    
    //System.currentPageReference().getParameters().put('accountID', Acc[0].Id); 
     PageReference pageRef = Page.PartnerEnrollment_Page1;
     Test.setCurrentPage(pageRef);
     System.currentPageReference().getParameters().put('id', frm11.Id);
     en11.country1='Germany';
     en11.state1='';
     en11.autoRegister();
    }
    }
    
    public static testMethod void VMW_Test_Enroll_23()
    {
    recursive.isAtFuture = true;
    List<Account> Acc =  new List<Account>(); 
    
    Acc.add( new Account( Name = 'Test Account', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType));
    Acc.add( new Account( Name = 'Test Account1', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType));
    insert Acc;
    recursive.isAtFuture = true;
    
    list<Country__c> countryList = new list<Country__c>();
    countryList.add(new Country__c(Name = Acc[0].country__c, Country_Type__c = 'Developed',State_Required__c=true));
    countryList.add(new Country__c(Name = 'Australia', Country_Type__c = 'Developed',State_Required__c=true));
    countryList.add(new Country__c(Name = 'India', Country_Type__c = 'Developing',State_Required__c=true));
    insert countryList;
   
    List<Form__c> form = new List<Form__c>();
    form.add(new Form__c(Account__c = Acc[0].id,Company_Name_English__c='Test Account',Approval_status__c ='In Progress', Country__c = 'Germany', geo__c = 'AMER', Email__c = 'test@lionel.com', firstname__c ='test', lastname__c= 'test'));
    form.add(new Form__c(Account__c = Acc[0].id,Company_Name_English__c='Test Account',Approval_status__c ='In Progress', Country__c = 'Germany', geo__c = 'AMER', Email__c = 'test@lionel.com', firstname__c ='test', lastname__c= 'test'));
    insert form;
    
    EnrollController en11 = new EnrollController();
    System.currentPageReference().getParameters().put('program','cipp');
    Form__c frm11 = new Form__c();
    
    frm11.Digital_Signature__c = '/s/ First Last';
    frm11.Partner_Type__c = 'Consulting and Integration Partner';
    frm11.Class_of_trade__c = 'Consulting and Integration Partner';
    frm11.Position_held_within_Company__c ='Manager';
    frm11.country__c = 'Germany';
    frm11.FirstName__c ='Fi';
    frm11.Company_Name_English__c ='';        
    frm11.Lastname__c='Las';
    frm11.I_AGREE__c = true;
    en11.form  = frm11; 
    
    System.currentPageReference().getParameters().put('accountID', Acc[0].Id); 
    //System.currentPageReference().getParameters().put('id', frm11.Id);
    en11.country1='Germany';
    en11.state1=null;
    en11.step2();
    en11.step4();
    
    en11.setTier('Specialized');
    en11.saveskip();
    //en11.autoRegister();
    }       
    
     public static testMethod void VMW_Test_Enroll_24()
    {
    recursive.isAtFuture = true;
    List<Account> Acc =  new List<Account>();
    
    Account Ac1 = new Account(Name = 'Test Account', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType);  
    Acc.add(Ac1);
    
    Account Ac2 = new Account( Name = 'Test Account1', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType);  
    Acc.add(Ac2);
    
    recursive.isAtFuture = true;
    
    List<Programs_Administration__c> pad_dist   = new List<Programs_Administration__c>();
         
    
    pad_dist.add(new Programs_Administration__c(Program_Type__c ='Service Provider', Program_Tier_Level_c__c = null));
    pad_dist.add(new Programs_Administration__c(Program_Type__c ='Technology Alliance Partner', Program_Tier_Level_c__c = 'Premier'));
    pad_dist.add(new Programs_Administration__c(Program_Type__c ='Consulting and Integration Partner', Program_Tier_Level_c__c = 'Premier'));
    
    
    list<Click_Through_Agreement__c> sct1 = new list<Click_Through_Agreement__c>();
    sct1.add( new Click_Through_Agreement__c(Click_Through_Agreement_Section_1__c = 'test', Click_Through_Agreement_Section_2__c = 'test', Class_of_Trade__c ='Solution Provider' , geo__c = 'AMER' , IS_ACTIVE__C = true));
    insert sct1;
    
    insert pad_dist;
    
    List<Program_Details__c> pg = new List<Program_Details__c>();
    
    pg.add(new Program_Details__c(Account_Name_c__c = Acc[0].id, Programs_Name__c =pad_dist[0].Id,isActive__c = true,Program_Status__c = 'Authorized'));
    pg.add(new Program_Details__c( Account_Name_c__c = Acc[0].id, Programs_Name__c =pad_dist[1].Id,isActive__c = true,Program_Status__c = 'Authorized'));
    
    
    list<Country__c> countryList = new list<Country__c>();
    countryList.add(new Country__c(Name = Acc[0].country__c, Country_Type__c = 'Developed',State_Required__c=true));
    countryList.add(new Country__c(Name = 'Australia', Country_Type__c = 'Developed',State_Required__c=true));
    countryList.add(new Country__c(Name = 'India', Country_Type__c = 'Developing',State_Required__c=true));
    insert countryList;
   
    List<Form__c> form = new List<Form__c>();
    form.add(new Form__c(Account__c = Acc[0].id,Company_Name_English__c='Test Account',Class_Of_Trade__c ='Service Provider',Approval_status__c ='In Progress', Country__c = 'Germany', geo__c = 'AMER', Email__c = 'test@lionel.com', firstname__c ='test', lastname__c= 'test'));
    form.add(new Form__c(Account__c = Acc[0].id,Company_Name_English__c='Test Account',Class_Of_Trade__c ='Technology Alliance Partner',Approval_status__c ='In Progress', Country__c = 'Germany', geo__c = 'AMER', Email__c = 'test@lionel.com', firstname__c ='test', lastname__c= 'test'));
    insert form;
    
      PageReference pageRef = Page.Enrollment_CIPP;
      Test.setCurrentPage(pageRef);
  
    EnrollController en11 = new EnrollController();
    System.currentPageReference().getParameters().put('program','cipp');
    
    Form__c frm11 = new Form__c();
    
    frm11.Digital_Signature__c = '/s/ First Last';
    frm11.Partner_Type__c = 'Consulting and Integration Partner';
    frm11.Class_of_trade__c = 'Consulting and Integration Partner';
    frm11.Position_held_within_Company__c ='Manager';
    frm11.country__c = 'Germany';
    frm11.FirstName__c ='Fi';
    frm11.Company_Name_English__c ='';
    
    frm11.Lastname__c='Las';
    frm11.I_AGREE__c = true;
 //  insert frm11;
    en11.form  = frm11; 
    System.currentPageReference().getParameters().put('accountID', Acc[0].Id); 
    //System.currentPageReference().getParameters().put('id', frm11.Id);
    en11.country1='Germany';
    en11.state1=null;
    en11.step2();
    en11.step4();
    en11.setTier('Specialized');
    en11.saveskip();
    //en11.autoRegister();
    }       
    
    
    public static testMethod void VMW_Test_Enroll_25()
    {
    recursive.isAtFuture = true;
    List<Account> Acc =  new List<Account>();
    
    Account Ac1 = new Account(Name = 'Test Account', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType);  
    Acc.add(Ac1);        
    Account Ac2 = new Account( Name = 'Test Account', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType);  
    Acc.add(Ac2);
    
    recursive.isAtFuture = true;
    EnrollController en11 = new EnrollController();
    System.currentPageReference().getParameters().put('program','ServiceProvider');        
    List<Programs_Administration__c> pad_dist   = new List<Programs_Administration__c>();         
    
    pad_dist.add(new Programs_Administration__c(Program_Type__c ='Service Provider', Program_Tier_Level_c__c = null));
    pad_dist.add(new Programs_Administration__c(Program_Type__c ='Technology Alliance Partner', Program_Tier_Level_c__c = 'Premier'));
    pad_dist.add(new Programs_Administration__c(Program_Type__c ='Consulting and Integration Partner', Program_Tier_Level_c__c = 'Premier'));
            
    list<Click_Through_Agreement__c> sct1 = new list<Click_Through_Agreement__c>();
    sct1.add( new Click_Through_Agreement__c(Click_Through_Agreement_Section_1__c = 'test', Click_Through_Agreement_Section_2__c = 'test', Class_of_Trade__c ='Solution Provider' , geo__c = 'AMER' , IS_ACTIVE__C = true));
    insert sct1;        
    insert pad_dist;        
    List<Program_Details__c> pg = new List<Program_Details__c>();
    pg.add(new Program_Details__c(Account_Name_c__c = Acc[0].id, Programs_Name__c =pad_dist[0].Id,isActive__c = true,Program_Status__c = 'Authorized'));
    pg.add(new Program_Details__c( Account_Name_c__c = Acc[0].id, Programs_Name__c =pad_dist[1].Id,isActive__c = true,Program_Status__c = 'Authorized'));
        
    list<Country__c> countryList = new list<Country__c>();
    countryList.add(new Country__c(Name = 'Germany', Country_Type__c = 'Developed',State_Required__c=true));
    countryList.add(new Country__c(Name = 'Australia', Country_Type__c = 'Developed',State_Required__c=true));
    countryList.add(new Country__c(Name = 'India', Country_Type__c = 'Developing',State_Required__c=true));
    insert countryList;
           
    List<Form__c> form = new List<Form__c>();
    form.add(new Form__c(Company_Name_English__c='Test Account',Class_Of_Trade__c ='Service Provider',Approval_status__c ='In Progress', Country__c = 'Germany', geo__c = 'EMEA', Email__c = 'test@lionel.com', firstname__c ='test', lastname__c= 'test'));
    form.add(new Form__c(Company_Name_English__c='Test Account',Class_Of_Trade__c ='Technology Alliance Partner',Approval_status__c ='In Progress', Country__c = 'Germany', geo__c = 'EMEA', Email__c = 'test@lionel.com', firstname__c ='test', lastname__c= 'test'));
    insert form;
    
    PageReference pageRef = Page.PartnerEnrollment_Page1;
    Test.setCurrentPage(pageRef);
       
    Form__c frm11 = new Form__c();
    
    frm11.Digital_Signature__c = '/s/ First Last';
    frm11.Partner_Type__c = 'Service Provider';
    frm11.Class_of_trade__c = 'Service Provider';
    frm11.Position_held_within_Company__c ='Manager';
    frm11.country__c = 'Germany';
    frm11.FirstName__c ='Fi';
    frm11.Company_Name_English__c ='Test Account';
    frm11.Lastname__c='Las';
    frm11.I_AGREE__c = true;
    insert frm11;
    en11.form  = frm11; 
    //System.currentPageReference().getParameters().put('accountID', Acc[0].Id); 
    System.currentPageReference().getParameters().put('id', frm11.Id);
    en11.country1='Germany';
    en11.state1=null;
    en11.step2();
    en11.step4();
    en11.setTier('Specialized');
    en11.save();
    //en11.autoRegister();
    }     
    
    
       
    public static testMethod void VMW_Test_Enroll_26()
    {
    recursive.isAtFuture = true;
    List<Account> Acc =  new List<Account>();
    
    Account Ac1 = new Account(Name = 'Test Account', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType);  
    Acc.add(Ac1);        
    Account Ac2 = new Account( Name = 'Test Account', Address_1_del__c = 'Test Address', City__c = 'Test City', country__c = 'Germany',
    Zip_Postal_Code__c = '1111111',RecordTypeId= recursive.PartnerAccountRecType);  
    Acc.add(Ac2);
    
    recursive.isAtFuture = true;
    EnrollController en11 = new EnrollController();
    System.currentPageReference().getParameters().put('program','ServiceProvider');        
    List<Programs_Administration__c> pad_dist   = new List<Programs_Administration__c>();         
    
    pad_dist.add(new Programs_Administration__c(Program_Type__c ='Distributor', Program_Tier_Level_c__c = null));
    pad_dist.add(new Programs_Administration__c(Program_Type__c ='Distributor', Program_Tier_Level_c__c = 'Premier'));
    pad_dist.add(new Programs_Administration__c(Program_Type__c ='Distributor', Program_Tier_Level_c__c = 'Premier'));
            
    list<Click_Through_Agreement__c> sct1 = new list<Click_Through_Agreement__c>();
    sct1.add( new Click_Through_Agreement__c(Click_Through_Agreement_Section_1__c = 'test', Click_Through_Agreement_Section_2__c = 'test', Class_of_Trade__c ='Distributor' , geo__c = 'AMER' , IS_ACTIVE__C = true));
    insert sct1;        
    insert pad_dist;        
    List<Program_Details__c> pg = new List<Program_Details__c>();
    pg.add(new Program_Details__c(Account_Name_c__c = Acc[0].id, Programs_Name__c =pad_dist[0].Id,isActive__c = true,Program_Status__c = 'Authorized'));
    pg.add(new Program_Details__c( Account_Name_c__c = Acc[0].id, Programs_Name__c =pad_dist[1].Id,isActive__c = true,Program_Status__c = 'Authorized'));
        
    list<Country__c> countryList = new list<Country__c>();
    countryList.add(new Country__c(Name = 'Germany', Country_Type__c = '',State_Required__c=true));
    countryList.add(new Country__c(Name = 'Australia', Country_Type__c = '',State_Required__c=true));
    countryList.add(new Country__c(Name = 'India', Country_Type__c = '',State_Required__c=true));
    insert countryList;
           
    List<Form__c> form = new List<Form__c>();
    form.add(new Form__c(Company_Name_English__c='Test Account',Class_Of_Trade__c ='Distributor',Approval_status__c ='In Progress', Country__c = 'Germany',city__c=null,geo__c = 'EMEA', Email__c = 'test@lionel23.com',website__c= 'http\\irtie.com', firstname__c ='test', lastname__c= 'test'));
    form.add(new Form__c(Company_Name_English__c='Test Account',Class_Of_Trade__c ='Distributor',Approval_status__c ='In Progress', Country__c = 'Germany',city__c=null,geo__c = 'EMEA', Email__c = 'test@lionel23.com',website__c= 'http\\irtie.com', firstname__c ='test', lastname__c= 'test'));
    insert form;
    
    PageReference pageRef = Page.PartnerEnrollment_Page1;
    Test.setCurrentPage(pageRef);
       
    Form__c frm11 = new Form__c();
    
    frm11.Digital_Signature__c = '/s/ First Last';
    frm11.Partner_Type__c = 'Distributor';
    frm11.Class_of_trade__c = 'Distributor';
    frm11.Position_held_within_Company__c ='Manager';
    frm11.country__c = 'Germany';
    frm11.FirstName__c ='Fi';
    frm11.website__c= 'http\\irtie.com';
    frm11.Sales_Reps__c= 199999;
    frm11.Company_Name_English__c ='Test Account';
    frm11.Email__c='test@lionel23.com';
    frm11.Lastname__c='Las';
    frm11.City__c =null;
    frm11.I_AGREE__c = true;
    insert frm11;
    en11.form  = frm11; 
    //System.currentPageReference().getParameters().put('accountID', Acc[0].Id); 
    System.currentPageReference().getParameters().put('id', frm11.Id);
    en11.country1='Germany';
    en11.state1=null;
    en11.step2();
    en11.saveNeg();
    en11.step5();
    en11.step4();
    en11.setTier('Specialized');
    en11.save();
    //en11.autoRegister();
    
     EnrollController en12 = new EnrollController();
      Form__c frm12 = new Form__c();
    
    frm12.Digital_Signature__c = '/s/ First Last';
    frm12.Partner_Type__c = 'Distributor';
    frm12.Class_of_trade__c = 'Distributor';
    frm12.Position_held_within_Company__c ='Manager';
    frm12.country__c = 'Germany';
    frm12.FirstName__c ='Fi';
    frm12.website__c= 'http\\www.lionel2389.com';
    frm12.Sales_Reps__c= 199999;
    frm12.Company_Name_English__c ='Test Account';
    frm12.Email__c='test@lionel2389.com';
    frm12.Lastname__c='Las';
    frm12.City__c =null;
    frm12.I_AGREE__c = true;
    insert frm12;
    en12.form  = frm12; 
    //en12.step5();
     
    }    
}