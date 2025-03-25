package policy

import rego.v1

default allow := false

allow if {
	"admin" in input.user.roles
}

allow if {
    startswith(input.request.path, "/public")
    input.request.method == "GET"
}