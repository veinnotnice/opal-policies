package app.rbac

default allow = false

allow {
	input.user == "bob"
	# some permission
	# user_is_granted[permission]
}

# user_is_granted[permission] {
# 	some i
# 	role := data.roles[i]
# }