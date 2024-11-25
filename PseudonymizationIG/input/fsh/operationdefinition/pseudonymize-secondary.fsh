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
    * documentation = "Pseudonymisierungskontext auf Basis dessen für den angegebenen Original-Identifikator n Sekundärpseudonyme erzeugt werden sollen."
    * type = #string
  * part[+]
    * name = #value
    * use = #in
    * min = 1
    * max = "1"
    * documentation = "Original-Identifikator für den n Sekundärpseudonyme erzeugt werden sollen."
    * type = #string
  * part[+]
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
Description: "An example of a $anonymizepseudonymize-secondary request of type string"
Usage: #example
* parameter[+]
  * name = "original"
  * part[+]
    * name = "target"
    * valueString = "Datensatz-Ebene"
  * part[+]
    * name = "value"
    * valueString = "H3RAU56A8E"
  * part[+]
    * name = "count"
    * valueString = "3"


Instance: Parameters-PseudonymizeSecondary-response-example-1
InstanceOf: Parameters
Description: "An example of a $anonymizepseudonymize-secondary request response"
Usage: #example
* parameter[+]
  * name = "secondarypseudonym"
  * part[+]
    * name = "target"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "Datensatz-Ebene"
  * part[+]
    * name = "original"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "H3RAU56A8E"
  * part[+]
    * name = "value"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "53KUNDA3RP5N1"
* parameter[+]
  * name = "secondarypseudonym"
  * part[+]
    * name = "target"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "Datensatz-Ebene"
  * part[+]
    * name = "original"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "H3RAU56A8E"
  * part[+]
    * name = "value"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "53KUNDA3RP5N2"
* parameter[+]
  * name = "secondarypseudonym"
  * part[+]
    * name = "target"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "Datensatz-Ebene"
  * part[+]
    * name = "original"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "H3RAU56A8E"
  * part[+]
    * name = "value"
    * valueIdentifier
      * system = "https://sample/psn-system"
      * value = "53KUNDA3RP5N3"
