In der MII werden unterschiedliche Lösungen zur Pseudonymisierung von Gesundheitsdaten eingesetzt.

Dabei wird der Begriff „Pseudonymisierung“ unterschiedlich ausgelegt. Grundlegend kann in unterschiedliche Szenarien und Schritte der Pseudonymisierung unterschieden werden:
1. Erzeugung und Verwaltung von Personen-Pseudonymen auf Basis vorhandener Identifier
2. Die Anwendung von Pseudonymen auf einen Datenbestand
3. Sekundärpseudonymisierung
4. Pseudonymisierung durch Modifikation von Forschungsdaten

Dabei kann die (3) Sekundärpseudonymisierung (3a) lokal am Standort (ohne standortübergreifendes Record Linkage) erfolgen oder auch (3b) im Kontext übergreifender MII-Prozesse durchgeführt werden (Details im Abschnitt Szenarien).

 Ziel ist ein vereinheitlichter Schnittstellenentwurf für die einzelnen Schritte der Sekundärpseudonymisierung innerhalb der MII in Bezug auf die relevanten zu unterstützenden Use Cases (1,3a,3b).

## Vorarbeiten und Abgrenzung

vgl. Konzeptdokument der Task Force *Übergreifende Schnittstellen* ([Link](Link))

## Vereinheitlichung

Ziel der Spezifikation ist eine einheitliche Pseudonymisierungs-Schnittstelle, die die anvisierten [Use Cases](Use Cases.html) unterstützt, um die nötige Flexibilität bei der Umsetzung am MII-Standort unabhängig von der Wahl der zugrundeliegenden Softwarelösung grundsätzlich zu ermöglichen.

Dabei soll der Fokus auf erforderliche **Basisfunktionalitäten**, abgestimmte Parameter und ein möglichst einheitliches Fehlerverhalten gelegt werden.

Dabei bietet es sich an auf bereits erprobte Vorgehensweisen und etablierte Ansätze zu setzen, da an den teilnehmenden Standorten bereits erhebliche Aufwände in die Integration ausgewählter Lösungen ([gPAS](https://ths-greifswald.de/gpas/#verbreitung), [FHIR Pseudonymizer](https://github.com/miracum/fhir-pseudonymizer), [entici](https://gitlab.com/mri-tum/aiim/entici)) geflossen sind und diese nunmehr (Stand 2024) erfolgreich produktiv zum Einsatz kommen.
