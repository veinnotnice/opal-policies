package app.rbac

default allow = false

allow {
	some permission
	user_is_granted[permission]
}

user_is_granted[permission] {
	some i, j
	role := data.roles[i]
	log(role)
}