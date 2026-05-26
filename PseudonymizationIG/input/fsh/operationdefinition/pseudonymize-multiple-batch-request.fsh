Instance: pseudonymize-multiple-example-bundle-batch-request
InstanceOf: Bundle
Description: "An example batch bundle to create multiple pseudonyms in a multi psn domain using opdef $pseudonymize-multiple"
Usage: #example
* meta.profile = "https://fhir.example.com/StructureDefinition/pseudonymize-multiple-batch-request"
* type = #batch
* entry[0].fullUrl = "urn:uuid:79378cb8-8f58-48e8-5555-60ac2755b674"
* entry[=].resource = 79378cb8-8f58-48e8-5555-60ac2755b674
* entry[=].request.method = #POST
* entry[=].request.url = "$pseudonymize-multiple"
* entry[+].fullUrl = "urn:uuid:628ddc36-c8e4-4197-5555-2599677a9e7d"
* entry[=].resource = 628ddc36-c8e4-4197-5555-2599677a9e7d
* entry[=].request.method = #POST
* entry[=].request.url = "$pseudonymize-multiple"

Instance: 79378cb8-8f58-48e8-5555-60ac2755b674
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "MultiPsnDomain"
* parameter[+].name = "original"
* parameter[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].valueIdentifier.value = "H3RAU56A8E1"
* parameter[+].name = "count"
* parameter[=].valueInteger = 2

Instance: 628ddc36-c8e4-4197-5555-2599677a9e7d
InstanceOf: Parameters
Usage: #inline
* parameter[+].name = "target"
* parameter[=].valueString = "pseudonym-domain-that-doesn't-exist"
* parameter[+].name = "original"
* parameter[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].valueIdentifier.value = "H3RAU56A8E2"
* parameter[+].name = "count"
* parameter[=].valueInteger = 2
