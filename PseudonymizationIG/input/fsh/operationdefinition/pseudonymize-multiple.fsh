Instance: PseudonymizeMultiple
InstanceOf: OperationDefinition
Usage: #definition
Description: "Generation of a specific number of pseudonyms in an existing pseudonymisation context with simultaneous assignment to the given original value. A typical use case is the creation of secondary pseudonyms.For use in multi-pseudonym-domains."
* name = "Pseudonymize-multiple"
* title = "pseudonymize-multiple"
* publisher = "Medizininformatik Inititative"
* kind = #operation
* description = "Generation of a specific number of pseudonyms in an existing pseudonymisation context with simultaneous assignment to the given original value. A typical use case is the creation of secondary pseudonyms. For use in multi-pseudonym-domains."
* affectsState = false
* status = #active
* code = #pseudonymize-multiple
* comment = "Generation of a specific number of pseudonyms in an existing pseudonymisation context with simultaneous assignment to the given original value. For use in multi-pseudonym-domains."
* system = true
* type = false
* instance = false

* parameter[+]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Specification of the pseudonymisation context on the basis of which multiple personal pseudonyms are generated or (if available) searched for the specified original identifiers. Requires a multi-pseudonym-domain."
  * type = #Element
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "string"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "Identifier"
* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Specification of a single original identifier for which one or more pseudonyms are to be generated."
  * type = #Element
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "string"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
      * valueUri = "Identifier"
* parameter[+]
  * name = #count
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Number of to be generated pseudonyms"
  * type = #integer

* parameter[+]
  * name = #pseudonym
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "In the return value, the repetition of the input values (pseudonymisation context, original identifier) is provided, but is not binding. When returning these input values, however, it is mandatory to ensure that pseudonym.target or pseudonym.orginal are identical to the original input values original.target or original.value."
  * part[+]
    * name = #target
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Pseudonymisation context (identical with Request)"
    * type = #Element
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "string"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "Identifier"
  * part[+]
    * name = #original
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Original-identifier (identical with Request)"
    * type = #Element
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "string"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "Identifier"
  * part[+]
    * name = #value
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Personal or secondary pseudonym."
    * type = #Element
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "string"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "Identifier"

Instance: Parameters-PseudonymizeMultiple-request-example-1
InstanceOf: Parameters
Description: "An example of a $pseudonymize-multiple request to create 3 (secondary) pseudonyms for one existing pseudonym within a multi-psn-domain"
* parameter[+].name = "target"
* parameter[=].valueString = "MultiPsnDomain"
* parameter[+].name = "value"
* parameter[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].valueIdentifier.value = "H3RAU56A8E"
* parameter[+].name = "count"
* parameter[=].valueInteger = 3

Instance: Parameters-PseudonymizeMultiple-response-example-1
InstanceOf: Parameters
Description: "An example of a $pseudonymize response to create 3 secondary pseudonyms for one existing pseudonym within a multi-psn-domain"
* parameter[0].name = "pseudonym"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].part[=].valueIdentifier.value = "MultiPsnDomain"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].part[=].valueIdentifier.value = "H3RAU56A8E"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].part[=].valueIdentifier.value = "53KUNDA3RP5N1"
* parameter[1].name = "pseudonym"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].part[=].valueIdentifier.value = "MultiPsnDomain"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].part[=].valueIdentifier.value = "H3RAU56A8E"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].part[=].valueIdentifier.value = "53KUNDA3RP5N2"
* parameter[2].name = "pseudonym"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].part[=].valueIdentifier.value = "MultiPsnDomain"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].part[=].valueIdentifier.value = "H3RAU56A8E"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueIdentifier.system = "https://sample/multi-psn-capable-system"
* parameter[=].part[=].valueIdentifier.value = "53KUNDA3RP5N3"
