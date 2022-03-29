module Fun where
  newtype Fun a b = Fun {getFun :: a -> b}

  instance Functor (Fun a) where
  fmap =

  instance Applicative (Fun a) where
  pure =
  (<*>) =  
