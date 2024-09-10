package app.rbac

default allow = false

allow {
	true
	# some permission
	# user_is_granted[permission]
}

user_is_granted[permission] {
	some i
	role := data.roles[i]
}