// * extension[+]
//   * valueCodeableConcept
//     * coding[0] = $ISO3166#THA
//     * coding[+] = $CS_THCC_Nationality#099
//     * text = "ไทย"

Extension: EX_TH_PatientRace
Id: ex-patient-race
Title: "Patient: Race"
Description: "เชื้อชาติของบุคคล"
* ^url = $EX_TH_PatientRace
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "เชื้อชาติของบุคคล"
* . ^definition = "เชื้อชาติของบุคคล"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_Nationality (extensible)



// Alias: $EX_TH_PatientEducationLevel = https://fhir-ig.sil-th.org/mophpc/Extension/TH-education-level
// * extension[+]
//   * valueCodeableConcept
//     * coding[0] = $CS_INT_ISCED1997#61 "ปริญญาตรี"
//     * coding[+] = $CS_THCC_EducationLevel#05 "ปริญญาตรี"
//     * text = "ปริญญาตรี"
Extension: EX_TH_PatientEducationLevel
Id: ex-patient-education-level
Title: "Patient: Education Level"
Description: "ระดับการศึกษา"
* ^url = $EX_TH_PatientEducationLevel
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "ระดับการศึกษา"
* . ^definition = "ระดับการศึกษา"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_EducationLevel (extensible)



// Alias: $EX_TH_PatientPersonStatus = https://fhir-ig.sil-th.org/mophpc/Extension/TH-person-status

  // * valueCodeableConcept
  //   * coding[0] = $CS_THCC_PersonStatus#1 "มีชื่ออยู่ตามทะเบียนบ้านในเขตรับผิดชอบและอยู่จริง"
  //   * text = "มีชื่ออยู่ตามทะเบียนบ้านในเขตรับผิดชอบและอยู่จริง"
Extension: EX_TH_PatientPersonStatus
Id: ex-patient-person-status
Title: "Patient: Person Status"
Description: "สถานะบุคคล"
* ^url = $EX_TH_PatientPersonStatus
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "สถานะบุคคล"
* . ^definition = "สถานะบุคคล"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_PersonStatus (extensible)


// * extension[+]
//   * valueCodeableConcept
//     * coding[+] = $CS_THCC_ForeignerType#30 "ประชากรต่างด้าวที่เป็นนักท่องเที่ยวเข้าเมืองโดยถูกต้องตามกฎหมาย"
//     * text = "ประชากรต่างด้าวที่เป็นนักท่องเที่ยวเข้าเมืองโดยถูกต้องตามกฎหมาย"
Extension: EX_TH_PatientForeignerType
Id: ex-patient-foreigner-type
Title: "Patient: Foreigner Type"
Description: "รหัสความเป็นคนต่างด้าว"
* ^url = $EX_TH_PatientForeignerType
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "รหัสความเป็นคนต่างด้าว"
* . ^definition = "รหัสความเป็นคนต่างด้าว"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_ForeignerType (extensible)




// * extension[+]
//   * valueCodeableConcept
//     * coding[0] = $CS_43File_PidRemoveReason#1 "ตาย"
//     * text = "ตาย"
Extension: EX_TH_PatientPidRemoveReason
Id: ex-patient-pid-remove-reason
Title: "Patient: PID Remove Reason"
Description: "สถานะ/สาเหตุการจำหน่าย"
* ^url = $EX_TH_PatientPidRemoveReason
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Patient"
* . ^short = "สถานะ/สาเหตุการจำหน่าย"
* . ^definition = "สถานะ/สาเหตุการจำหน่าย"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_43File_PidRemoveReason (extensible)
