Instance: de-pseudonymize-example-bundle-batch-response
InstanceOf: Bundle
Description: "An example response bundle for the de-pseudonymize batch request in a single psn domain using opdef $de-pseudonymize"
Usage: #example
* meta.profile = "https://fhir.example.com/StructureDefinition/de-pseudonymize-batch-response"
* type = #batch-response
* entry[0].fullUrl = "urn:uuid:0ee863aa-1fe7-4d5f-3333-8f5edc7981d9"
* entry[=].resource = 0ee863aa-1fe7-4d5f-3333-8f5edc7981d9
* entry[=].response.status = "200 OK"
* entry[+].fullUrl = "urn:uuid:c672a2ae-4d75-4723-3333-524994fdd07a"
* entry[=].resource = c672a2ae-4d75-4723-3333-524994fdd07a
* entry[=].response.status = "404 Not Found"
* entry[+].fullUrl = "urn:uuid:c99b414d-e235-4f5f-3333-446ed5f9cd71"
* entry[=].resource = c99b414d-e235-4f5f-3333-446ed5f9cd71
* entry[=].response.status = "404 Not Found"

Instance: 0ee863aa-1fe7-4d5f-3333-8f5edc7981d9
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueIdentifier.system = "https://example.com/original-ids"
* parameter[=].valueIdentifier.value = "D1CL0CAL1"
* parameter[+].name = "pseudonym"
* parameter[=].valueIdentifier.system = "https://example.com/pseudonym-ids"
* parameter[=].valueIdentifier.value = "H3RAU56A8E"

Instance: c672a2ae-4d75-4723-3333-524994fdd07a
InstanceOf: OperationOutcome
Usage: #inline
* issue.severity = #error
* issue.code = #not-found
* issue.diagnostics = "No original for given pseudonym 'unknown-pseudonym' was found."
* issue.expression = "Parameters.parameter.where(name='pseudonym')"

Instance: c99b414d-e235-4f5f-3333-446ed5f9cd71
InstanceOf: OperationOutcome
Usage: #inline
* issue.severity = #error
* issue.code = #not-found
* issue.diagnostics = "Unknown domain 'unknown-domain'."
* issue.expression = "Parameters.parameter.where(name='target')"
