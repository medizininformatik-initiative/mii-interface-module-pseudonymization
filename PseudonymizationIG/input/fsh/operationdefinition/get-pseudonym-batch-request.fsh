Instance: get-pseudonym-example-bundle-batch-request
InstanceOf: Bundle
Description: "An example batch bundle to read multiple pseudonyms in a single psn domain using opdef $get-pseudonym"
Usage: #example
* meta.profile = "https://fhir.example.com/StructureDefinition/get-pseudonym-batch-request"
* type = #batch
* entry[0].fullUrl = "urn:uuid:79378cb8-8f58-48e8-dddd-60ac2755b674"
* entry[=].resource = Inline-Instance-for-get-pseudonym-example-bundle-batch-request-1
* entry[=].request.method = #POST
* entry[=].request.url = "$get-pseudonym"
* entry[+].fullUrl = "urn:uuid:628ddc36-c8e4-4197-eeee-2599677a9e7d"
* entry[=].resource = Inline-Instance-for-get-pseudonym-example-bundle-batch-request-2
* entry[=].request.method = #POST
* entry[=].request.url = "$get-pseudonym"
* entry[+].fullUrl = "urn:uuid:46fd24a0-04d4-4538-ffff-8a9cad2b6a86"
* entry[=].resource = Inline-Instance-for-get-pseudonym-example-bundle-batch-request-3
* entry[=].request.method = #POST
* entry[=].request.url = "$get-pseudonym"

Instance: Inline-Instance-for-get-pseudonym-example-bundle-batch-request-1
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "pseudonym-domain"
* parameter[+].name = "original"
* parameter[=].valueString = "an-original-value-1"

Instance: Inline-Instance-for-get-pseudonym-example-bundle-batch-request-2
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "pseudonym-domain"
* parameter[+].name = "original"
* parameter[=].valueIdentifier.system = "https://example.com/original-ids"
* parameter[=].valueIdentifier.value = "an-original-identifier-value"

Instance: Inline-Instance-for-get-pseudonym-example-bundle-batch-request-3
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "pseudonym-domain-that-doesn't-exist"
* parameter[+].name = "original"
* parameter[=].valueString = "an-original-value-1"
