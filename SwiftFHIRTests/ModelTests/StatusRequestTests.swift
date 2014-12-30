//
//  StatusRequestTests.swift
//  StatusRequestTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class StatusRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> StatusRequest? {
		let json = readJSONFile(filename)
		let instance = StatusRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testStatusRequest1() {
		let inst = instantiateFrom("statusrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a StatusRequest instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/statusrequest")!)
		XCTAssertEqual(inst!.identifier![0].value!, "1776543")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/oralhealthclaim/12345")
		XCTAssertEqual(inst!.response!.reference!, "http://BenefitsInc.com/fhir/claimresponse/3500")
	}
	
	func testStatusRequest2() {
		let inst = instantiateFrom("statusrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a StatusRequest instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/statusrequest")!)
		XCTAssertEqual(inst!.identifier![0].value!, "1776543")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/oralhealthclaim/12345")
		XCTAssertEqual(inst!.response!.reference!, "http://BenefitsInc.com/fhir/claimresponse/3500")
	}
	
	func testStatusRequest3() {
		let inst = instantiateFrom("statusrequest-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a StatusRequest instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/statusrequest")!)
		XCTAssertEqual(inst!.identifier![0].value!, "1776543")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/oralhealthclaim/12345")
		XCTAssertEqual(inst!.response!.reference!, "http://BenefitsInc.com/fhir/claimresponse/3500")
	}
}