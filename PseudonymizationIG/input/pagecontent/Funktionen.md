Version 1.1 der Schnittstelle sieht 5 Basisfunktionalitäten zur Umsetzung der folgenden Use Cases vor:
- [Erzeugung und Verwaltung von Personenpseudonymen](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/UseCases.html#use-case-1-erzeugung-und-verwaltung-von-personenpseudonymen-auf-basis-vorhandener-identifier)
- [Sekundärpseudonymisierung *ohne* standortübergreifendes Record Linkage](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/UseCases.html#use-case-3a-sekund%C3%A4rpseudonymisierung-ohne-standort%C3%BCbergreifendes-record-linkage)
- [Sekundärpseudonymisierung **mit** standortübergreifendem Record Linkage](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/UseCases.html#use-case-3b-sekund%C3%A4rpseudonymisierung-mit-standort%C3%BCbergreifendem-record-linkage)

 Operation                 | Spezifikation                                                                                                                                    | Beispiel Requests                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |Beispiel Responses
---------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---
 `$pseudonymize`           | [Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-Pseudonymize.html)         | [Beispiel1 String](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-PseudonymizeRequestWithStringExample.html)<br>[Beispiel2 Identifier](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-PseudonymizeRequestWithIdentifierExample.html)<br>[Beispiel3 Bundle](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Bundle-pseudonymize-example-bundle-batch-request.html) |[Beispiel1 String](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-PseudonymizeStringResponseExample.html)<br>[Beispiel2 Identifier](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-PseudonymizeIdentifierResponseExample.html)<br>[Beispiel3 Bundle](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Bundle-pseudonymize-example-bundle-batch-response.html)
 `$pseudonymize-multiple` | [Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-PseudonymizeMultiple.html) | [Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-PseudonymizeMultiple-request-example-1.html)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-PseudonymizeMultiple-response-example-1.html)
 `$de-pseudonymize`        | [Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-DePseudonymize.html)       | [Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-DePseudonymizeRequestWithStringExample.html)                                                                                                                                                                                                                                                                                                                                                 |[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-DePseudonymizeResponseWithStringExample.html)
 `$delete-pseudonym`      | [Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-DeletePseudonym.html)      | [Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-DeletePseudonym-request-example-1.html)                                                                                                                                                                                                                                                                                                                                           |[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-DeletePseudonym-response-example-1.html)<br>[Beispiel2 Not Found](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-DeletePseudonym-response-example-2.html)
 `$anonymize-original`    | [Definition](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/OperationDefinition-AnonymizeOriginal.html)    | [Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-AnonymizeOriginal-request-example-1.html)                                                                                                                                                                                                                                                                                                                                         |[Beispiel1](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Parameters-Parameters-AnonymizeOriginal-response-example-1.html)

### Unterscheidung von Pseudonym-Kardinalitäten

#### Single-Pseudonym-Kontext

Wenn Pseudonyme für Personen generiert werden, dann besteht meist eine *1 zu 1 Beziehung* zwischen den verschiedenen Kontexten.
D.h. eine Person hat pro Domäne nur ein Pseudonym. Daraus ergibt sich, dass es in jeder Domäne *zu jedem Originalwert stets nur ein Pseudonym*
gibt (Single-Pseudonym-Domäne).

Die Operation `$pseudonymize` fokussiert die Verwendung in Single-Pseudonym-Kontexten.

#### Multi-Pseudonym-Kontext
In bestimmten Fällen kann es jedoch erforderlich sein, dass es zu einer Person mehrere Pseudonyme geben soll innerhalb des gleichen Kontextes (Domäne).
Dies kann z.B. für eine Sekundärpseudonymisierung oder bei der Verwaltung von Bioproben oder Bilddaten erforderlich sein.
In diesen Fällen werden *für eine Person mehrere Pseudonyme innerhalb eines Kontextes (Domäne)* erzeugt.
Sogenannte Multi-Pseudonym-Kontexte erlauben es pro Originalwert mehrere Pseudonyme innerhalb der gleichen Domäne zu erzeugen.
Es besteht eine 1 zu n Beziehung zwischen Originalwert und Pseudonym, wobei n beliebig groß sein kann.

Die Auflösung von Pseudonymen erfolgt auf die gleiche Weise wie bei 1 zu 1 Beziehungen.
Der umgekehrte Fall muss jedoch berücksichtigen, dass es mehrere Pseudonyme geben kann und diese ggf. in höheren Pseudonymstufen nicht als Originalwert
auftauchen.

Die Operation `$pseudonymize-multiple` fokussiert die Verwendung in Multi-Pseudonym-Kontexten.

Die Umsetzung der oben beschriebenen **Use Cases zur Sekundärpseudonymisierung erfordern die Verwendung von Multi-Pseudonym-Kontexten** (siehe oben: [**ohne RL**](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/UseCases.html#use-case-3a-sekund%C3%A4rpseudonymisierung-ohne-standort%C3%BCbergreifendes-record-linkage)
und [**mit RL**](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/UseCases.html#use-case-3b-sekund%C3%A4rpseudonymisierung-mit-standort%C3%BCbergreifendem-record-linkage)).

### Implementierungshinweise

Der IG gestattet den erforderlichen Spielraum für die praktischen Umsetzung und Implementierung der obigen Funktionalitäten.

**In der vorliegenden ersten Version des IGs wird das Thema Listenverarbeitung zunächst außen vor gelassen und sind die Eingabe-Parameter aller Operations bewußt auf n=1 limitiert.**

Alle implementierten Operationen arbeiten daher in dieser ersten IG-Version jeweils auf singulären Eingaben, d.h. es wird genau ein Eingabewert z.B. pseudonymisiert. Um Listen von Eingabewerten zu verarbeiten wird bei der Implementierung auf die Batch- bzw. Transaction-Verarbeitung des FHIR Standards zurückgegriffen 1

Ein Bundle beinhaltet dabei die Liste an auszuführenden Operationen als Einträge in Bundle.entry. Abhängig vom Typ des Bundles wird die Listenverarbeitung entweder Blocking (Transaction) oder Non-Blocking (Batch) erfolgen (siehe [Beispiel-Bundle](https://medizininformatik-initiative.github.io/mii-interface-module-pseudonymization/Bundle-pseudonymize-example-bundle-batch-request.html))

Grundsätzlich ist dabei darauf zu achten, dass
- **Inhaltliche Fehler (eines Listeneintrags) zu kennzeichnen sind** und bekannte Fehlerursachen entsprechend nachvollziehbar gewürdigt werden sollten, z.B. ein zu depseudonymisierendes Pseudonym ist dem angefragten System unbekannt. Der Fehler kann per http://hl7.org/fhir/issue-type kodiert werden.
- **die Verarbeitung von Listen sowohl Blocking** (Abbruch Verarbeitung bei auftretendem Fehler) **als auch Non-Blocking** (Abarbeitung der kompletten Liste trotz Fehler) **erfolgen kann**. Die konkrete Variante wird durch die Implementierung festgelegt.

### Umgang mit Fehlern

Der http-Response-Status gibt Auskunft über die Art auftretender Fehler.

|HTTP-Status Code|Bedeutung|
----|----
|4XX |Client-Seitige Fehler: falsche Parameter, z.B. fehlende oder fehlerhafte Parameter, unzureichende Rechte, Request Throttling, |
|404 |Wert (z.B. Context, Pseudonym) ist nicht vorhanden |
|200 |Keine Fehler |

Weitere Fehlerarten sind möglich, z.B. 500 zur Meldung „unerwarteter Ereignisse bei der Verarbeitung“.

### Offene Punkte

Das Konzeptdokument verwendet einheitlich den Begriff „Personenpseudonym“, da das Datenschutzkonzept der MII explizit von einem dauerhaften Pseudonym je Standort und Person spricht. Die Erweiterung des Pseudonym-Begriffs auf beliebige Identifier ist für künftige Versionen des Konzeptdokumentes angedacht und wird in einer späteren Version des Schnittstellenkonzeptes (Version 2.0) berücksichtigt werden.

Ebenso ist eine Erweiterung des Konzeptes um die konkreten Szenarien 2 und 4 grundsätzlich denkbar.
