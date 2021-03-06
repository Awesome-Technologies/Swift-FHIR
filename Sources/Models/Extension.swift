//
//  Extension.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Extension) on 2019-05-21.
//  2019, SMART Health IT.
//

import Foundation


/**
Optional Extensions Element.

Optional Extension Element - found in all resources.
*/
open class Extension: Element {
	override open class var resourceType: String {
		get { return "Extension" }
	}
	
	/// identifies the meaning of the extension.
	public var url: FHIRString?
	
	/// Value of extension.
	public var valueAddress: Address?
	
	/// Value of extension.
	public var valueAge: Age?
	
	/// Value of extension.
	public var valueAnnotation: Annotation?
	
	/// Value of extension.
	public var valueAttachment: Attachment?
	
	/// Value of extension.
	public var valueBase64Binary: Base64Binary?
	
	/// Value of extension.
	public var valueBoolean: FHIRBool?
	
	/// Value of extension.
	public var valueCanonical: FHIRCanonical?
	
	/// Value of extension.
	public var valueCode: FHIRString?
	
	/// Value of extension.
	public var valueCodeableConcept: CodeableConcept?
	
	/// Value of extension.
	public var valueCoding: Coding?
	
	/// Value of extension.
	public var valueContactDetail: ContactDetail?
	
	/// Value of extension.
	public var valueContactPoint: ContactPoint?
	
	/// Value of extension.
	public var valueContributor: Contributor?
	
	/// Value of extension.
	public var valueCount: Count?
	
	/// Value of extension.
	public var valueDataRequirement: DataRequirement?
	
	/// Value of extension.
	public var valueDate: FHIRDate?
	
	/// Value of extension.
	public var valueDateTime: DateTime?
	
	/// Value of extension.
	public var valueDecimal: FHIRDecimal?
	
	/// Value of extension.
	public var valueDistance: Distance?
	
	/// Value of extension.
	public var valueDosage: Dosage?
	
	/// Value of extension.
	public var valueDuration: Duration?
	
	/// Value of extension.
	public var valueExpression: Expression?
	
	/// Value of extension.
	public var valueHumanName: HumanName?
	
	/// Value of extension.
	public var valueId: FHIRString?
	
	/// Value of extension.
	public var valueIdentifier: Identifier?
	
	/// Value of extension.
	public var valueInstant: Instant?
	
	/// Value of extension.
	public var valueInteger: FHIRInteger?
	
	/// Value of extension.
	public var valueMarkdown: FHIRString?
	
	/// Value of extension.
	public var valueMoney: Money?
	
	/// Value of extension.
	public var valueOid: FHIRURL?
	
	/// Value of extension.
	public var valueParameterDefinition: ParameterDefinition?
	
	/// Value of extension.
	public var valuePeriod: Period?
	
	/// Value of extension.
	public var valuePositiveInt: FHIRInteger?
	
	/// Value of extension.
	public var valueQuantity: Quantity?
	
	/// Value of extension.
	public var valueRange: Range?
	
	/// Value of extension.
	public var valueRatio: Ratio?
	
	/// Value of extension.
	public var valueReference: Reference?
	
	/// Value of extension.
	public var valueRelatedArtifact: RelatedArtifact?
	
	/// Value of extension.
	public var valueSampledData: SampledData?
	
	/// Value of extension.
	public var valueSignature: Signature?
	
	/// Value of extension.
	public var valueString: FHIRString?
	
	/// Value of extension.
	public var valueTime: FHIRTime?
	
	/// Value of extension.
	public var valueTiming: Timing?
	
	/// Value of extension.
	public var valueTriggerDefinition: TriggerDefinition?
	
	/// Value of extension.
	public var valueUnsignedInt: FHIRInteger?
	
	/// Value of extension.
	public var valueUri: FHIRURL?
	
	/// Value of extension.
	public var valueUrl: FHIRURL?
	
	/// Value of extension.
	public var valueUsageContext: UsageContext?
	
	/// Value of extension.
	public var valueUuid: FHIRURL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(url: FHIRString) {
		self.init()
		self.url = url
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		url = createInstance(type: FHIRString.self, for: "url", in: json, context: &instCtx, owner: self) ?? url
		if nil == url && !instCtx.containsKey("url") {
			instCtx.addError(FHIRValidationError(missing: "url"))
		}
		valueAddress = createInstance(type: Address.self, for: "valueAddress", in: json, context: &instCtx, owner: self) ?? valueAddress
		valueAge = createInstance(type: Age.self, for: "valueAge", in: json, context: &instCtx, owner: self) ?? valueAge
		valueAnnotation = createInstance(type: Annotation.self, for: "valueAnnotation", in: json, context: &instCtx, owner: self) ?? valueAnnotation
		valueAttachment = createInstance(type: Attachment.self, for: "valueAttachment", in: json, context: &instCtx, owner: self) ?? valueAttachment
		valueBase64Binary = createInstance(type: Base64Binary.self, for: "valueBase64Binary", in: json, context: &instCtx, owner: self) ?? valueBase64Binary
		valueBoolean = createInstance(type: FHIRBool.self, for: "valueBoolean", in: json, context: &instCtx, owner: self) ?? valueBoolean
		valueCanonical = createInstance(type: FHIRCanonical.self, for: "valueCanonical", in: json, context: &instCtx, owner: self) ?? valueCanonical
		valueCode = createInstance(type: FHIRString.self, for: "valueCode", in: json, context: &instCtx, owner: self) ?? valueCode
		valueCodeableConcept = createInstance(type: CodeableConcept.self, for: "valueCodeableConcept", in: json, context: &instCtx, owner: self) ?? valueCodeableConcept
		valueCoding = createInstance(type: Coding.self, for: "valueCoding", in: json, context: &instCtx, owner: self) ?? valueCoding
		valueContactDetail = createInstance(type: ContactDetail.self, for: "valueContactDetail", in: json, context: &instCtx, owner: self) ?? valueContactDetail
		valueContactPoint = createInstance(type: ContactPoint.self, for: "valueContactPoint", in: json, context: &instCtx, owner: self) ?? valueContactPoint
		valueContributor = createInstance(type: Contributor.self, for: "valueContributor", in: json, context: &instCtx, owner: self) ?? valueContributor
		valueCount = createInstance(type: Count.self, for: "valueCount", in: json, context: &instCtx, owner: self) ?? valueCount
		valueDataRequirement = createInstance(type: DataRequirement.self, for: "valueDataRequirement", in: json, context: &instCtx, owner: self) ?? valueDataRequirement
		valueDate = createInstance(type: FHIRDate.self, for: "valueDate", in: json, context: &instCtx, owner: self) ?? valueDate
		valueDateTime = createInstance(type: DateTime.self, for: "valueDateTime", in: json, context: &instCtx, owner: self) ?? valueDateTime
		valueDecimal = createInstance(type: FHIRDecimal.self, for: "valueDecimal", in: json, context: &instCtx, owner: self) ?? valueDecimal
		valueDistance = createInstance(type: Distance.self, for: "valueDistance", in: json, context: &instCtx, owner: self) ?? valueDistance
		valueDosage = createInstance(type: Dosage.self, for: "valueDosage", in: json, context: &instCtx, owner: self) ?? valueDosage
		valueDuration = createInstance(type: Duration.self, for: "valueDuration", in: json, context: &instCtx, owner: self) ?? valueDuration
		valueExpression = createInstance(type: Expression.self, for: "valueExpression", in: json, context: &instCtx, owner: self) ?? valueExpression
		valueHumanName = createInstance(type: HumanName.self, for: "valueHumanName", in: json, context: &instCtx, owner: self) ?? valueHumanName
		valueId = createInstance(type: FHIRString.self, for: "valueId", in: json, context: &instCtx, owner: self) ?? valueId
		valueIdentifier = createInstance(type: Identifier.self, for: "valueIdentifier", in: json, context: &instCtx, owner: self) ?? valueIdentifier
		valueInstant = createInstance(type: Instant.self, for: "valueInstant", in: json, context: &instCtx, owner: self) ?? valueInstant
		valueInteger = createInstance(type: FHIRInteger.self, for: "valueInteger", in: json, context: &instCtx, owner: self) ?? valueInteger
		valueMarkdown = createInstance(type: FHIRString.self, for: "valueMarkdown", in: json, context: &instCtx, owner: self) ?? valueMarkdown
		valueMoney = createInstance(type: Money.self, for: "valueMoney", in: json, context: &instCtx, owner: self) ?? valueMoney
		valueOid = createInstance(type: FHIRURL.self, for: "valueOid", in: json, context: &instCtx, owner: self) ?? valueOid
		valueParameterDefinition = createInstance(type: ParameterDefinition.self, for: "valueParameterDefinition", in: json, context: &instCtx, owner: self) ?? valueParameterDefinition
		valuePeriod = createInstance(type: Period.self, for: "valuePeriod", in: json, context: &instCtx, owner: self) ?? valuePeriod
		valuePositiveInt = createInstance(type: FHIRInteger.self, for: "valuePositiveInt", in: json, context: &instCtx, owner: self) ?? valuePositiveInt
		valueQuantity = createInstance(type: Quantity.self, for: "valueQuantity", in: json, context: &instCtx, owner: self) ?? valueQuantity
		valueRange = createInstance(type: Range.self, for: "valueRange", in: json, context: &instCtx, owner: self) ?? valueRange
		valueRatio = createInstance(type: Ratio.self, for: "valueRatio", in: json, context: &instCtx, owner: self) ?? valueRatio
		valueReference = createInstance(type: Reference.self, for: "valueReference", in: json, context: &instCtx, owner: self) ?? valueReference
		valueRelatedArtifact = createInstance(type: RelatedArtifact.self, for: "valueRelatedArtifact", in: json, context: &instCtx, owner: self) ?? valueRelatedArtifact
		valueSampledData = createInstance(type: SampledData.self, for: "valueSampledData", in: json, context: &instCtx, owner: self) ?? valueSampledData
		valueSignature = createInstance(type: Signature.self, for: "valueSignature", in: json, context: &instCtx, owner: self) ?? valueSignature
		valueString = createInstance(type: FHIRString.self, for: "valueString", in: json, context: &instCtx, owner: self) ?? valueString
		valueTime = createInstance(type: FHIRTime.self, for: "valueTime", in: json, context: &instCtx, owner: self) ?? valueTime
		valueTiming = createInstance(type: Timing.self, for: "valueTiming", in: json, context: &instCtx, owner: self) ?? valueTiming
		valueTriggerDefinition = createInstance(type: TriggerDefinition.self, for: "valueTriggerDefinition", in: json, context: &instCtx, owner: self) ?? valueTriggerDefinition
		valueUnsignedInt = createInstance(type: FHIRInteger.self, for: "valueUnsignedInt", in: json, context: &instCtx, owner: self) ?? valueUnsignedInt
		valueUri = createInstance(type: FHIRURL.self, for: "valueUri", in: json, context: &instCtx, owner: self) ?? valueUri
		valueUrl = createInstance(type: FHIRURL.self, for: "valueUrl", in: json, context: &instCtx, owner: self) ?? valueUrl
		valueUsageContext = createInstance(type: UsageContext.self, for: "valueUsageContext", in: json, context: &instCtx, owner: self) ?? valueUsageContext
		valueUuid = createInstance(type: FHIRURL.self, for: "valueUuid", in: json, context: &instCtx, owner: self) ?? valueUuid
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.url?.decorate(json: &json, withKey: "url", errors: &errors)
		if nil == self.url {
			errors.append(FHIRValidationError(missing: "url"))
		}
		self.valueAddress?.decorate(json: &json, withKey: "valueAddress", errors: &errors)
		self.valueAge?.decorate(json: &json, withKey: "valueAge", errors: &errors)
		self.valueAnnotation?.decorate(json: &json, withKey: "valueAnnotation", errors: &errors)
		self.valueAttachment?.decorate(json: &json, withKey: "valueAttachment", errors: &errors)
		self.valueBase64Binary?.decorate(json: &json, withKey: "valueBase64Binary", errors: &errors)
		self.valueBoolean?.decorate(json: &json, withKey: "valueBoolean", errors: &errors)
		self.valueCanonical?.decorate(json: &json, withKey: "valueCanonical", errors: &errors)
		self.valueCode?.decorate(json: &json, withKey: "valueCode", errors: &errors)
		self.valueCodeableConcept?.decorate(json: &json, withKey: "valueCodeableConcept", errors: &errors)
		self.valueCoding?.decorate(json: &json, withKey: "valueCoding", errors: &errors)
		self.valueContactDetail?.decorate(json: &json, withKey: "valueContactDetail", errors: &errors)
		self.valueContactPoint?.decorate(json: &json, withKey: "valueContactPoint", errors: &errors)
		self.valueContributor?.decorate(json: &json, withKey: "valueContributor", errors: &errors)
		self.valueCount?.decorate(json: &json, withKey: "valueCount", errors: &errors)
		self.valueDataRequirement?.decorate(json: &json, withKey: "valueDataRequirement", errors: &errors)
		self.valueDate?.decorate(json: &json, withKey: "valueDate", errors: &errors)
		self.valueDateTime?.decorate(json: &json, withKey: "valueDateTime", errors: &errors)
		self.valueDecimal?.decorate(json: &json, withKey: "valueDecimal", errors: &errors)
		self.valueDistance?.decorate(json: &json, withKey: "valueDistance", errors: &errors)
		self.valueDosage?.decorate(json: &json, withKey: "valueDosage", errors: &errors)
		self.valueDuration?.decorate(json: &json, withKey: "valueDuration", errors: &errors)
		self.valueExpression?.decorate(json: &json, withKey: "valueExpression", errors: &errors)
		self.valueHumanName?.decorate(json: &json, withKey: "valueHumanName", errors: &errors)
		self.valueId?.decorate(json: &json, withKey: "valueId", errors: &errors)
		self.valueIdentifier?.decorate(json: &json, withKey: "valueIdentifier", errors: &errors)
		self.valueInstant?.decorate(json: &json, withKey: "valueInstant", errors: &errors)
		self.valueInteger?.decorate(json: &json, withKey: "valueInteger", errors: &errors)
		self.valueMarkdown?.decorate(json: &json, withKey: "valueMarkdown", errors: &errors)
		self.valueMoney?.decorate(json: &json, withKey: "valueMoney", errors: &errors)
		self.valueOid?.decorate(json: &json, withKey: "valueOid", errors: &errors)
		self.valueParameterDefinition?.decorate(json: &json, withKey: "valueParameterDefinition", errors: &errors)
		self.valuePeriod?.decorate(json: &json, withKey: "valuePeriod", errors: &errors)
		self.valuePositiveInt?.decorate(json: &json, withKey: "valuePositiveInt", errors: &errors)
		self.valueQuantity?.decorate(json: &json, withKey: "valueQuantity", errors: &errors)
		self.valueRange?.decorate(json: &json, withKey: "valueRange", errors: &errors)
		self.valueRatio?.decorate(json: &json, withKey: "valueRatio", errors: &errors)
		self.valueReference?.decorate(json: &json, withKey: "valueReference", errors: &errors)
		self.valueRelatedArtifact?.decorate(json: &json, withKey: "valueRelatedArtifact", errors: &errors)
		self.valueSampledData?.decorate(json: &json, withKey: "valueSampledData", errors: &errors)
		self.valueSignature?.decorate(json: &json, withKey: "valueSignature", errors: &errors)
		self.valueString?.decorate(json: &json, withKey: "valueString", errors: &errors)
		self.valueTime?.decorate(json: &json, withKey: "valueTime", errors: &errors)
		self.valueTiming?.decorate(json: &json, withKey: "valueTiming", errors: &errors)
		self.valueTriggerDefinition?.decorate(json: &json, withKey: "valueTriggerDefinition", errors: &errors)
		self.valueUnsignedInt?.decorate(json: &json, withKey: "valueUnsignedInt", errors: &errors)
		self.valueUri?.decorate(json: &json, withKey: "valueUri", errors: &errors)
		self.valueUrl?.decorate(json: &json, withKey: "valueUrl", errors: &errors)
		self.valueUsageContext?.decorate(json: &json, withKey: "valueUsageContext", errors: &errors)
		self.valueUuid?.decorate(json: &json, withKey: "valueUuid", errors: &errors)
	}
}

