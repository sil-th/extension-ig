Extension: EX_TH_EncounterPatientLocationType
Id: ex-encounter-patient-location-type
Title: "Encounter: Patient Location Type"
Description: "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
* ^url = $EX_TH_EncounterPatientLocationType
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter.subject"
* . ^short = "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
* . ^definition = "รหัสที่ตั้งของที่อยู่ผู้รับบริการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_PatientLocationType (extensible)






Extension: EX_TH_EncounterServiceHour
Id: ex-encounter-service-hour
Title: "Encounter: Service Hour"
Description: "รหัสเวลามารับบริการ"
* ^url = $EX_TH_EncounterServiceHour
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter.period"
* . ^short = "รหัสเวลามารับบริการ"
* . ^definition = "รหัสเวลามารับบริการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ServiceHour (extensible)






Extension: EX_TH_EncounterServiceLocationType
Id: ex-encounter-service-location-type
Title: "Encounter: Service Location Type"
Description: "รหัสสถานที่ที่ให้บริการ"
* ^url = $EX_TH_EncounterServiceLocationType
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter.location"
* . ^short = "รหัสสถานที่ที่ให้บริการ"
* . ^definition = "รหัสสถานที่ที่ให้บริการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_PCU_ServiceLocationType (extensible)






Extension: EX_TH_EncounterServiceTypeTH
Id: ex-encounter-service-type-th
Title: "Encounter: Thai Service Type"
Description: "รหัสประเภทการให้บริการ"
* ^url = $EX_TH_EncounterServiceTypeTH
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter"
* . ^short = "รหัสประเภทการให้บริการ"
* . ^definition = "รหัสประเภทการให้บริการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_ServiceTypeTH (extensible)






Extension: EX_TH_EncounterDischargeStatus
Id: ex-encounter-discharge-status
Title: "Encounter: Discharge Status"
Description: "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ"
* ^url = $EX_TH_EncounterDischargeStatus
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . ^short = "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ"
* . ^definition = "รหัสสถานะผู้มารับบริการเมื่อเสร็จสิ้นบริการ"
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  thccService 0..1 MS and
  thccChronic 0..1 MS and
  chiTypeOut 0..1 MS
* valueCodeableConcept.coding[thccService] from $VS_THCC_DischargeStatus (extensible)
* valueCodeableConcept.coding[thccChronic] from $VS_THCC_ChronicDischargeReason (extensible)
* valueCodeableConcept.coding[chiTypeOut] from $VS_CHI_TypeOut (extensible)


Extension: EX_TH_EncounterDischargeInstruction
Id: ex-encounter-discharge-instruction
Title: "Encounter: Discharge Instruction"
Description: "คำแนะนำหลังการเข้ารับบริการ"
* ^url = $EX_TH_EncounterDischargeInstruction
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . ^short = "คำแนะนำหลังการเข้ารับบริการ"
* . ^definition = "คำแนะนำหลังการเข้ารับบริการ"
* value[x] 1..
* value[x] only Annotation





Extension: EX_TH_EncounterIpdJourney
Id: ex-encounter-ipd-journey
Title: "Encounter: IPD Journey"
Description: "รหัสชนิดของแผนกที่ผู้ป่วยในรับบริการ"
* ^url = $EX_TH_EncounterIpdJourney
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter.location"
* . ^short = "รหัสชนิดของแผนกที่ผู้ป่วยในรับบริการ"
* . ^definition = "รหัสชนิดของแผนกที่ผู้ป่วยในรับบริการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_Meta_IpdJourney (extensible)






Extension: EX_TH_EncounterIpdDischargeStatus
Id: ex-encounter-ipd-discharge-status
Title: "Encounter: IPD Discharge Status"
Description: "รหัสสถานภาพการจำหน่ายผู้ป่วย"
* ^url = $EX_TH_EncounterIpdDischargeStatus
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . ^short = "รหัสสถานภาพการจำหน่ายผู้ป่วย"
* . ^definition = "รหัสสถานภาพการจำหน่ายผู้ป่วย"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_IpdDischargeStatus (extensible)






Extension: EX_TH_EncounterIpdDischargeType
Id: ex-encounter-ipd-discharge-type
Title: "Encounter: IPD Discharge Type"
Description: "รหัสชนิดการจำหน่ายผู้ป่วย"
* ^url = $EX_TH_EncounterIpdDischargeType
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . ^short = "รหัสชนิดการจำหน่ายผู้ป่วย"
* . ^definition = "รหัสชนิดการจำหน่ายผู้ป่วย"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_IpdDischargeType (extensible)






Extension: EX_TH_EncounterFpCaseType
Id: ex-encounter-fp-case-type
Title: "Encounter: Family Planning Case Type"
Description: "รหัสประเภทการวางแผนครอบครัว"
* ^url = $EX_TH_EncounterFpCaseType
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter"
* . ^short = "รหัสประเภทการวางแผนครอบครัว"
* . ^definition = "รหัสประเภทการวางแผนครอบครัว"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_PCU_FpCaseType (extensible)








Extension: EX_TH_EncounterLeaveDay
Id: ex-encounter-leave-day
Title: "Encounter: Leave Day"
Description: "ข้อมูลกรณีที่ผู้ป่วยมีการลากลับบ้าน"
* ^url = $EX_TH_EncounterLeaveDay
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter"
* . ^short = "ข้อมูลกรณีที่ผู้ป่วยมีการลากลับบ้าน"
* . ^definition = "ข้อมูลกรณีที่ผู้ป่วยมีการลากลับบ้าน"
* extension contains
    id 0..1 and
    leaveDate 0..1 and
    comeBack 0..1 and
    duration 0..1
* extension[id] only Extension
* extension[id] ^short = "ลำดับของการลากลับบ้าน"
* extension[id] ^definition = "ลำดับของการลากลับบ้าน"
  * url = "id" (exactly)
  * value[x] 1..
  * value[x] only string
* extension[leaveDate] only Extension
* extension[leaveDate] ^short = "วัน-เวลาที่ลากลับบ้าน"
* extension[leaveDate] ^definition = "วัน-เวลาที่ลากลับบ้าน"
  * url = "leaveDate" (exactly)
  * value[x] 1..
  * value[x] only dateTime
* extension[comeBack] only Extension
* extension[comeBack] ^short = "วัน-เวลาที่กลับเข้ารับบริการ"
* extension[comeBack] ^definition = "วัน-เวลาที่กลับเข้ารับบริการ"
  * url = "comeBack" (exactly)
  * value[x] 1..
  * value[x] only dateTime
* extension[duration] only Extension
* extension[duration] ^short = "จำนวนวันในการลา"
* extension[duration] ^definition = "จำนวนวันในการลา"
  * url = "duration" (exactly)
  * value[x] 1..
  * value[x] only Duration



Extension: EX_TH_EncounterProviderType
Id: ex-encounter-provider-type
Title: "Encounter: Provider Type"
Description: "รหัสประเภทสถานพยาบาลที่รักษา"
* ^url = $EX_TH_EncounterProviderType
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter.serviceProvider"
* . ^short = "รหัสประเภทสถานพยาบาลที่รักษา"
* . ^definition = "รหัสประเภทสถานพยาบาลที่รักษา"
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  eclaim 0..1 MS and
  chi 0..1 MS
* valueCodeableConcept.coding[eclaim] from $VS_eClaim_ProviderType (extensible)
* valueCodeableConcept.coding[chi] from $VS_CHI_ProviderType (extensible)



Extension: EX_TH_EncounterReferOutID
Id: ex-encounter-refer-out-id
Title: "Encounter: Refer Out ID"
Description: "เลขที่ใบส่งตัว"
* ^url = $EX_TH_EncounterReferOutID
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization.destination"
* . ^short = "เลขที่ใบส่งตัว"
* . ^definition = "เลขที่ใบส่งตัว"
* value[x] 1..
* value[x] only Reference(ServiceRequest)



Extension: EX_CHI_EncounterAdmitType
Id: ex-chi-encounter-admit-type
Title: "Encounter: CHI - Admit Type"
Description: "รหัสประเภทการรับ admit"
* ^url = $EX_CHI_EncounterAdmitType
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter.hospitalization"
* . ^short = "รหัสประเภทการรับ admit"
* . ^definition = "รหัสประเภทการรับ admit"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_CHI_AdmitType (extensible)




Extension: EX_CHI_EncounterAccidentOrEmer
Id: ex-chi-encounter-accident-emer
Title: "Encounter: CHI - Accident or Emergency"
Description: "รหัสระบุเป็นการรักษากรณีอุบัติเหตุและ/หรือฉุกเฉิน"
* ^url = $EX_CHI_EncounterAccidentOrEmer
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter"
* . ^short = "รหัสระบุเป็นการรักษากรณีอุบัติเหตุและ/หรือฉุกเฉิน"
* . ^definition = "รหัสระบุเป็นการรักษากรณีอุบัติเหตุและ/หรือฉุกเฉิน"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_CHI_AccidentOrEmer (extensible)


Extension: EX_CHI_EncounterAccidentCoverage
Id: ex-chi-encounter-accident-coverage
Title: "Encounter: CHI - Accident Coverage"
Description: "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* ^url = $EX_CHI_EncounterAccidentCoverage
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Encounter"
* . ^short = "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* . ^definition = "รหัสสิทธิการรักษาอื่นกรณีอุบัติเหตุ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_eClaim_AccidentCoverage (extensible)


Extension: EX_CHI_EncounterReferPurpose
Id: ex-encounter-refer-purpose
Title: "Encounter: CHI - Refer Purpose"
Description: "สาเหตุที่ส่งต่อผู้ป่วย"
* ^url = $EX_CHI_EncounterReferPurpose
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "ServiceRequest"
* ^context[+].type = #element
* ^context[=].expression = "Encounter"
* . ^short = "รหัสสาเหตุที่ส่งต่อผู้ป่วย"
* . ^definition = "รหัสสาเหตุที่ส่งต่อผู้ป่วย"
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
  chi 0..1 and
  eclaim 0..1
* valueCodeableConcept.coding[chi] from $VS_CHI_ReferPurpose (required)
* valueCodeableConcept.coding[eclaim] from $VS_eClaim_ReferReason (required)