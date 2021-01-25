// MARK: - Mocks generated from file: TestSuiteSample/LogicAndModels/LoggerProtocol.swift at 2021-01-25 06:25:21 +0000

//
//  LoggerProtocol.swift
//  TestSuiteSample
//
//  Created by Yuichi Fujiki on 25/1/21.
//

import Cuckoo
@testable import TestSuiteSample

import Foundation


 class MockLoggerProtocol: LoggerProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = LoggerProtocol
    
     typealias Stubbing = __StubbingProxy_LoggerProtocol
     typealias Verification = __VerificationProxy_LoggerProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: LoggerProtocol?

     func enableDefaultImplementation(_ stub: LoggerProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func logAppIsActive()  {
        
    return cuckoo_manager.call("logAppIsActive()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.logAppIsActive())
        
    }
    

	 struct __StubbingProxy_LoggerProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func logAppIsActive() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockLoggerProtocol.self, method: "logAppIsActive()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_LoggerProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func logAppIsActive() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("logAppIsActive()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class LoggerProtocolStub: LoggerProtocol {
    

    

    
     func logAppIsActive()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

