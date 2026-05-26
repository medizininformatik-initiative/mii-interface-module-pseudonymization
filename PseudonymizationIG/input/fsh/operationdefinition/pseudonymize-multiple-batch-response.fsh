Instance: pseudonymize-multiple-example-bundle-batch-response
InstanceOf: Bundle
Description: "An example response bundle for the pseudonymize batch request in a multi psn domain using opdef $pseudonymize-multiple"
Usage: #example
* meta.profile = "https://fhir.example.com/StructureDefinition/pseudonymize-multiple-batch-response"
* type = #batch-response
* entry[0].fullUrl = "urn:uuid:0ee863aa-1fe7-4d5f-6666-8f5edc7981d9"
* entry[=].resource = 0ee863aa-1fe7-4d5f-6666-8f5edc7981d9
* entry[=].response.status = "201 Created"
* entry[+].fullUrl = "urn:uuid:c672a2ae-4d75-4723-6666-524994fdd07a"
* entry[=].resource = c672a2ae-4d75-4723-6666-524994fdd07a
* entry[=].response.status = "404 Not Found"

Instance: 0ee863aa-1fe7-4d5f-6666-8f5edc7981d9
InstanceOf: Parameters
* parameter[+]
  * name = "pseudonym"
  * part[+]
    * name = "target"
    * valueIdentifier
      * system = "https://sample/multi-psn-capable-system"
      * value = "MultiPsnDomain"
  * part[+]
    * name = "original"
    * valueIdentifier
      * system = "https://sample/multi-psn-capable-system"
      * value = "H3RAU56A8E1"
  * part[+]
    * name = "value"
    * valueIdentifier
      * system = "https://sample/multi-psn-capable-system"
      * value = "53KUNDA3RP5N1"
* parameter[+]
  * name = "pseudonym"
  * part[+]
    * name = "target"
    * valueIdentifier
      * system = "https://sample/multi-psn-capable-system"
      * value = "MultiPsnDomain"
  * part[+]
    * name = "original"
    * valueIdentifier
      * system = "https://sample/multi-psn-capable-system"
      * value = "H3RAU56A8E1"
  * part[+]
    * name = "value"
    * valueIdentifier
      * system = "https://sample/multi-psn-capable-system"
      * value = "53KUNDA3RP5N2"
* parameter[+]
  * name = "pseudonym"
  * part[+]
    * name = "target"
    * valueIdentifier
      * system = "https://sample/multi-psn-capable-system"
      * value = "MultiPsnDomain"
  * part[+]
    * name = "original"
    * valueIdentifier
      * system = "https://sample/multi-psn-capable-system"
      * value = "H3RAU56A8E1"
  * part[+]
    * name = "value"
    * valueIdentifier
      * system = "https://sample/multi-psn-capable-system"
      * value = "53KUNDA3RP5N3"

Instance: c672a2ae-4d75-4723-6666-524994fdd07a
InstanceOf: OperationOutcome
Usage: #inline
* issue.severity = #error
* issue.code = #not-found
* issue.diagnostics = "The given pseudonymization target 'pseudonym-domain-that-doesn't-exist' was not found."
* issue.expression = "Parameters.parameter.where(name='target')"
