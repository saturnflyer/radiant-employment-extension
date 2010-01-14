module EmploymentTags
  include Radiant::Taggable
  
  desc %{ Set the scope for positions. }
  tag 'positions' do |tag|
    tag.expand
  end
  
  desc %{ Show the contents for each position. }
  tag 'positions:each' do |tag|
    tag.locals.positions = Position.all
    result = ''
    tag.locals.positions.each do |position|
      tag.locals.position = position
      result << tag.expand
    end
    result
  end
  
  desc %{ Show the contents for each position. }
  tag 'positions:each:title' do |tag|
    tag.locals.position.title
  end
end