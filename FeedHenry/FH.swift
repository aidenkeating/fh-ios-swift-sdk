/*
* JBoss, Home of Professional Open Source.
* Copyright Red Hat, Inc., and individual contributors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import Foundation
import AeroGearHttp

public func setup(completionHandler: CompletionBlock) -> Void {
    // TODO register for Reachability
    // TODO check if online otherwise send error
    // TODO read properties file, get  host
    let http = Http(baseURL: "https://redhat-demos-t.sandbox.feedhenry.com")
    var config = Config()
    let defaultParameters: [String: AnyObject]? = [:]
    http.POST("/box/srv/1.1/app/init", parameters: defaultParameters, credential: nil, completionHandler: completionHandler)
}