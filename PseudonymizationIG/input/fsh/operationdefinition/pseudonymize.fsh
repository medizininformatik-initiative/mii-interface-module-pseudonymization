Instance: Pseudonymize
InstanceOf: OperationDefinition
Description: "Generates a single pseudonym for a single given original value. For use in single-pseudonym-domains only. In the response, the repetition of the input values (pseudonymisation context, original identifier) is possible, but is not binding. When returning these input values, however, it is mandatory to ensure that the output values of target or orginal are identical to the input values of target or orignal."
Usage: #definition
* name = "Pseudonymize"
* title = "pseudonymize"
* status = #active
* kind = #operation
* experimental = false
* publisher = "Medizininformatik Inititative"
* description = "Searches or generates (if allowCreate=true) a single pseudonym for the given single original value. For use in single-pseudonym-domains only. The pseudonymization algorithm to be used is left to the implementers of the operation. Errors during the execution of the operation must be returned as OperationOutcome."
* affectsState = true
* code = #pseudonymize
* system = true
* type = false
* instance = false

* parameter[+]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Specification of the pseudonymisation context on the basis of which a personal pseudonym is generated or (if available) searched for the specified original identifiers. Requires a single-pseudonym-domain."
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
  * documentation = "Specification of the original identifier to be pseudonymised"
  * type = #Element
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "string"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "Identifier"
* parameter[+]
  * name = #allowCreate
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Optional Parameter: true=A new pseudonym is generated for unknown original values. False=if an assignment is already known, the existing pseudonym is returned. Default value depends on implementation."
  * type = #boolean

* parameter[+]
  * name = #target
  * use = #out
  * min = 0
  * max = "1"
  * documentation = "Pseudonymisation context (identical with Request)"
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
  * min = 0
  * max = "1"
  * documentation = "Original-identifier (identical with Request)"
  * type = #Element
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "string"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "Identifier"
* parameter[+]
  * name = #pseudonym
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Personal pseudonym."
  * type = #Element
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "string"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "Identifier"

Instance: PseudonymizeRequestWithStringExample
InstanceOf: Parameters
Description: "An example of a $pseudonymize request within a single-pseudonym-domain using an original value of type string"
* parameter[+].name = "target"
* parameter[=].valueString = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueString = "D1CL0CAL1"
* parameter[+].name = "allowCreate"
* parameter[=].valueBoolean = true

Instance: PseudonymizeRequestWithIdentifierExample
InstanceOf: Parameters
Description: "An example of a $pseudonymize request within a single-pseudonym-domain using an original value of type identifier"
* parameter[+].name = "target"
* parameter[=].valueString = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "D1CL0CAL1"
* parameter[+].name = "allowCreate"
* parameter[=].valueBoolean = true

Instance: PseudonymizeIdentifierResponseExample
InstanceOf: Parameters
Description: "An example of a response to a $pseudonymize request within a single-pseudonym-domain"
* parameter[+].name = "target"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "D1CL0CAL1"
* parameter[+].name = "pseudonym"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "H3RAU56A8E"

Instance: PseudonymizeStringResponseExample
InstanceOf: Parameters
Description: "An example of a response to a $pseudonymize request within a single-pseudonym-domain"
* parameter[+].name = "target"
* parameter[=].valueString = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueString = "D1CL0CAL1"
* parameter[+].name = "pseudonym"
* parameter[=].valueString = "H3RAU56A8E"
