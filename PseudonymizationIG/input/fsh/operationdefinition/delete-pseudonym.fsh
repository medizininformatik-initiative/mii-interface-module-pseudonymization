Instance: DeletePseudonyms
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
  * documentation = "Status return of the individual deletions performed"
  * part[0]
    * name = #target
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Target-identifier"
    * type = #Identifier
  * part[+]
    * name = #original
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Original-identifier"
    * type = #Identifier
  * part[+]
    * name = #result-code
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Success or error code"
    * type = #Coding

Instance: Parameters-DeletePseudonym-request-example-1
InstanceOf: Parameters
Description: "An example of a $delete-pseudonym request using two original values of type string"
Usage: #example
* parameter[+].name = "target"
* parameter[=].valueString = "Herausgabe1"
* parameter[+].name = "original"
* parameter[=].valueString = "D1CL0CAL2"

Instance: Parameters-DeletePseudonym-response-example-1
InstanceOf: Parameters
Description: "An example of a $delete-pseudonym request response"
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

Instance: Parameters-DeletePseudonym-response-example-2
InstanceOf: Parameters
Description: "An example of a $delete-pseudonym request response with Error"
Usage: #example
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
