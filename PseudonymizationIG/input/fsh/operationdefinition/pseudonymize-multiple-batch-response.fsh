Instance: psn-multi-example-bundle-batch-response
InstanceOf: Bundle
Description: "An example response bundle for the pseudonymize batch request in a multi psn domain using opdef $pseudonymize-multiple"
Usage: #example
* meta.profile = "https://fhir.example.com/StructureDefinition/psn-multi-batch-response"
* type = #batch-response
* entry[0].fullUrl = "urn:uuid:0ee863aa-1fe7-4d5f-6666-8f5edc7981d9"
* entry[=].resource = Inline-Instance-for-psn-multi-example-bundle-batch-response-1
* entry[=].response.status = "201 Created"
* entry[+].fullUrl = "urn:uuid:c672a2ae-4d75-4723-6666-524994fdd07a"
* entry[=].resource = Inline-Instance-for-psn-multi-example-bundle-batch-response-2
* entry[=].response.status = "404 Not Found"

Instance: Inline-Instance-for-psn-multi-example-bundle-batch-response-1
InstanceOf: Parameters
Usage: #inline
* parameter[+]
  * name = "pseudonym"
  * part[+]
    * name = "context"
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
    * name = "context"
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
    * name = "context"
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

Instance: Inline-Instance-for-psn-multi-example-bundle-batch-response-2
InstanceOf: OperationOutcome
Usage: #inline
* issue.severity = #error
* issue.code = #not-found
* issue.diagnostics = "The given pseudonymization context 'pseudonym-domain-that-doesn't-exist' was not found."
* issue.expression = "Parameters.parameter.where(name='context')"
