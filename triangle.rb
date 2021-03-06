# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if (a <= 0) || (b <= 0) || (c <= 0)
  	raise TriangleError, "Length cannot be less than or equal to 0"
  elsif (a + b <= c) || (b + c <= a) || (c + a <= b)
  	raise TriangleError, "The sum of the two other sides must be greater than the length of the hypoteneuse."
  elsif (a == b) && (b == c) && (c == a)
  	:equilateral
  elsif (a == b) || (b == c) || (c == a)
  	:isosceles
  elsif (a != b) || (b != c) || (c != a)
  	:scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
