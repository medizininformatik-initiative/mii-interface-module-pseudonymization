Instance: DePseudonymize
InstanceOf: OperationDefinition
Description: "Returns the original value for a given pseudonym."
Usage: #definition
* name = "De-Pseudonymize"
* title = "De-Pseudonymize a given pseudonym."
* status = #active
* kind = #operation
* experimental = false
* publisher = "Medizininformatik Inititative"
* description = "Returns the original value for a given pseudonym. The algorithm to be used is left to the implementers of the operation. Errors during the execution of the operation must be returned as OperationOutcome."
* affectsState = true
* code = #de-pseudonymize
* system = true
* type = false
* instance = false

* parameter[0]
  * name = #pseudonym
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The pseudonym to de-pseudonymize."
  * type = #Element
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
    * valueUri = "string"
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
    * valueUri = "Identifier"

* parameter[+]
  * name = #target
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "A context value for the operation. This could be used for providing project names, pseudonym domains, etc."
  * type = #string

* parameter[+]
  * name = #original
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "The original value before pseudonymization."
  * type = #Element
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
    * valueUri = "string"
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
    * valueUri = "Identifier"

Instance: DePseudonymizeRequestWithStringExample
InstanceOf: Parameters
Description: "An example of a $de-pseudonymize request using a pseudonym value of type string"
* parameter[0]
  * name = "target"
  * valueString = "domain-mrn"
* parameter[+]
  * name = "pseudonym"
  * valueString = "pseudonym-XXXXX"

Instance: DePseudonymizeResponseWithStringExample
InstanceOf: Parameters
Description: "An example of a $de-pseudonymize request response"
* parameter[0]
  * name = "original"
  * valueString = "original-XXXXX"
