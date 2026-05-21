Instance: delete-pseudonym-example-bundle-batch-request
InstanceOf: Bundle
Description: "An example batch bundle to delete multiple pseudonyms in a single psn domain using opdef $delete-pseudonym"
Usage: #example
* meta.profile = "https://fhir.example.com/StructureDefinition/delete-pseudonym-batch-request"
* type = #batch
* entry[0].fullUrl = "urn:uuid:79378cb8-8f58-2222-a5e8-60ac2755b674"
* entry[=].resource = 79378cb8-8f58-2222-a5e8-60ac2755b674
* entry[=].request.method = #POST
* entry[=].request.url = "$delete-pseudonym"
* entry[+].fullUrl = "urn:uuid:628ddc36-c8e4-2222-bac7-2599677a9e7d"
* entry[=].resource = 628ddc36-c8e4-2222-bac7-2599677a9e7d
* entry[=].request.method = #POST
* entry[=].request.url = "$delete-pseudonym"
* entry[+].fullUrl = "urn:uuid:46fd24a0-04d4-2222-82ee-8a9cad2b6a86"
* entry[=].resource = 46fd24a0-04d4-2222-82ee-8a9cad2b6a86
* entry[=].request.method = #POST
* entry[=].request.url = "$delete-pseudonym"

Instance: 79378cb8-8f58-2222-a5e8-60ac2755b674
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueString = "D1CL0CAL1"

Instance: 628ddc36-c8e4-2222-bac7-2599677a9e7d
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "Transfer1"
* parameter[+].name = "original"
* parameter[=].valueString = "unknown-original"

Instance: 46fd24a0-04d4-2222-82ee-8a9cad2b6a86
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "deletion-forbidden-domain"
* parameter[+].name = "original"
* parameter[=].valueString = "D1CL0CAL3"
