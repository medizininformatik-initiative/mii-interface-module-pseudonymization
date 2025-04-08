Instance: pseudonymize-example-bundle-batch-request
InstanceOf: Bundle
Description: "An example batch bundle to create multiple pseudonyms"
Usage: #example
* meta.profile = "https://fhir.example.com/StructureDefinition/pseudonymize-batch-request"
* type = #batch
* entry[0].fullUrl = "urn:uuid:79378cb8-8f58-48e8-a5e8-60ac2755b674"
* entry[=].resource = Inline-Instance-for-pseudonymize-example-bundle-batch-request-1
* entry[=].request.method = #POST
* entry[=].request.url = "$pseudonymize"
* entry[+].fullUrl = "urn:uuid:628ddc36-c8e4-4197-bac7-2599677a9e7d"
* entry[=].resource = Inline-Instance-for-pseudonymize-example-bundle-batch-request-2
* entry[=].request.method = #POST
* entry[=].request.url = "$pseudonymize"
* entry[+].fullUrl = "urn:uuid:46fd24a0-04d4-4538-82ee-8a9cad2b6a86"
* entry[=].resource = Inline-Instance-for-pseudonymize-example-bundle-batch-request-3
* entry[=].request.method = #POST
* entry[=].request.url = "$pseudonymize"

Instance: Inline-Instance-for-pseudonymize-example-bundle-batch-request-1
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "pseudonym-domain"
* parameter[+].name = "original"
* parameter[=].valueString = "an-original-value-1"
* parameter[+].name = "allowCreate"
* parameter[=].valueBoolean = true

Instance: Inline-Instance-for-pseudonymize-example-bundle-batch-request-2
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueString = "pseudonym-domain"
* parameter[=].part[+].name = "value"
* parameter[=].valueIdentifier.system = "https://example.com/original-ids"
* parameter[=].valueIdentifier.value = "an-original-identifier-value"
* parameter[=].part[+].name = "allowCreate"
* parameter[=].part[=].valueBoolean = true

Instance: Inline-Instance-for-pseudonymize-example-bundle-batch-request-3
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueString = "pseudonym-domain-that-doesn't-exist"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueString = "an-original-value-1"
* parameter[=].part[+].name = "allowCreate"
* parameter[=].part[=].valueBoolean = true
