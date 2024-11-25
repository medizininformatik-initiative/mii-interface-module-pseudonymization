Version 1.0 der Schnittstelle sieht 5 Basisfunktionalitäten zur Umsetzung der folgenden Use Cases vor:
- [Erzeugung und Verwaltung von Personenpseudonymen](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/UseCases.html#use-case-1-erzeugung-und-verwaltung-von-personenpseudonymen-auf-basis-vorhandener-identifier)
- [Sekundärpseudonymisierung *ohne* standortübergreifendes Record Linkage](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/UseCases.html#use-case-3a-sekund%C3%A4rpseudonymisierung-ohne-standort%C3%BCbergreifendes-record-linkage)
- [Sekundärpseudonymisierung **mit** standortübergreifendem Record Linkage](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/UseCases.html#use-case-3b-sekund%C3%A4rpseudonymisierung-mit-standort%C3%BCbergreifendem-record-linkage)

 Operation                 |Spezifikation|Beispiel Requests|Beispiel Responses
---------------------------|----|---|---
 `$pseudonymize`           |[Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-Pseudonymize.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-PseudonymizeRequestWithStringExample.html)<br>[Beispiel2](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-PseudonymizeRequestWithIdentifierExample.html)<br>[Beispiel3](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Bundle-pseudonymize-example-bundle-batch-request.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-PseudonymizeResponseExample.html)<br>[Beispiel3](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Bundle-pseudonymize-example-bundle-batch-response.html)
 `$pseudonymize-secondary` |[Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-PseudonymizeSecondary.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-PseudonymizeSecondary-request-example-1.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-PseudonymizeSecondary-response-example-1.html)
 `$de-pseudonymize`        |[Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-DePseudonymize.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-DePseudonymizeRequestWithStringExample.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-DePseudonymizeResponseWithStringExample.html)
 `$delete-pseudonyms`      |[Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-DeletePseudonyms.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-DeletePseudonyms-request-example-1.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-DeletePseudonyms-response-example-1.html)
 `$anonymize-originals`    |[Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-AnonymizeOriginals.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-AnonymizeOriginals-request-example-1.html)|[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-AnonymizeOriginals-response-example-1.html)

### Implementierungshinweise

Der IG gestattet den erforderlichen Spielraum für die praktischen Umsetzung und Implementierung der obigen Funktionalitäten.

Grundsätzlich ist dabei darauf zu achten, dass
- **Inhaltliche Fehler (eines Listeneintrags) zu kennzeichnen sind** und bekannte Fehlerursachen entsprechend nachvollziehbar gewürdigt werden sollten, z.B. ein zu depseudonymisierendes Pseudonym ist dem angefragten System unbekannt. Der Fehler kann per http://hl7.org/fhir/issue-type kodiert werden.
- **die Verarbeitung von Listen sowohl Blocking** (Abbruch Verarbeitung bei auftretendem Fehler) **als auch Non-Blocking** (Abarbeitung der kompletten Liste trotz Fehler) **erfolgen kann**. Die konkrete Variante wird durch die Implementierung festgelegt.

Alle implementierten Operationen arbeiten jeweils auf singulären Eingaben, d.h. es wird genau ein Eingabewert z.B. pseudonymisiert. Um Listen von Eingabewerten zu verarbeiten wird bei der Implementierung auf die Batch- bzw. Transaction-Verarbeitung des FHIR Standards zurückgegriffen 1

Ein Bundle beinhaltet dabei die Liste an auszuführenden Operationen als Einträge in Bundle.entry. Abhängig vom Typ des Bundles wird die Listenverarbeitung entweder Blocking (Transaction) oder Non-Blocking (Batch) erfolgen (siehe [Beispiel-Bundle](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Bundle-pseudonymize-example-bundle-batch-request.html))

### Umgang mit Fehlern

Der http-Response-Status gibt Auskunft über die Art auftretender Fehler.

|HTTP-Status Code|Bedeutung|
----|----
|4XX |Client-Seitige Fehler: falsche Parameter, z.B. fehlende oder fehlerhafte Parameter, unzureichende Rechte, Request Throttling, |
|404 |Wert (z.B. Context, Pseudonym) ist nicht vorhanden |
|200 |Keine Fehler |

Weitere Fehlerarten sind möglich, z.B. 500 zur Meldung „unerwarteter Ereignisse bei der Verarbeitung“.
