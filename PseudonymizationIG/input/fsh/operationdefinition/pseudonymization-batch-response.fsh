Instance: pseudonymize-example-bundle-batch-response
InstanceOf: Bundle
Description: "An example response bundle for the pseudonymize batch request in a single psn domain using opdef $pseudonymize"
Usage: #example
* meta.profile = "https://fhir.example.com/StructureDefinition/pseudonymize-batch-response"
* type = #batch-response
* entry[0].fullUrl = "urn:uuid:0ee863aa-1fe7-4d5f-a70f-8f5edc7981d9"
* entry[=].resource = Inline-Instance-for-pseudonymize-example-bundle-batch-response-1
* entry[=].response.status = "200 OK"
* entry[+].fullUrl = "urn:uuid:c672a2ae-4d75-4723-9706-524994fdd07a"
* entry[=].resource = Inline-Instance-for-pseudonymize-example-bundle-batch-response-2
* entry[=].response.status = "201 Created"
* entry[+].fullUrl = "urn:uuid:c99b414d-e235-4f5f-8b5e-446ed5f9cd71"
* entry[=].resource = c99b414d-e235-4f5f-8b5e-446ed5f9cd71
* entry[=].response.status = "404 Not Found"

Instance: Inline-Instance-for-pseudonymize-example-bundle-batch-response-1
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "pseudonym-domain"
* parameter[+].name = "original"
* parameter[=].valueString = "an-original-value-1"
* parameter[+].name = "pseudonym"
* parameter[=].valueString = "pseudonym-for-original-value-1"


Instance: Inline-Instance-for-pseudonymize-example-bundle-batch-response-2
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "pseudonym-domain"
* parameter[+].name = "original"
* parameter[=].valueIdentifier.system = "https://example.com/original-ids"
* parameter[=].valueIdentifier.value = "an-original-identifier-value"
* parameter[+].name = "pseudonym"
* parameter[=].valueIdentifier.system = "https://example.com/pseudonym-ids"
* parameter[=].valueIdentifier.value = "a-pseudonymized-identifier-value"

Instance: c99b414d-e235-4f5f-8b5e-446ed5f9cd71
InstanceOf: OperationOutcome
Usage: #inline
* issue.severity = #error
* issue.code = #not-found
* issue.diagnostics = "The given pseudonymization target 'pseudonym-domain-that-doesn't-exist' was not found."
* issue.expression = "Parameters.parameter.where(name='target')"
