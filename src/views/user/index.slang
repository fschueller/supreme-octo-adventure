div.row
  div.col-sm-11
    h2 Users
  div.col-sm-1
    a.btn.btn-success.btn-xs href="/users/new" New
div.table-responsive
  table.table.table-striped
    thead
      tr
        th Name
        th Email
        th Actions
    tbody
      - users.each do |user|
        tr
          td = user.name
          td = user.email
          td
            span
              == link_to("read", "/users/#{user.id}", class: "btn btn-success btn-xs")
              == link_to("edit", "/users/#{user.id}/edit", class: "btn btn-success btn-xs")
              == link_to("delete", "/users/#{ user.id }?_csrf=#{csrf_token}", "data-method": "delete", "data-confirm": "Are you sure?", class: "btn btn-danger btn-xs")
