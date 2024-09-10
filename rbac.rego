package app.rbac

default allow = true

allow {
	true
	# some permission
	# user_is_granted[permission]
}

# user_is_granted[permission] {
# 	some i
# 	role := data.roles[i]
# }