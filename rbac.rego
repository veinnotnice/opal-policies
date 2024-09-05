package app.rbac

default allow = false

allow {
	user_is_admin
}

allow {
	some permission
	user_is_granted[permission]
	input.action == permission.action
	input.type == permission.type
	country := data.users[input.user].location.country
	country == "US"
}

user_is_admin {
	some i
	data.users[input.user].roles[i] == "admin"
}

user_is_viewer {
	some i
	data.users[input.user].roles[i] == "viewer"
}

user_is_guest {
	some i
	data.users[input.user].roles[i] == "guest"
}


user_is_granted[permission] {
	some i, j

	role := data.users[input.user].roles[i]
	permission := data.role_permissions[role][j]
}