Extension: EX_TH_ConditionIsChronic
Id: ex-condition-is-chronic
Title: "Condition: Is Chronic"
Description: "สภาวะการป่วยต่อเนื่อง"
* ^url = $EX_TH_ConditionIsChronic
* ^status = #active
* ^experimental = false
* ^context.type = #element
* ^context.expression = "Condition"
* . ^short = "สภาวะการป่วยต่อเนื่อง"
* . ^definition = "สภาวะการป่วยต่อเนื่อง"
* value[x] 1..
* value[x] only boolean
