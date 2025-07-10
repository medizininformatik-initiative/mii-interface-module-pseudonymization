Instance: AnonymizeOriginals
InstanceOf: OperationDefinition
Description: "Anonymises a single original entry within the specified domain. The reference of original value and pseudonym is permanently and irreversibly deleted."
Usage: #definition
* publisher = "Medizininformatik Inititative"
* description = "Anonymises a single original entry within the specified domain. The reference of original value and pseudonym is permanently and irreversibly deleted."
* name = "Anonymize-Original"
* title = "anonymize-original"
* status = #active
* kind = #operation
* affectsState = true
* code = #anonymize-original
* comment = "Anonymises a single original value within the specified domain. The reference of original value and pseudonym is permanently and irreversibly deleted."
* system = true
* type = false
* instance = false

* parameter[+]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Specification of the pseudonymisation context within which anonymisation is to be  performed for the specified original value."
  * type = #Element
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "string"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "Identifier"
* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Original value for which anonymisation is to be performed in the specified pseudonymisation context."
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
  * max = "1"
  * documentation = "Status return of the individual anonymisations performed"
  * part[0]
    * name = #target
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Pseudonymisation context"
    * type = #Element
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "string"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "Identifier"
  * part[+]
    * name = #original
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Original-Identifier"
    * type = #Element
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "string"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "Identifier"
  * part[+]
    * name = #result-code
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Success or error code"
    * type = #Coding

Instance: Parameters-AnonymizeOriginal-request-example-1
InstanceOf: Parameters
Description: "An example of a $anonymize-original request using a original value of type string"
Usage: #example
* parameter[+].name = "target"
* parameter[=].valueString = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueString = "D1CL0CAL1"

Instance: Parameters-AnonymizeOriginal-response-example-1
InstanceOf: Parameters
Description: "An example of a $anonymize-original request response"
Usage: #example
* parameter[+].name = "successStatus"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "Transfer1"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://fhir.example.com/identifiers/mrn"
* parameter[=].part[=].valueIdentifier.value = "D1CL0CAL1"
* parameter[=].part[+].name = "result-code"
* parameter[=].part[=].valueCoding = http://terminology.hl7.org/CodeSystem/operation-outcome#MSG_UPDATED
