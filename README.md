# ActiveadminAjaxForm

Ajax form for activeadmin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'activeadmin_ajax_form', github: 'doabit/activeadmin_ajax_form'
gem 'select2-rails', '~> 3.5.10'
gem 'fancybox-rails'
```

And then execute:
```bash
$ bundle
```

## Usage

Add `select2` and `fancybox` to `active_admin.js.coofee`

```javascript
#= require select2
#= require fancybox
```

Add styles to `active_admin.scss`

```scss
//= require select2
//= require fancybox
```

Example `app/admin/ad.rb`

```ruby
form do |f|
  f.inputs do
    f.input :customer_id, input_html: { class: "select2-autocomplete ajax", data: { multiple: false, source: find_admin_customers_path, modal: quick_new_admin_customers_path } }

    f.input :name
    f.input :image
  end
  actions
end
```

`app/admin/customer.rb`

```ruby
ActiveAdmin.register Customer do
  permit_params :name, :address, :contacts, :phone

  ajax_forms :quick_new_partial => 'item', :find_conditions=>{:m=>"or", :per=>30, :find_fields=>[:name_contains]}
end
```

`app/views/admin/customers/_item.html.erb`

```erb
<%= semantic_form_for [:admin, @customer], remote: (defined? @remote) ? true : false, url: @form_url  do |f| %>
  <div id="quick-add-errors"></div> <!--display errores -->
  <%= f.inputs do %>
      <%= f.input :name %>
      <%= f.input :address %>
      <%= f.input :contacts %>
      <%= f.input :phone %>
  <% end %>
  <%= f.actions %>
<% end %>
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
