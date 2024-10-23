require "sinatra"
require "sinatra/reloader"

# Redirect root to addition form
get("/") do
  redirect("/add")
end

# Route for displaying the addition form
get("/add") do
  erb(:add_form)
end

# Route for processing the addition form
get("/wizard_add") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @first_num + @second_num
  erb(:add_result)
end

# Route for displaying the subtraction form
get("/subtract") do
  erb(:sub_form)
end

# Route for processing the subtraction form
get("/wizard_subtract") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @first_num - @second_num
  erb(:sub_result)
end

# Route for displaying the multiplication form
get("/multiply") do
  erb(:multiplication_form)
end

# Route for processing the multiplication form
get("/wizard_multiply") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @first_num * @second_num
  erb(:mult_result)
end

# Route for displaying the division form
get("/divide") do
  erb(:div_form)
end

# Route for processing the division form
get("/wizard_divide") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @first_num / @second_num
  erb(:div_result)
end

