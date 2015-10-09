<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Copado_Test_FieldUpdate</fullName>
        <field>Name</field>
        <formula>UPPER(Name )</formula>
        <name>Copado_Test_FieldUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Copado_Test_WorkFlow_Rule</fullName>
        <actions>
            <name>Copado_Test_FieldUpdate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Copado_Test_Object__c.Copado_Test_CustomField__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
