Instance: anonymize-original-example-bundle-batch-request
InstanceOf: Bundle
Description: "An example batch bundle to anonymize multiple pseudonyms in a single psn domain using opdef $anonymize-original"
Usage: #example
* meta.profile = "https://fhir.example.com/StructureDefinition/anonymize-batch-request"
* type = #batch
* entry[0].fullUrl = "urn:uuid:79378cb8-8f58-1111-a5e8-60ac2755b674"
* entry[=].resource = 79378cb8-8f58-1111-a5e8-60ac2755b674
* entry[=].request.method = #POST
* entry[=].request.url = "$anonymize-original"
* entry[+].fullUrl = "urn:uuid:628ddc36-c8e4-1111-bac7-2599677a9e7d"
* entry[=].resource = 628ddc36-c8e4-1111-bac7-2599677a9e7d
* entry[=].request.method = #POST
* entry[=].request.url = "$anonymize-original"
* entry[+].fullUrl = "urn:uuid:46fd24a0-04d4-1111-82ee-8a9cad2b6a86"
* entry[=].resource = 46fd24a0-04d4-1111-82ee-8a9cad2b6a86
* entry[=].request.method = #POST
* entry[=].request.url = "$anonymize-original"

Instance: 79378cb8-8f58-1111-a5e8-60ac2755b674
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueString = "D1CL0CAL1"

Instance: 628ddc36-c8e4-1111-bac7-2599677a9e7d
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueString = "unknown-original"

Instance: 46fd24a0-04d4-1111-82ee-8a9cad2b6a86
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "unknown-domain"
* parameter[+].name = "original"
* parameter[=].valueString = "D1CL0CAL3"
