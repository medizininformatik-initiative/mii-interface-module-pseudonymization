Instance: anonymize-original-example-bundle-batch-response
InstanceOf: Bundle
Description: "An example response bundle for the anonymize-original batch request in a single psn domain using opdef $anonymize-original"
Usage: #example
* meta.profile = "https://fhir.example.com/StructureDefinition/anonymize-batch-response"
* type = #batch-response
* entry[0].fullUrl = "urn:uuid:0ee863aa-1fe7-4d5f-1111-8f5edc7981d9"
* entry[=].resource = 0ee863aa-1fe7-4d5f-1111-8f5edc7981d9
* entry[=].response.status = "200 OK"
* entry[+].fullUrl = "urn:uuid:c672a2ae-4d75-4723-1111-524994fdd07a"
* entry[=].resource = c672a2ae-4d75-4723-1111-524994fdd07a
* entry[=].response.status = "404 Not Found"
* entry[+].fullUrl = "urn:uuid:c99b414d-e235-4f5f-1111-446ed5f9cd71"
* entry[=].resource = c99b414d-e235-4f5f-1111-446ed5f9cd71
* entry[=].response.status = "404 Not Found"

Instance: 0ee863aa-1fe7-4d5f-1111-8f5edc7981d9
InstanceOf: OperationOutcome
Usage: #inline
* issue.severity = #information
* issue.code = #informational
* issue.details.coding.system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* issue.details.coding.code = #MSG_UPDATED
* issue.diagnostics = "Entry anonymized."

Instance: c672a2ae-4d75-4723-1111-524994fdd07a
InstanceOf: OperationOutcome
Usage: #inline
* issue.severity = #error
* issue.code = #not-found
* issue.diagnostics = "No pseudonym for given original 'unknown-original' was found."
* issue.expression = "Parameters.parameter.where(name='original')"

Instance: c99b414d-e235-4f5f-1111-446ed5f9cd71
InstanceOf: OperationOutcome
Usage: #inline
* issue.severity = #error
* issue.code = #not-found
* issue.diagnostics = "Unknown domain 'unknown-domain'."
* issue.expression = "Parameters.parameter.where(name='context')"
