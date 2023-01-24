Profile: THPatientNationality
Parent: $EX_HL7_Nationality
Id: ex-th-patient-nationality
Title: "TH Patient Extension: Nationality"
Description: "สัญชาติของผู้ป่วย"
* ^url = $EX_TH_Patient_Nationality
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* ^context.type = #element
* ^context.expression = "Patient"
* extension[code].valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* extension[code].valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* extension[code].valueCodeableConcept.coding ^slicing.rules = #open
* extension[code].valueCodeableConcept.coding contains
  iso3166 0..1 MS and
  thcc 0..1 MS
* extension[code].valueCodeableConcept.coding[iso3166] from $VS_INT_ISO3166 (extensible)
* extension[code].valueCodeableConcept.coding[thcc] from $VS_THCC_Nationality (extensible)


Profile: THPatientExtensionReligion
Parent: $EX_HL7_Religion
Id: ex-th-patient-religion
Title: "TH Patient Extension: Religion"
Description: "ความเชื่อทางศาสนาของผู้ป่วย"
* ^url = $EX_TH_Patient_Religion
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* ^context.type = #element
* ^context.expression = "Patient"
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    hl7 0..1 MS and
    thcc 0..1 MS
* valueCodeableConcept.coding[hl7] from $VS_HL7_Religion (extensible)
* valueCodeableConcept.coding[thcc] from $VS_THCC_Religion (extensible)





Profile: THPatientExtensionDisability
Parent: $EX_HL7_Disability
Id: ex-th-patient-extension-disability
Title: "TH Patient Extension: Disability"
Description: "ประเภทความพิการ"
* ^url = $EX_TH_Patient_Disability
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* ^context.type = #element
* ^context.expression = "Patient"
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_DisabilityType (extensible)