%ul
  %li
    %strong From:&nbsp;
    = @feedback.user.full_name
  %li
    %strong Email:&nbsp;
    = @feedback.user.email
  %li
    %strong Resource:&nbsp;
    = link_to @feedback.resource.name, "#{@website_url}/resources/#{@feedback.resource.slug}"
  %li
    %strong Feedback:&nbsp;
    %p= simple_format(@feedback.comment)
