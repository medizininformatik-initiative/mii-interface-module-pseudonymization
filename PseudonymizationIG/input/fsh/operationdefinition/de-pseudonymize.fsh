Instance: DePseudonymize
InstanceOf: OperationDefinition
Description: "Returns the original value for a given pseudonym."
Usage: #definition
* name = "De-Pseudonymize"
* title = "De-Pseudonymize a given pseudonym."
* status = #active
* kind = #operation
* experimental = false
* publisher = "Medizininformatik Inititative"
* description = "Returns the original value for a given pseudonym. The algorithm to be used is left to the implementers of the operation. Errors during the execution of the operation must be returned as OperationOutcome."
* affectsState = true
* code = #de-pseudonymize
* system = true
* type = false
* instance = false

* parameter[+]
  * name = #pseudonym
  * use = #in
  * min = 1
  * max = "*"
  * documentation = "Pseudonyme"
  * part[+]
    * name = #target
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Angabe des Pseudonymisierungs-kontextes auf Basis dessen für die angegebenen Original-Identifikatoren ein Personen-Pseudonym gesucht wird"
    * type = #Element
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "string"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "Identifier"
  * part[+]
    * name = #value
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Angabe eines Pseudonyms für das in dem angegebenen Pseudonymisierungskontext zugeordnete eindeutige Originalwerte gesucht werden"
    * type = #Element
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "string"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "Identifier"

* parameter[+]
  * name = #original
  * use = #out
  * min = 1
  * max = "*"
  * documentation = ""
  * part[+]
    * name = #target
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Pseudonymisierungskontext"
    * type = #Identifier
  * part[+]
    * name = #value
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Original-Identifikator"
    * type = #Identifier
  * part[+]
    * name = #pseudonym
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Personen-Pseudonym."
    * type = #Identifier


Instance: DePseudonymizeRequestWithStringExample
InstanceOf: Parameters
Description: "An example of a $de-pseudonymize request using a pseudonym value of type string"
* parameter[+].name = "pseudonym"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueString = "Herausgabe1"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueString = "H3RAU56A8E"

Instance: DePseudonymizeResponseWithStringExample
InstanceOf: Parameters
Description: "An example of a $de-pseudonymize request response"
* parameter[+].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "Herausgabe1"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "D1CL0CAL1"
* parameter[=].part[+].name = "pseudonym"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "H3RAU56A8E"
