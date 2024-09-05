package app.rbac
default allow = false


allow {
	some permission
	user_is_granted[permission]
	input.action == permission.action
	input.type == permission.type
}

user_is_granted[permission] {
	some i, j
	role := data.users[input.user].roles[i]
	permission := data.role_permissions[role][j]
}