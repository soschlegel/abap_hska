# Homework

The following task describes the Homework for the ABAP Course

## Story

I am working as ABAP Developers since some years, but I now want to learn some other programming language and technologies - but where to start and most interessting: *with what to start?*
Build for me a web-based Application, where I can see, what's the new cool and fancy stuff to learn!

## Requirements

* ABAP based Backend
* Web-Frontend
* Integrate some Validations
* Integrate any kind of Action

## Organisation

* Create a Git-Repository
* Package-Name YHSKA_##_HomeWork

## Optional Ideas for improvements

* Use Web-Service
* Use EML in any way
* Use some nice Visualization (i.e. [Star Rating](presentations/Bewertungssterne.pdf) )

## Important Notes

* **If you use any composition between any kind of parent and child entity, then you should take a look at CDS-View */DMO/I_TRAVEL_M* and all related artifacts around to understand how *association to parent* works in combination with *composition [0..*] of* - otherwise you will for sure loose a lot of time**

* For your validation you should create a message for the user and this requires a Message-Class (it's not a typical class like used in OO-Programming!). A short introduction can be found [here](presentations/MessageClass.pdf)

* In the Git-Explanation is an error in chapter 1. Don't use the Continous Integration Plugin - use instead the one described [here](https://tools.hana.ondemand.com/#abap) under the section *abapGit*. We will update our instruction shortly. A small example is described [here](https://developers.sap.com/tutorials/abap-environment-abapgit.html#f04bf1cc-915a-4eb7-b54f-fd923a4e0f2d), but keep in mind, that you use an other scenario (you work with *Cloud-to-Cloud* and not *On-Prem-To-Cloud*).

* Automatic generation of values for your GUID can be achieved via the **early numbering** - see information [here](https://help.sap.com/viewer/923180ddb98240829d935862025004d6/Cloud/en-US/cb558d9c68cc4082a6b18769a19cec06.html). The keyfield you use on databaselevel has to be defined as *SYSUUID_16* - this should work via UI and EML

* *DON'T FORGET TO USE THE **CLIENT**-FIELD IN YOUR DATABASE-TABLE*
  
