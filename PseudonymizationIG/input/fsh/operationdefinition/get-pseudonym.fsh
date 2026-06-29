Instance: GetPseudonym
InstanceOf: OperationDefinition
Description: "Get an existing single pseudonym for a single given original value (Read Only). For use in single-pseudonym-domains only. In the response, the repetition of the input values (pseudonymisation context, original identifier) is possible, but is not binding. When returning these input values, however, it is mandatory to ensure that the output values of context or orginal are identical to the input values of context or orignal."
Usage: #definition
* name = "Get-Pseudonym"
* title = "get-pseudonym"
* status = #active
* kind = #operation
* experimental = false
* publisher = "Medizininformatik Inititative"
* description = "Searches an existing single pseudonym for the given single original value (ready only). For use in single-pseudonym-domains only. The pseudonymization algorithm to be used is left to the implementers of the operation. Errors during the execution of the operation must be returned as OperationOutcome."
* affectsState = true
* code = #get-pseudonym
* system = true
* type = false
* instance = false

* parameter[+]
  * name = #context
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Specification of the pseudonymisation context on the basis of which a personal pseudonym is generated or (if available) searched for the specified original identifiers. Requires a single-pseudonym-domain."
  * type = #Identifier
* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Specification of the original identifier to be pseudonymised"
  * type = #Identifier

* parameter[+]
  * name = #context
  * use = #out
  * min = 0
  * max = "1"
  * documentation = "Pseudonymisation context (identical with Request)"
  * type = #Identifier
* parameter[+]
  * name = #original
  * use = #out
  * min = 0
  * max = "1"
  * documentation = "Original-identifier (identical with Request)"
  * type = #Identifier
* parameter[+]
  * name = #pseudonym
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Personal pseudonym."
  * type = #Identifier

Instance: GetPseudonymRequestWithIdentifierExample
InstanceOf: Parameters
Description: "An example of a $get-pseudonym request within a single-pseudonym-domain using an original value of type identifier"
* parameter[+].name = "context"
* parameter[=].valueIdentifier.value = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueIdentifier.value = "D1CL0CAL1"

Instance: GetPseudonymIdentifierResponseExample
InstanceOf: Parameters
Description: "An example of a response to a $get-pseudonym request within a single-pseudonym-domain"
* parameter[+].name = "context"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "D1CL0CAL1"
* parameter[+].name = "pseudonym"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "H3RAU56A8E"
