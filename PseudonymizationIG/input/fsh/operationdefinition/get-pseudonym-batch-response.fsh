Instance: get-pseudonym-example-bundle-batch-response
InstanceOf: Bundle
Description: "An example response bundle for the get-pseudonym batch request in a single psn domain using opdef $pseudonymize"
Usage: #example
* meta.profile = "https://fhir.example.com/StructureDefinition/get-pseudonym-batch-response"
* type = #batch-response
* entry[0].fullUrl = "urn:uuid:0ee863aa-aaaa-4d5f-a70f-8f5edc7981d9"
* entry[=].resource = 0ee863aa-aaaa-4d5f-a70f-8f5edc7981d9
* entry[=].response.status = "200 OK"
* entry[+].fullUrl = "urn:uuid:c672a2ae-aaaa-4723-9706-524994fdd07a"
* entry[=].resource = c672a2ae-aaaa-4723-9706-524994fdd07a
* entry[=].response.status = "201 Created"
* entry[+].fullUrl = "urn:uuid:c88b414d-aaaa-4f5f-8b5e-446ed5f9cd71"
* entry[=].resource = c88b414d-aaaa-4f5f-8b5e-446ed5f9cd71
* entry[=].response.status = "404 Not Found"

Instance: 0ee863aa-aaaa-4d5f-a70f-8f5edc7981d9
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "context"
* parameter[=].valueIdentifier.value = "pseudonym-domain"
* parameter[+].name = "original"
* parameter[=].valueIdentifier.value = "an-original-value-1"
* parameter[+].name = "pseudonym"
* parameter[=].valueIdentifier.value = "pseudonym-for-original-value-1"


Instance: c672a2ae-aaaa-4723-9706-524994fdd07a
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "context"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "pseudonym-domain"
* parameter[+].name = "original"
* parameter[=].valueIdentifier.system = "https://example.com/original-ids"
* parameter[=].valueIdentifier.value = "an-original-identifier-value"
* parameter[+].name = "pseudonym"
* parameter[=].valueIdentifier.system = "https://example.com/pseudonym-ids"
* parameter[=].valueIdentifier.value = "a-pseudonymized-identifier-value"

Instance: c88b414d-aaaa-4f5f-8b5e-446ed5f9cd71
InstanceOf: OperationOutcome
Usage: #inline
* issue.severity = #error
* issue.code = #not-found
* issue.diagnostics = "The given context 'pseudonym-domain-that-doesn't-exist' was not found."
* issue.expression = "Parameters.parameter.where(name='context')"
