package policy

import data.policy.allow
import rego.v1


test_allow_is_false_by_default if{
	not allow
}

test_allow_if_admin if {
    allow with input as {"user": {"roles": ["admin"]}}
}

test_deny_if_not_admin if {
    not allow with input as {"user": {"roles": ["developer"]}}
}