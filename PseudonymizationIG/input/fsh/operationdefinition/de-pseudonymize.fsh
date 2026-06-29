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
  * name = #context
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Specification of the pseudonymisation context on the basis of which a personal pseudonym is searched for the specified original identifiers"
  * type = #Identifier
* parameter[+]
  * name = #pseudonym
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Specification of a pseudonym for which unique original values assigned in the specified pseudonymisation context are searched for"
  * type = #Identifier
* parameter[+]
  * name = #original
  * use = #out
  * min = 1
  * max = "*"
  * documentation = ""
  * part[+]
    * name = #context
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

Instance: DePseudonymizeRequestWithIdentifierExample
InstanceOf: Parameters
Description: "An example of a $de-pseudonymize request using a pseudonym value of type identifier"
* parameter[+].name = "context"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "Transfer1"
* parameter[+].name = "pseudonym"
* parameter[=].valueIdentifier.system = "https://example.com/pseudonym-ids"
* parameter[=].valueIdentifier.value = "H3RAU56A8E"

Instance: DePseudonymizeResponseWithIdentifierExample
InstanceOf: Parameters
Description: "An example of a $de-pseudonymize request response"
* parameter[+].name = "original"
* parameter[=].part[0].name = "context"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "Transfer1"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "D1CL0CAL1"
* parameter[=].part[+].name = "pseudonym"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "H3RAU56A8E"
