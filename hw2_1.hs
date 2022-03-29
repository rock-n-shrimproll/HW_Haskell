module Homework2_1 where

data Complex = Complex {realPart :: Float, imagPart :: Float} deriving (Eq, Show)

instance Num Complex where
  Complex a_real a_img + Complex b_real b_img = Complex (a_real + b_real) (a_img + b_img)
  Complex a_real a_img - Complex b_real b_img = Complex (a_real - b_real) (a_img - b_img)
  Complex a_real a_img * Complex b_real b_img = Complex (a_real * b_real - a_img * b_img) (a_real * b_img + a_img * b_real)
  negate (Complex a_real a_img) = Complex ((-1) * a_real) ((-1) * a_img)
  abs (Complex a_real a_img) = Complex ((a_real ** 2 + a_img ** 2)**(1/2)) 0
  signum (Complex a_real a_img) = Complex (a_real/((a_real ** 2 + a_img ** 2)**(1/2))) (a_img/((a_real ** 2 + a_img ** 2)**(1/2)))
