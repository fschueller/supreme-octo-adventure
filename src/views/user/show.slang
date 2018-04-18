h1 Show User
p = user.name
p = user.email
p
  == link_to("back", "/users", class: "btn btn-success btn-xs")
  == link_to("edit", "/users/#{user.id}/edit", class: "btn btn-success btn-xs")
  == link_to("delete", "/users/#{user.id}?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-xs")
