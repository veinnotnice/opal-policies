package app.rbac

default allow = false

allow {
    role := user_is_allowed[_]
	policy_permitted[role]
}

policy_permitted[role] {
	some i
	policy := data.role_permissions[role][i]
	policy.type == input.type
	policy.action == input.action
}
user_is_allowed[matched_role] {
    some i, j
    accepted_role := data.roles[i]
    input_role := input.roles[j]
    accepted_role == input_role
    matched_role := accepted_role
}
