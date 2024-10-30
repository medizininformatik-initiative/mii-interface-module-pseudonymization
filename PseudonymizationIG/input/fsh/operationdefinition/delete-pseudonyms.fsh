Instance: DeletePseudonyms
InstanceOf: OperationDefinition
Usage: #definition
Description: "Löscht eine gegebene Liste von 1-n Einträgen (identifiziert durch den Originalwert) in der angegebenen Domäne, sofern die Konfiguration dieser Domäne dies erlaubt."
* name = "Delete-Pseudonyms"
* title = "delete-pseudonyms"
* publisher = "Medizininformatik Inititative"
* kind = #operation
* comment = "Löscht eine gegebene Liste von 1-n Einträgen (identifiziert durch den Originalwert) in der angegebenen Domäne, sofern die Konfiguration dieser Domäne dies erlaubt."
* affectsState = true
* status = #active
* code = #delete-pseudonyms
* comment = "Löscht eine gegebene Liste von 1-n Einträgen (identifiziert durch den Originalwert) in der angegebenen Domäne, sofern die Konfiguration dieser Domäne dies erlaubt."
* system = true
* type = false
* instance = false

* parameter[0]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Angabe der Domäne innerhalb derer die angegebenen Originalwerte gelöscht werden."
  * type = #string
  * searchType = #string
* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "Angabe der Originalwerte für die in der angegebenen Domäne eine Löschung durchgeführt werden soll."
  * type = #string
  * searchType = #string



* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "Originalwerte"
  * part[+]
    * name = #target
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Angabe des Pseudonymisierungs-kontextes innerhalb derer die angegebenen Originalwerte gelöscht werden."
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
    * documentation = "Angabe eines Originalwertes für den in der angegebenen Pseudonymisierungs-kontextes eine Löschung durchgeführt werden soll."
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
  * min = 1
  * max = "*"
  * documentation = "Status-Rückgabe der einzelnen durchgeführten Löschungen"
  * part[0]
    * name = #target
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Target-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #original
    * use = #out
    * min = 0
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


Instance: Parameters-DeletePseudonyms-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueString = "Herausgabe1"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueString = "D1CL0CAL2"
* parameter[+].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueString = "Herausgabe1"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueString = "D1CL0CAL3"


Instance: Parameters-DeletePseudonyms-response-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+].name = "successStatus"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "Herausgabe1"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://fhir.example.com/identifiers/mrn"
* parameter[=].part[=].valueIdentifier.value = "D1CL0CAL2"
* parameter[=].part[+].name = "result-code"
* parameter[=].part[=].valueCoding = http://terminology.hl7.org/CodeSystem/operation-outcome#MSG_DELETED
* parameter[+].name = "successStatus"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "Herausgabe1"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://fhir.example.com/identifiers/mrn"
* parameter[=].part[=].valueIdentifier.value = "D1CL0CAL3"
* parameter[=].part[+].name = "result-code"
* parameter[=].part[=].valueCoding.system = "http://hl7.org/fhir/issue-type"
* parameter[=].part[=].valueCoding.code = #not-found
* parameter[=].part[=].valueCoding.display = "Not Found"
