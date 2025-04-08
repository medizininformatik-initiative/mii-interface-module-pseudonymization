Instance: PseudonymizeSecondary
InstanceOf: OperationDefinition
Usage: #definition
Description: "Generation of a specific number of pseudonyms in an existing pseudonymisation context with simultaneous assignment to the given original value."
* name = "Pseudonymize-Secondary"
* title = "pseudonymize-secondary"
* publisher = "Medizininformatik Inititative"
* kind = #operation
* description = "Generation of a specific number of pseudonyms in an existing pseudonymisation context with simultaneous assignment to the given original value."
* affectsState = false
* status = #active
* code = #pseudonymize-secondary
* comment = "Generation of a specific number of pseudonyms in an existing pseudonymisation context with simultaneous assignment to the given original value."
* system = true
* type = false
* instance = false

* parameter[+]
  * name = #target
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Pseudonymisierungskontext auf Basis dessen für den angegebenen Original-Identifikator n Sekundärpseudonyme erzeugt werden sollen."
  * type = #string
* parameter[+]
  * name = #original
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Original-Identifikator für den n Sekundärpseudonyme erzeugt werden sollen."
  * type = #string
* parameter[+]
  * name = #count
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "Anzahl der zu erzeugenden Sekundärpseudonyme."
  * type = #integer

* parameter[+]
  * name = #secondarypseudonym
  * use = #out
  * min = 1
  * max = "*"
  * documentation = "erzeugte SekundärPersonenpseudonyme"
  * part[+]
    * name = #target
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Pseudonymisierungskontext"
    * type = #Identifier
  * part[+]
    * name = #original
    * use = #out
    * min = 0
    * max = "1"
    * documentation = "Original-Identifikator (in der Regel Personenpseudonym)."
    * type = #Identifier
  * part[+]
    * name = #value
    * use = #out
    * min = 1
    * max = "1"
    * documentation = "Sekundär-Pseudonym."
    * type = #Identifier

Instance: Parameters-PseudonymizeSecondary-request-example-1
InstanceOf: Parameters
Description: "An example of a $pseudonymize request to create 3 secondary pseudonyms for one existing pseudonym"
* parameter[+].name = "target"
* parameter[=].valueString = "Datensatz-Ebene"
* parameter[+].name = "value"
* parameter[=].valueIdentifier.system = "https://sample/psn-system"
* parameter[=].valueIdentifier.value = "H3RAU56A8E"
* parameter[+].name = "allowCreate"
* parameter[=].valueBoolean = true
* parameter[+].name = "count"
* parameter[=].valueInteger = 3

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
