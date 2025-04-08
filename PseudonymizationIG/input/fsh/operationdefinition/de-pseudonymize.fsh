Instance: DePseudonymize
InstanceOf: OperationDefinition
Description: "Returns the original value for a given pseudonym."
Usage: #definition
* name = "De-Pseudonymize"
* title = "de-pseudonymize"
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

* parameter[+]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Specification of the pseudonymisation context on the basis of which a personal pseudonym is searched for the specified original identifiers"
  * type = #Element
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "string"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "Identifier"
* parameter[+]
  * name = #pseudonym
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Specification of a pseudonym for which unique original values assigned in the specified pseudonymisation context are searched for"
  * type = #Element
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "string"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "Identifier"
* parameter[+]
  * name = #original
  * use = #out
  * min = 1
  * max = "*"
  * documentation = ""
  * part[+]
    * name = #target
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Pseudonymisation context (identical with request)"
    * type = #Identifier
  * part[+]
    * name = #value
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Original-Identifier"
    * type = #Identifier
  * part[+]
    * name = #pseudonym
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Personal pseudonym  (identical with request)"
    * type = #Identifier

Instance: DePseudonymizeRequestWithStringExample
InstanceOf: Parameters
Description: "An example of a $de-pseudonymize request using a pseudonym value of type string"
* parameter[+].name = "target"
* parameter[=].valueString = "Herausgabe1"
* parameter[+].name = "pseudonym"
* parameter[=].valueString = "H3RAU56A8E"

Instance: DePseudonymizeResponseWithStringExample
InstanceOf: Parameters
Description: "An example of a $de-pseudonymize request response"
* parameter[+].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "Herausgabe1"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "D1CL0CAL1"
* parameter[=].part[+].name = "pseudonym"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "H3RAU56A8E"
