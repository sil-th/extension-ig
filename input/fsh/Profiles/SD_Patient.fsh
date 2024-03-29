Profile: THPatientNationality
Parent: $EX_HL7_Nationality
Id: ex-th-patient-nationality
Title: "TH Patient Extension: Nationality"
Description: "สัญชาติของผู้ป่วย"
* ^url = $EX_TH_Patient_Nationality
* ^status = #active
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^context.type = #element
* ^context.expression = "Patient"
* extension[code].valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* extension[code].valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* extension[code].valueCodeableConcept.coding ^slicing.rules = #open
* extension[code].valueCodeableConcept.coding contains
  iso3166 0..1 MS and
  thcc 0..1 MS
* extension[code].valueCodeableConcept.coding[iso3166] from $VS_INT_ISO3166 (extensible)
* extension[code].valueCodeableConcept.coding[iso3166].system = $ISO3166 (exactly)
* extension[code].valueCodeableConcept.coding[thcc] from $VS_THCC_Nationality (extensible)
* extension[code].valueCodeableConcept.coding[thcc].system = $CS_THCC_Nationality (exactly)

Profile: THPatientExtensionReligion
Parent: $EX_HL7_Religion
Id: ex-th-patient-religion
Title: "TH Patient Extension: Religion"
Description: "ความเชื่อทางศาสนาของผู้ป่วย"
* ^url = $EX_TH_Patient_Religion
* ^status = #active
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^context.type = #element
* ^context.expression = "Patient"
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    hl7 0..1 MS and
    thcc 0..1 MS
* valueCodeableConcept.coding[hl7] from $VS_HL7_Religion (extensible)
* valueCodeableConcept.coding[hl7].system = $CS_HL7_Religion (exactly)
* valueCodeableConcept.coding[thcc] from $VS_THCC_Religion (extensible)
* valueCodeableConcept.coding[thcc].system = $CS_THCC_Religion (exactly)





Profile: THPatientExtensionDisability
Parent: $EX_HL7_Disability
Id: ex-th-patient-extension-disability
Title: "TH Patient Extension: Disability"
Description: "ประเภทความพิการ"
* ^url = $EX_TH_Patient_Disability
* ^status = #active
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^context.type = #element
* ^context.expression = "Patient"
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    thcc 0..1 MS
* valueCodeableConcept.coding[thcc] from $VS_THCC_DisabilityType (extensible)
* valueCodeableConcept.coding[thcc].system = $CS_THCC_DisabilityType (exactly)