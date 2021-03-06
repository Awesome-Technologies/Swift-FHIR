//
//  Account.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/Account) on 2019-05-21.
//  2019, SMART Health IT.
//

import Foundation


/**
Tracks balance, charges, for patient or cost center.

A financial tool for tracking value accrued for a particular purpose.  In the healthcare field, used to track charges
for a patient, cost centers, etc.
*/
open class Account: DomainResource {
	override open class var resourceType: String {
		get { return "Account" }
	}
	
	/// The party(s) that are responsible for covering the payment of this account, and what order should they be
	/// applied to the account.
	public var coverage: [AccountCoverage]?
	
	/// Explanation of purpose/use.
	public var description_fhir: FHIRString?
	
	/// The parties ultimately responsible for balancing the Account.
	public var guarantor: [AccountGuarantor]?
	
	/// Account number.
	public var identifier: [Identifier]?
	
	/// Human-readable label.
	public var name: FHIRString?
	
	/// Entity managing the Account.
	public var owner: Reference?
	
	/// Reference to a parent Account.
	public var partOf: Reference?
	
	/// Transaction window.
	public var servicePeriod: Period?
	
	/// Indicates whether the account is presently used/usable or not.
	public var status: AccountStatus?
	
	/// The entity that caused the expenses.
	public var subject: [Reference]?
	
	/// E.g. patient, expense, depreciation.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(status: AccountStatus) {
		self.init()
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		coverage = createInstances(of: AccountCoverage.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		guarantor = createInstances(of: AccountGuarantor.self, for: "guarantor", in: json, context: &instCtx, owner: self) ?? guarantor
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		name = createInstance(type: FHIRString.self, for: "name", in: json, context: &instCtx, owner: self) ?? name
		owner = createInstance(type: Reference.self, for: "owner", in: json, context: &instCtx, owner: self) ?? owner
		partOf = createInstance(type: Reference.self, for: "partOf", in: json, context: &instCtx, owner: self) ?? partOf
		servicePeriod = createInstance(type: Period.self, for: "servicePeriod", in: json, context: &instCtx, owner: self) ?? servicePeriod
		status = createEnum(type: AccountStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstances(of: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "coverage", using: self.coverage, errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "guarantor", using: self.guarantor, errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.name?.decorate(json: &json, withKey: "name", errors: &errors)
		self.owner?.decorate(json: &json, withKey: "owner", errors: &errors)
		self.partOf?.decorate(json: &json, withKey: "partOf", errors: &errors)
		self.servicePeriod?.decorate(json: &json, withKey: "servicePeriod", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		arrayDecorate(json: &json, withKey: "subject", using: self.subject, errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
The party(s) that are responsible for covering the payment of this account, and what order should they be applied to the
account.
*/
open class AccountCoverage: BackboneElement {
	override open class var resourceType: String {
		get { return "AccountCoverage" }
	}
	
	/// The party(s), such as insurances, that may contribute to the payment of this account.
	public var coverage: Reference?
	
	/// The priority of the coverage in the context of this account.
	public var priority: FHIRInteger?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverage: Reference) {
		self.init()
		self.coverage = coverage
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		coverage = createInstance(type: Reference.self, for: "coverage", in: json, context: &instCtx, owner: self) ?? coverage
		if nil == coverage && !instCtx.containsKey("coverage") {
			instCtx.addError(FHIRValidationError(missing: "coverage"))
		}
		priority = createInstance(type: FHIRInteger.self, for: "priority", in: json, context: &instCtx, owner: self) ?? priority
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.coverage?.decorate(json: &json, withKey: "coverage", errors: &errors)
		if nil == self.coverage {
			errors.append(FHIRValidationError(missing: "coverage"))
		}
		self.priority?.decorate(json: &json, withKey: "priority", errors: &errors)
	}
}


/**
The parties ultimately responsible for balancing the Account.

The parties responsible for balancing the account if other payment options fall short.
*/
open class AccountGuarantor: BackboneElement {
	override open class var resourceType: String {
		get { return "AccountGuarantor" }
	}
	
	/// Credit or other hold applied.
	public var onHold: FHIRBool?
	
	/// Responsible entity.
	public var party: Reference?
	
	/// Guarantee account during.
	public var period: Period?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(party: Reference) {
		self.init()
		self.party = party
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		onHold = createInstance(type: FHIRBool.self, for: "onHold", in: json, context: &instCtx, owner: self) ?? onHold
		party = createInstance(type: Reference.self, for: "party", in: json, context: &instCtx, owner: self) ?? party
		if nil == party && !instCtx.containsKey("party") {
			instCtx.addError(FHIRValidationError(missing: "party"))
		}
		period = createInstance(type: Period.self, for: "period", in: json, context: &instCtx, owner: self) ?? period
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.onHold?.decorate(json: &json, withKey: "onHold", errors: &errors)
		self.party?.decorate(json: &json, withKey: "party", errors: &errors)
		if nil == self.party {
			errors.append(FHIRValidationError(missing: "party"))
		}
		self.period?.decorate(json: &json, withKey: "period", errors: &errors)
	}
}

