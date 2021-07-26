--Copyright 2021 The casbin Authors. All Rights Reserved.
--
--Licensed under the Apache License, Version 2.0 (the "License");
--you may not use this file except in compliance with the License.
--You may obtain a copy of the License at
--
--    http://www.apache.org/licenses/LICENSE-2.0
--
--Unless required by applicable law or agreed to in writing, software
--distributed under the License is distributed on an "AS IS" BASIS,
--WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--See the License for the specific language governing permissions and
--limitations under the License.

local Adapter = require("src/persist/Adapter")

-- UpdatableAdapter is the interface for Casbin adapters with add update policy function.
local UpdateAdapter = {}
setmetatable(UpdateAdapter, Adapter)


function UpdateAdapter:new()
    local o = {}
    setmetatable(o, UpdateAdapter)
    self.__index = self
    return o
end

-- UpdatePolicy updates a policy rule from storage.
-- This is part of the Auto-Save feature.
function UpdateAdapter:updatePolicy(sec, ptype, oldRule, newPolicy)

end

-- UpdatePolicies updates some policy rules to storage, like db, redis.
function UpdateAdapter:updatePolicies(sec, ptype, oldRules, newRules)

end

-- UpdateFilteredPolicies deletes old rules and adds new rules.
function UpdateAdapter:updateFilteredPolicies(sec, ptype, newPolicies, fieldIndex, fieldValues)

end

return UpdateAdapter
