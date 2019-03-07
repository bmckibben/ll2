%ul
  %li
    %strong From:&nbsp;
    = @contact_message.name
  %li
    %strong Email:&nbsp;
    = @contact_message.email
  %li
    %strong Congregation:&nbsp;
    = @contact_message.congregation
  %li
    %strong City, State:&nbsp;
    = @contact_message.city_state

= simple_format(@contact_message.description)
