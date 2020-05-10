# Motivation

On this Page, you'll find important information like links, snippets etc. needed for the course

* [Agenda](agenda.md)
* [Tipps & Hints](hints.md)
* [Snippets](snippets.md)
* [Homework](homework.md)

## ADT installation

To install the front-end component of ADT, proceed as follows:

1. Get an installation of [Eclipse 2020-03](https://www.eclipse.org/downloads/packages/release/2020-03/r) (e.g. Eclipse IDE for Java Developers)
2. In Eclipse, choose in the menu bar Help > Install New Software...
3. Enter the URL <https://tools.hana.ondemand.com/latest>
4. Press Enter to display the available features.
5. Select ABAP Development Tools and choose Next.
6. On the next wizard page, you get an overview of the features to be installed. Choose Next.
7. Confirm the license agreements and choose Finish to start the installation.
<!-- Quelle: https://tools.hana.ondemand.com/#abap -->

## ABAP Code Conventions

(Replace ## with group number)

* Package: YHSKA##
* Class: YCL_HSKA##

## Useful

The [12 most useful keyboard shortcuts](ABAP_Shortcuts.md)

## Onboarding Links for ABAP in the Cloud and Hands On

* [Create a Trial Account on SAP Cloud Platform](https://developers.sap.com/tutorials/hcp-create-trial-account.html)
* [Create an SAP Cloud Platform ABAP Environment Trial User](https://developers.sap.com/tutorials/abap-environment-trial-onboarding.html)
* [Create Your First ABAP Console Application](https://developers.sap.com/tutorials/abap-environment-console-application.html)

## RAP

* [Develop a Fiori App Using the ABAP RESTful Programming Model (Managed Scenario)](https://developers.sap.com/group.abap-env-restful-managed.html)
  * Use your own Package or as described with **HSKA##** instead of **XXX**
  * In General: Use **HSKA** for every Object instead of **XXX**
* [Create Table Persistence and Generate Data](https://developers.sap.com/tutorials/abap-environment-persistence.html)
  * Use the same Transport Request, that you used before!
  * Change Classname of **ZCL_GENERATE_TRAVEL_DATA_XXX** to **ZCL_GEN_TRAVEL_DATA_HSKA00**
* [Create and Deploy HTML5 and SAP Fiori Launchpad Site Modules](https://developers.sap.com/tutorials/abap-environment-deploy-cf-production.html)
  * *Optional*
  * Be carefull to enter the Trial Account - otherwise you have to register for paid account

## ABAP/SAP on Youtube

1. [Thomas Jung](https://www.youtube.com/user/ThomasJung1)
2. [DJ Adams](https://www.youtube.com/user/qmacro99)
3. [Gregor Wolf](https://www.youtube.com/user/lupomania)

## Known Errors

* No SMS during Trial-Account Registration
  * Try with Page Reload
  * Add the leading 0
