//
// Copyright © 2021 osy. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import XCTest

public class SystemPage : BaseTest {
    
    override var rootElement: XCUIElement{
        return app.buttons["Settings"]
    }


    //PageElements
    lazy var backButton = app.buttons["Settings"]
    lazy var archButton = app.buttons["Architecture"]
    lazy var systemButton = app.buttons["System"]


    @discardableResult
    func tapBack(completion: Completion=nil)-> Self{
        log("tap the back button")
        backButton.tap()
        return self
    }
    
    @discardableResult
    func tapArch(completion: Completion=nil)-> Self{
        log("tap the architecture button")
        archButton.tap()
        return self
    }
    
    @discardableResult
    func tapSystem(completion: Completion=nil)-> Self{
        log("tap the system select button")
        systemButton.tap()
        return self
    }
}