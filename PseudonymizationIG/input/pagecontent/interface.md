## Funktionsüberblick

Version 1.0 der Schnittstelle sieht 5 Basisfunktionalitäten zur Umsetzung der folgenden Use Cases vor:
- [Erzeugung und Verwaltung von Personenpseudonymen](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/UseCases.html#use-case-1-erzeugung-und-verwaltung-von-personenpseudonymen-auf-basis-vorhandener-identifier)
- [Sekundärpseudonymisierung *ohne* standortübergreifendes Record Linkag](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/UseCases.html#use-case-3a-sekund%C3%A4rpseudonymisierung-ohne-standort%C3%BCbergreifendes-record-linkage)
- [Sekundärpseudonymisierung **mit** standortübergreifendem Record Linkage](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/UseCases.html#use-case-3b-sekund%C3%A4rpseudonymisierung-mit-standort%C3%BCbergreifendem-record-linkage)

 Operation                 |Spezifikation|Beispiel Requests|Beispiel Responses
---------------------------|----|---|---
 `$pseudonymize`           |[Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-Pseudonymize.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-PseudonymizeRequestWithStringExample.html)<br>[Beispiel2](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-PseudonymizeRequestWithIdentifierExample.html)<br>[Beispiel3](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Bundle-pseudonymize-example-bundle-batch-request.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-PseudonymizeResponseExample.html)<br>[Beispiel3](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Bundle-pseudonymize-example-bundle-batch-response.html)
 `$pseudonymize-secondary` |[Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-PseudonymizeSecondary.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-PseudonymizeSecondary-request-example-1.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-PseudonymizeSecondary-response-example-1.html)
 `$de-pseudonymize`        |[Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-DePseudonymize.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-DePseudonymizeRequestWithStringExample.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-DePseudonymizeResponseWithStringExample.html)
 `$delete-pseudonyms`      |[Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-DeletePseudonyms.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-DeletePseudonyms-request-example-1.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-DeletePseudonyms-response-example-1.html)
 `$anonymize-originals`    |[Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-AnonymizeOriginals.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-AnonymizeOriginals-request-example-1.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-AnonymizeOriginals-response-example-1.html)

## Implementierungshinweise

//TODO

## Umgang mit Fehlern

//TODO
