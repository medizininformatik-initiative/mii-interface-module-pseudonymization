Instance: AnonymizeOriginal
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
  * min = 1
  * max = "1"
  * documentation = "Status return of the individual anonymisations performed"
  * type = #OperationOutcome

Instance: Parameters-AnonymizeOriginal-request-example-1
InstanceOf: Parameters
Description: "An example of a $anonymize-original request using a original value of type string"
Usage: #example
* parameter[+].name = "target"
* parameter[=].valueString = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueString = "D1CL0CAL1"

Instance: OperationOutcome-AnonymizeOriginal-response-example-1
InstanceOf: OperationOutcome
Description: "An example of a $anonymize-original  response with success code"
Usage: #example
* issue
  * severity = #information
  * code = #informational
  * details.coding = http://terminology.hl7.org/CodeSystem/operation-outcome#MSG_UPDATED
  * diagnostics = "Entry Updated."
