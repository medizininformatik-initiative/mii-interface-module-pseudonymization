Instance: Pseudonymize
InstanceOf: OperationDefinition
Description: "Generates a pseudonym for the given original value."
Usage: #definition
* name = "Pseudonymize"
* title = "pseudonymize"
* status = #active
* kind = #operation
* experimental = false
* publisher = "Medizininformatik Inititative"
* description = "Searches or generates (if allowCreate=true) a pseudonym for the given value. Use count to specify the number of requested pseudonyms to generate for the given value. The pseudonymization algorithm to be used is left to the implementers of the operation. Errors during the execution of the operation must be returned as OperationOutcome."
* affectsState = true
* code = #pseudonymize
* system = true
* type = false
* instance = false

* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Originalwerte"
  * part[+]
    * name = #target
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Angabe des Pseudonymisierungs-kontextes auf Basis dessen für die angegebenen Original-Identifikatoren jeweils ein Personen-Pseudonym erzeugt oder (sofern vorhanden) gesucht wird"
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
    * documentation = "Angabe des zu pseudonymisierenden Original-Identifikators"
    * type = #Element
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "string"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "Identifier"
  * part[+]
    * name = #allowCreate
    * use = #in
    * min = 0
    * max = "1"
    * documentation = "Optionaler Parameter: true=für unbekannte Original-Werte wird ein neues Pseudonym erzeugt. False=wenn bereits eine Zuordnung bekannt ist, wird das vorhandene Pseudonym zurückgegeben."
    * type = #boolean
  * part[+]
    * name = #count
    * use = #in
    * min = 0
    * max = "1"
    * documentation = "Anzahl der zu erzeugenden Sekundärpseudonyme. Default 1."
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
    * documentation = "Pseudonymisierungskontext (identical with Request)"
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
    * documentation = "Original-Identifikator (identical with Request)"
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
    * documentation = "Personen-Pseudonym."
    * type = #Element
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "string"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
        * valueUri = "Identifier"

Instance: PseudonymizeRequestWithStringExample
InstanceOf: Parameters
Description: "An example of a $pseudonymize request using an original value of type string"
* parameter[+].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueString = "Herausgabe1"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueString = "D1CL0CAL1"
* parameter[=].part[+].name = "allowCreate"
* parameter[=].part[=].valueBoolean = true
* parameter[=].part[+].name = "count"
* parameter[=].part[=].valueInteger = 1

Instance: PseudonymizeRequestWithIdentifierExample
InstanceOf: Parameters
Description: "An example of a $pseudonymize request using an original value of type identifier"
* parameter[+].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueString = "Herausgabe1"
* parameter[=].part[+].name = "value"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "D1CL0CAL1"
* parameter[=].part[+].name = "allowCreate"
* parameter[=].part[=].valueBoolean = true
* parameter[=].part[+].name = "count"
* parameter[=].part[=].valueInteger = 1

Instance: PseudonymizeResponseExample
InstanceOf: Parameters
Description: "An example of a response to a $pseudonymize request"
* parameter[0].name = "pseudonym"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "Herausgabe1"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "D1CL0CAL1"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "H3RAU56A8E"

Instance: Parameters-PseudonymizeSecondary-request-example-1
InstanceOf: Parameters
Description: "An example of a $pseudonymize request to create 3 secondary pseudonyms for one existing pseudonym"
* parameter[+].name = "original"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueString = "Datensatz-Ebene"
* parameter[=].part[+].name = "value"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "H3RAU56A8E"
* parameter[=].part[+].name = "allowCreate"
* parameter[=].part[=].valueBoolean = true
* parameter[=].part[+].name = "count"
* parameter[=].part[=].valueInteger = 3

Instance: Parameters-PseudonymizeSecondary-response-example-1
InstanceOf: Parameters
Description: "An example of a $pseudonymize response to create 3 secondary pseudonyms for one existing pseudonym"
* parameter[0].name = "pseudonym"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "Datensatz-Ebene"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "H3RAU56A8E"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "53KUNDA3RP5N1"
* parameter[1].name = "pseudonym"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "Datensatz-Ebene"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "H3RAU56A8E"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "53KUNDA3RP5N2"
* parameter[2].name = "pseudonym"
* parameter[=].part[0].name = "target"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "Datensatz-Ebene"
* parameter[=].part[+].name = "original"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "H3RAU56A8E"
* parameter[=].part[+].name = "value"
* parameter[=].part[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].part[=].valueIdentifier.value = "53KUNDA3RP5N3"
