Instance: AnonymizeOriginals
InstanceOf: OperationDefinition
Description: "Anonymisiert eine gegebene Liste von 1-n Originalwerten innerhalb der angegebenen Domäne. Dabei wird der Bezug von Originalwert und Pseudonym dauerhaft únd irreversibel gelöscht."
Usage: #definition
* publisher = "Medizininformatik Inititative"
* description = "Anonymisiert eine gegebene Liste von 1-n Originalwerten innerhalb der angegebenen Domäne. Dabei wird der Bezug von Originalwert und Pseudonym dauerhaft únd irreversibel gelöscht."
* name = "Anonymize-Originals"
* title = "anonymizeOriginals"
* status = #active
* kind = #operation
* affectsState = true
* code = #anonymize-originals
* comment = "Anonymisiert eine gegebene Liste von 1-n Originalwerten innerhalb der angegebenen Domäne. Dabei wird der Bezug von Originalwert und Pseudonym dauerhaft únd irreversibel gelöscht."
* system = true
* type = false
* instance = false

* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "Liste von 1-n Originalwerten"
  * part[+]
    * name = #target
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Angabe des Pseudonymisierungs-kontextes innerhalb derer für den angegebenen Originalwert eine Anonymisierung durchgeführt werden soll."
    * type = #Element
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "string"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "Identifier"
  * part[+]
    * name = #value
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Originalwerte für den in der angegebenen Pseudonymisierungs-kontextes eine Anonymisierung durchgeführt werden soll."
    * type = #Element
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "string"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "Identifier"

* parameter[+]
  * name = #successStatus
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "Status-Rückgabe der einzelnen durchgeführten Anonymisierungen"
  * part[0]
    * name = #target
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Pseudonymisierungskontext"
    * type = #Identifier
  * part[+]
    * name = #original
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Original-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #result-code
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Erfolgs- bzw. Fehlercode"
    * type = #Coding

Instance: Parameters-AnonymizeOriginals-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueString = "Herausgabe1"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueString = "D1CL0CAL1"

Instance: Parameters-AnonymizeOriginals-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+].name = "successStatus"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "Herausgabe1"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://fhir.example.com/identifiers/mrn"
* parameter[=].part[=].valueIdentifier.value = "D1CL0CAL1"
* parameter[=].part[+].name = "result-code"
* parameter[=].part[=].valueCoding = http://terminology.hl7.org/CodeSystem/operation-outcome#MSG_UPDATED
