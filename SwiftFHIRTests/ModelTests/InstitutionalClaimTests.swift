//
//  InstitutionalClaimTests.swift
//  InstitutionalClaimTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class InstitutionalClaimTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> InstitutionalClaim? {
		let json = readJSONFile(filename)
		let instance = InstitutionalClaim(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testInstitutionalClaim1() {
		let inst = instantiateFrom("institutionalclaim-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a InstitutionalClaim instance")
	
		XCTAssertEqual(inst!.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst!.coverage![0].focal!)
		XCTAssertEqual(inst!.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst!.coverage![0].sequence!, 1)
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst!.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyhospital.com/claims")!)
		XCTAssertEqual(inst!.identifier![0].value!, "9612345")
		XCTAssertEqual(inst!.item![0].net!.code!, "USD")
		XCTAssertEqual(inst!.item![0].net!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].net!.value!, NSDecimalNumber(string: "125.0"))
		XCTAssertEqual(inst!.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst!.item![0].sequence!, 1)
		XCTAssertEqual(inst!.item![0].service!.code!, "exam")
		XCTAssertEqual(inst!.item![0].service!.system!, NSURL(string: "http://hl7.org/fhir/ex-serviceproduct")!)
		XCTAssertEqual(inst!.item![0].serviceDate!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.item![0].type!.code!, "service")
		XCTAssertEqual(inst!.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst!.item![0].unitPrice!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].unitPrice!.value!, NSDecimalNumber(string: "125.0"))
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst!.payee!.type!.code!, "provider")
		XCTAssertEqual(inst!.priority!.code!, "normal")
		XCTAssertEqual(inst!.target!.reference!, "Organization/2")
		XCTAssertEqual(inst!.use!, "complete")
	}
	
	func testInstitutionalClaim2() {
		let inst = instantiateFrom("institutionalclaim-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a InstitutionalClaim instance")
	
		XCTAssertEqual(inst!.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst!.coverage![0].focal!)
		XCTAssertEqual(inst!.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst!.coverage![0].sequence!, 1)
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst!.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyhospital.com/claims")!)
		XCTAssertEqual(inst!.identifier![0].value!, "9612345")
		XCTAssertEqual(inst!.item![0].net!.code!, "USD")
		XCTAssertEqual(inst!.item![0].net!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].net!.value!, NSDecimalNumber(string: "125.0"))
		XCTAssertEqual(inst!.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst!.item![0].sequence!, 1)
		XCTAssertEqual(inst!.item![0].service!.code!, "exam")
		XCTAssertEqual(inst!.item![0].service!.system!, NSURL(string: "http://hl7.org/fhir/ex-serviceproduct")!)
		XCTAssertEqual(inst!.item![0].serviceDate!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.item![0].type!.code!, "service")
		XCTAssertEqual(inst!.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst!.item![0].unitPrice!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].unitPrice!.value!, NSDecimalNumber(string: "125.0"))
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst!.payee!.type!.code!, "provider")
		XCTAssertEqual(inst!.priority!.code!, "normal")
		XCTAssertEqual(inst!.target!.reference!, "Organization/2")
		XCTAssertEqual(inst!.use!, "complete")
	}
	
	func testInstitutionalClaim3() {
		let inst = instantiateFrom("institutionalclaim-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a InstitutionalClaim instance")
	
		XCTAssertEqual(inst!.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst!.coverage![0].focal!)
		XCTAssertEqual(inst!.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst!.coverage![0].sequence!, 1)
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst!.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyhospital.com/claims")!)
		XCTAssertEqual(inst!.identifier![0].value!, "9612345")
		XCTAssertEqual(inst!.item![0].net!.code!, "USD")
		XCTAssertEqual(inst!.item![0].net!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].net!.value!, NSDecimalNumber(string: "125.0"))
		XCTAssertEqual(inst!.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst!.item![0].sequence!, 1)
		XCTAssertEqual(inst!.item![0].service!.code!, "exam")
		XCTAssertEqual(inst!.item![0].service!.system!, NSURL(string: "http://hl7.org/fhir/ex-serviceproduct")!)
		XCTAssertEqual(inst!.item![0].serviceDate!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.item![0].type!.code!, "service")
		XCTAssertEqual(inst!.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst!.item![0].unitPrice!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].unitPrice!.value!, NSDecimalNumber(string: "125.0"))
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst!.payee!.type!.code!, "provider")
		XCTAssertEqual(inst!.priority!.code!, "normal")
		XCTAssertEqual(inst!.target!.reference!, "Organization/2")
		XCTAssertEqual(inst!.use!, "complete")
	}
}