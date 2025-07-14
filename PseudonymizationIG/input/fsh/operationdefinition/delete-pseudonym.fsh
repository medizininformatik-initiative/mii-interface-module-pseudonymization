Instance: DeletePseudonym
InstanceOf: OperationDefinition
Usage: #definition
Description: "Deletes a single pseudonym-entry (identified by the original value) in the specified domain, if the configuration of this domain allows this."
* name = "Delete-Pseudonym"
* title = "delete-pseudonym"
* publisher = "Medizininformatik Inititative"
* kind = #operation
* description = "Deletes a single pseudonym entry (identified by the original value) in the specified domain, if the configuration of this domain allows this."
* affectsState = true
* status = #active
* code = #delete-pseudonym
* comment = "Deletes a single pseudonym entry (identified by the original value) in the specified domain, if the configuration of this domain allows this."
* system = true
* type = false
* instance = false

* parameter[+]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Specification of the pseudonymisation context within which the specified original values are deleted."
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
  * documentation = "Specification of an original value for which a deletion is to be performed in the specified pseudonymisation context."
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

Instance: Parameters-DeletePseudonym-request-example-1
InstanceOf: Parameters
Description: "An example of a $delete-pseudonym request using two original values of type string"
Usage: #example
* parameter[+].name = "target"
* parameter[=].valueString = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueString = "D1CL0CAL2"

Instance: OperationOutcome-DeletePseudonym-response-example-1
InstanceOf: OperationOutcome
Description: "An example of a $delete-pseudonym response with success"
Usage: #example
* issue
  * severity = #information
  * code = #informational
  * details.coding = http://terminology.hl7.org/CodeSystem/operation-outcome#MSG_DELETED
  * diagnostics = "Entry deleted."

Instance: OperationOutcome-DeletePseudonym-response-example-2
InstanceOf: OperationOutcome
Description: "An example of a $delete-pseudonym response with error"
Usage: #example
* issue
  * severity = #error
  * code = #error
  * details.coding = http://hl7.org/fhir/issue-type#not-found
  * diagnostics = "Not Found."
