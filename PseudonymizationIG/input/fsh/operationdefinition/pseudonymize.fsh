Instance: Pseudonymize
InstanceOf: OperationDefinition
Description: "Generates a pseudonym for the given original value."
Usage: #definition
* name = "Pseudonymize"
* title = "Pseudonymize a given value."
* status = #active
* kind = #operation
* experimental = false
* publisher = "Medizininformatik Inititative"
* description = "Generates a pseudonym for the given value. The pseudonymization algorithm to be used is left to the implementers of the operation. Errors during the execution of the operation must be returned as OperationOutcome."
* affectsState = true
* code = #pseudonymize
* system = true
* type = false
* instance = false

* parameter[0]
  * name = #original
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The original value to pseudonymize."
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
  * name = #pseudonym
  * use = #out
  * min = 0
  * max = "1"
  * documentation = "The generated pseudonym."
  * type = #Element
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
    * valueUri = "string"
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
    * valueUri = "Identifier"

Instance: PseudonymizeRequestWithStringExample
InstanceOf: Parameters
Description: "An example of a $pseudonymize request using an original value of type string"
* parameter[0]
  * name = "target"
  * valueString = "domain-mrn"
* parameter[+]
  * name = "original"
  * valueString = "original-12345"

Instance: PseudonymizeRequestWithIdentifierExample
InstanceOf: Parameters
Description: "An example of a $pseudonymize request using an original value of type identifier"
* parameter[0]
  * name = "target"
  * valueString = "domain-mrn"
* parameter[+]
  * name = "original"
  * valueIdentifier
    * system = "https://fhir.example.com/identifiers/mrn"
    * value = "original-12345"

Instance: PseudonymizeResponseExample
InstanceOf: Parameters
Description: "An example of a response to a $pseudonymize request"
* parameter[0]
  * name = "pseudonym"
  * valueString = "pseudonymized-12345"
