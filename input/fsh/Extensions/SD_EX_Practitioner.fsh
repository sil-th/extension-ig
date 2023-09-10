// Alias: $EX_TH_PractitionerQualificationIssuer = https://fhir-ig.sil-th.org/mophpc/Extension/TH-qualification-issuer
// * qualification
//   * issuer = Reference(Organization/organization-medical-council)
//     * extension[0]
//       * valueCodeableConcept
//         * coding[0] = $CS_THCC_QualificationIssuer#01 "แพทยสภา"
//         * text = "แพทยสภา"
Extension: EX_TH_PractitionerQualificationIssuer
Id: ex-practitioner-qualification-issuer
Title: "Practitioner: Qualification Issuer"
Description: "รหัสสภาวิชาชีพ"
* ^url = $EX_TH_PractitionerQualificationIssuer
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Practitioner.qualification.issuer"
* . ^short = "รหัสสภาวิชาชีพ"
* . ^definition = "รหัสสภาวิชาชีพ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_QualificationIssuer (extensible)
