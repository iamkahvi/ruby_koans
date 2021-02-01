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
  raise TriangleError if [a, b, c].eql?([0, 0, 0])
  raise TriangleError if (a * b * c).negative?
  raise TriangleError if a + b <= c || b + c <= a || a + c <= b

  if a == b && a == c
    :equilateral
  elsif a == b || b == c || c == a
    :isosceles
  else
    :scalene
  end
end

def check_equal_sides(same, diff)
  2 * (same**2) == diff
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
